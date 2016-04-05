create or replace PACKAGE BODY "MOBWS_UTILS"
IS
  /** ============================================================================
  ** ==
  ** == MOBWS_UTILS is utility package providing some functionalities for
  ** == RESTful WS MOBWS
  ** == Contact: andrzej.raczkowski@sviete.pl
  ** ========================================================================= */
  --
  C_REQ_IN_PROGRESS      CONSTANT VARCHAR2(30)  := 'IN PROGRESS';
  C_REQ_SUCCESS          CONSTANT VARCHAR2(30)  := 'SUCCESS';
  C_REQ_ERROR            CONSTANT VARCHAR2(30)  := 'ERROR';
  C_RESULT_POSTAL_ADVICE CONSTANT VARCHAR2(30)  := 'A';
  C_RESULT_DELIVERY      CONSTANT VARCHAR2(30)  := 'D';
  C_DELIVERY_NOTICE      CONSTANT VARCHAR2(30)  := 'ZD';
  C_DELIVERY_PLACE       CONSTANT VARCHAR2(30)  := 'MA';
  C_DELIVERY_SUBJECT     CONSTANT VARCHAR2(30)  := 'PD';
  C_ADDED                CONSTANT VARCHAR2(1)   := 'A';
  C_MODIFIED             CONSTANT VARCHAR2(1)   := 'M';
  C_DELETED              CONSTANT VARCHAR2(1)   := 'D';
  C_DATETIME_FORMAT      CONSTANT VARCHAR2(30)  := 'YYYY-MM-DD HH24:MI:SS';
  C_DATE_FORMAT          CONSTANT VARCHAR2(30)  := 'YYYY-MM-DD';
  C_APP_SETTINGS         CONSTANT VARCHAR2(30)  := 'APP';
  C_FRAME_SETTINGS       CONSTANT VARCHAR2(30)  := 'FRAME';
  C_PROC_CLEARING_INFO   CONSTANT VARCHAR2(100) := 'clearingInfo';
  C_PROC_DELIVERY_INFO   CONSTANT VARCHAR2(100) := 'deliveryInfo';
  C_SUGESTION_CITY       CONSTANT VARCHAR2(30)  := 'miejscowosc';
  C_SUGESTION_STREET     CONSTANT VARCHAR2(30)  := 'ulica';
  -- errors
  C_UNKNOWN_PROC CONSTANT NUMBER := -20010;
  E_UNKNOWN_PROC EXCEPTION;
  pragma exception_init (E_UNKNOWN_PROC , -20010);
type t_delivery_results_map
IS
  TABLE OF json INDEX BY VARCHAR2(30);
  --below cursors serve only a purpose of being a template for record data type
  CURSOR c_app_source
  IS
    SELECT
      name,
      content_type,
      source_status
    FROM
      app_source
    WHERE
      1 = 0;
  CURSOR c_app_setting
  IS
    SELECT
      name,
      value
    FROM
      app_setting
    WHERE
      1 = 0;
  CURSOR c_presence_status
  IS
    SELECT
      id,
      name,
      description_required,
      img,
      row_status
    FROM
      app_presence_status
    WHERE
      1                        = 0;
  C_STATUS_OK                    CONSTANT NUMBER := 200;
  C_STATUS_UNAUTHORIZED          CONSTANT NUMBER := 401;
  C_STATUS_NOT_FOUND             CONSTANT NUMBER := 404;
  C_STATUS_INTERNAL_SERVER_ERROR CONSTANT NUMBER := 500;
  --
  C_UNAUTHORIZED_MSG CONSTANT VARCHAR2(200) := 'Niepoprawne dane logowania!';
  FUNCTION string_to_date(
      p_str IN VARCHAR2)
    RETURN DATE
  IS
  BEGIN
    RETURN to_date(p_str, C_DATETIME_FORMAT);
  END;
  FUNCTION json_val_to_date(
      l_json_val json_value)
    RETURN DATE
  IS
  BEGIN
    RETURN string_to_date(l_json_val.get_string);
  END;
  FUNCTION date_as_string(
      p_date    IN DATE,
      p_no_time IN BOOLEAN DEFAULT false)
    RETURN VARCHAR2
  IS
  BEGIN
    IF p_no_time THEN
      RETURN TO_CHAR(p_date, C_DATE_FORMAT);
    END IF;
    RETURN TO_CHAR(p_date, C_DATETIME_FORMAT);
  END;
  FUNCTION int_to_bool(
      p_int_bool IN INTEGER)
    RETURN BOOLEAN
  IS
  BEGIN
    RETURN NOT p_int_bool = 0;
  END;
  FUNCTION bool_to_string(
      p_bool IN BOOLEAN)
    RETURN VARCHAR2
  IS
  BEGIN
    IF p_bool THEN
      RETURN 'T';
    ELSE
      RETURN 'N';
    END IF;
  END;
  FUNCTION blob_to_jsonval(
      p_blob IN BLOB)
    RETURN json_value
  IS
    l_result json_value;
  BEGIN
    IF(p_blob IS NULL OR dbms_lob.getlength(p_blob) = 0) THEN
      RETURN json_value('');
    END IF;
    l_result := json_ext.encode(p_blob);
    RETURN l_result;
  END;
  FUNCTION nullSafeGetString(
      p_json IN json,
      p_prop IN VARCHAR2)
    RETURN VARCHAR2
  IS
    l_json_val json_value;
  BEGIN
    IF p_json IS NULL THEN
      RETURN NULL;
    END IF;
    l_json_val    := p_json.get(p_prop);
    IF l_json_val IS NULL THEN
      RETURN NULL;
    END IF;
    RETURN l_json_val.get_string();
  END;
  FUNCTION nullSafeGetNumber(
      p_json IN json,
      p_prop IN VARCHAR2)
    RETURN NUMBER
  IS
    l_json_val json_value;
    l_val    VARCHAR2(4000);
    l_n_char VARCHAR2(10) := '';
  BEGIN
    IF p_json IS NULL THEN
      RETURN NULL;
    END IF;
    l_json_val    := p_json.get(p_prop);
    IF l_json_val IS NULL THEN
      RETURN NULL;
    END IF;
    SELECT
      VALUE
    INTO
      l_n_char
    FROM
      NLS_DATABASE_PARAMETERS
    WHERE
      PARAMETER             = 'NLS_NUMERIC_CHARACTERS';
    l_val                  := REPLACE(l_json_val.to_char,'"','');
    IF SUBSTR(l_n_char,1,1) = '.' THEN
      l_val                := REPLACE(l_val,',','.');
    ELSE
      l_val := REPLACE(l_val,'.',',');
    END IF;
    RETURN to_number(l_val,'999999999999D99999999999999999999','NLS_NUMERIC_CHARACTERS='''||l_n_char||'''');
  END;
  FUNCTION nullSafeGetBool(
      p_json IN json,
      p_prop IN VARCHAR2)
    RETURN BOOLEAN
  IS
    l_json_val json_value;
    l_bool BOOLEAN;
  BEGIN
    IF p_json IS NULL THEN
      RETURN NULL;
    END IF;
    l_json_val    := p_json.get(p_prop);
    IF l_json_val IS NULL THEN
      RETURN NULL;
    END IF;
    l_bool := l_json_val.get_bool;
    RETURN l_json_val.get_bool ;
  END;
  FUNCTION jsBoolStrToOraBoolStr(
      p_boolVal IN VARCHAR2)
    RETURN VARCHAR2
  IS
    l_result VARCHAR2(1);
  BEGIN
    IF p_boolVal IS NULL OR p_boolVal <> 'on' THEN
      l_result   := 'N';
    ELSE
      l_result := 'T';
    END IF;
    RETURN l_result;
  END;
  FUNCTION toUnifiedAddress(
      p_miejscowosc       IN VARCHAR2,
      p_ulica             IN VARCHAR2,
      p_nrdomu            IN VARCHAR2,
      p_nrmieszkania      IN VARCHAR2,
      p_nazwisko          IN VARCHAR2,
      p_imie              IN VARCHAR2,
      p_bezDiakrytycznych IN BOOLEAN DEFAULT true)
    RETURN VARCHAR2
  IS
    l_unified VARCHAR2(32767);
  BEGIN
    l_unified := upper(p_miejscowosc || p_ulica || p_nrdomu || p_nrmieszkania || p_nazwisko || p_imie);
    IF p_bezDiakrytycznych THEN
      l_unified := CONVERT(l_unified, 'US7ASCII', 'AL32UTF8');
    END IF;
    RETURN l_unified;
  END;
  FUNCTION logRequestStart(
      p_user restful_request_log.calling_user%type,
      p_procedure restful_request_log.procedure_call%type,
      p_params restful_request_log.procedure_params%type)
    RETURN restful_request_log.id%type
  IS
    l_id restful_request_log.id%type;
    pragma autonomous_transaction;
  BEGIN
    SELECT
      seq_restful_request_log_pk.nextval
    INTO
      l_id
    FROM
      dual;
    INSERT
    INTO
      restful_request_log
      (
        id,
        procedure_call,
        procedure_params,
        status,
        calling_user,
        started
      )
      VALUES
      (
        l_id,
        p_procedure,
        p_params,
        c_req_in_progress,
        p_user,
        systimestamp
      );
    COMMIT;
    RETURN l_id;
  END;
  PROCEDURE logRequestEnd
    (
      p_id restful_request_log.id%type,
      p_status restful_request_log.status%type,
      p_response CLOB,
      p_error_stack     VARCHAR2 DEFAULT NULL,
      p_error_backtrace VARCHAR2 DEFAULT NULL
    )
  IS
    pragma autonomous_transaction;
  BEGIN
    IF p_status = C_REQ_SUCCESS THEN
      UPDATE
        restful_request_log
      SET
        status   = p_status ,
        response = p_response ,
        finshed  = systimestamp
      WHERE
        id         = p_id;
    elsif p_status = C_REQ_ERROR THEN
      UPDATE
        restful_request_log
      SET
        status          = p_status ,
        error_stack     = p_error_stack ,
        error_backtrace = p_error_backtrace ,
        finshed         = systimestamp
      WHERE
        id = p_id;
    END IF;
    COMMIT;
  END;
-- a workaround for ora-22922 in APEX
  FUNCTION toPersistentClob(
      p_temporary IN OUT nocopy CLOB)
    RETURN CLOB
  IS
    l_clob CLOB;
    l_clobId clobs_table.id%type;
    pragma autonomous_transaction;
  BEGIN
    SELECT
      seq_clobs_table_pk.nextval
    INTO
      l_clobId
    FROM
      dual;
    INSERT
    INTO
      clobs_table
      (
        id,
        clob_value
      )
      VALUES
      (
        l_clobId,
        p_temporary
      )
    RETURNING
      clob_value
    INTO
      l_clob;
    SYS.dbms_lob.freetemporary(p_temporary );
    COMMIT;
    RETURN l_clob;
  END;
-- a workaround for ORA-14551 WHILE CALLING FUNCTION IN SQL OVER DBLINK
  FUNCTION toPersistentClobId
    (
      p_temporary IN OUT nocopy CLOB
    )
    RETURN NUMBER
  IS
    l_clobId clobs_table.id%type;
    pragma autonomous_transaction;
  BEGIN
    SELECT
      seq_clobs_table_pk.nextval
    INTO
      l_clobId
    FROM
      dual;
    INSERT
    INTO
      clobs_table
      (
        id,
        clob_value
      )
      VALUES
      (
        l_clobId,
        p_temporary
      );
    SYS.dbms_lob.freetemporary(p_temporary );
    COMMIT;
    RETURN l_clobId;
  END;
--
/*
changePassword - change password in APEX
*/
  FUNCTION changePassword
    (
      pNewPass       IN VARCHAR2,
      pAuthorization IN VARCHAR2
    )
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_user VARCHAR2(200);
  BEGIN
    l_logId := logRequestStart('test','changePassword','');
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId := logRequestStart(l_user,'changePassword','');
    WEB_UTILS.changePassword(pNewPass, pAuthorization);
    logRequestEnd(l_logId, C_REQ_SUCCESS, NULL);
    RETURN C_STATUS_OK;
  EXCEPTION
  WHEN OTHERS THEN
    logRequestEnd(l_logId, C_REQ_ERROR, NULL , dbms_utility.format_error_stack() , dbms_utility.format_error_backtrace(
    ));
    raise;
  END;
  FUNCTION sourceToJson
    (
      pSource IN c_app_source%ROWTYPE
    )
    RETURN json
  IS
    l_json json := json();
  BEGIN
    l_json.put('name', pSource.name);
    l_json.put('mimetype',pSource.content_type);
    l_json.put('delete',pSource.source_status = C_DELETED);
    l_json.put('checksum','ok');
    RETURN l_json;
  END;
  FUNCTION getNewSourcesAsJsonList
    (
      pUser          IN VARCHAR2,
      pUserVersion   IN NUMBER,
      pLatestVersion IN NUMBER
    )
    RETURN json_list
  IS
    l_json_list json_list := json_list();
  BEGIN
    FOR r IN
    (
      SELECT
        name,
        content_type,
        source_status
      FROM
        app_source
      WHERE
        id IN
        (
          SELECT
            MAX(id) keep (dense_rank FIRST
          ORDER BY
            version DESC)
          FROM
            app_source
          WHERE
            (
              user_login IS NULL
            OR user_login = pUser
            )
          AND version  > pUserVersion
          AND version <= pLatestVersion
          GROUP BY
            name
        )
    )
    LOOP
      l_json_list.append
      (
        sourceToJson(r).to_json_value()
      )
      ;
    END LOOP;
    RETURN l_json_list;
  END;
  FUNCTION settingToJson
    (
      pSetting IN c_app_setting%ROWTYPE
    )
    RETURN json
  IS
    l_json json := json();
  BEGIN
    l_json.put('name', pSetting.name);
    l_json.put('value', pSetting.value);
    RETURN l_json;
  END;
  FUNCTION getSettingsAsJsonList
    (
      pUser          IN VARCHAR2,
      pUserVersion   IN NUMBER,
      pLatestVersion IN NUMBER,
      pType          IN VARCHAR2
    )
    RETURN json_list
  IS
    l_json_list json_list := json_list();
  BEGIN
    FOR r IN
    (
      SELECT
        name,
        value
      FROM
        app_setting
      WHERE
        id IN
        (
          SELECT
            MAX(id) keep (dense_rank FIRST
          ORDER BY
            version DESC)
          FROM
            app_setting
          WHERE
            (
              user_login IS NULL
            OR user_login = pUser
            )
          AND version  > pUserVersion
          AND version <= pLatestVersion
          AND type     = pType
          GROUP BY
            name
        )
    )
    LOOP
      l_json_list.append
      (
        settingToJson(r).to_json_value()
      )
      ;
    END LOOP;
    RETURN l_json_list;
  END;
  FUNCTION presenceStatusToJson
    (
      pPresenceStatus IN c_presence_status%ROWTYPE
    )
    RETURN json
  IS
    l_json json := json();
  BEGIN
    l_json.put('name', pPresenceStatus.name);
    l_json.put('id', pPresenceStatus.id);
    l_json.put('description-required', int_to_bool(pPresenceStatus.description_required));
    l_json.put('img', blob_to_jsonval(pPresenceStatus.img));
    l_json.put('delete', pPresenceStatus.row_status = C_DELETED);
    RETURN l_json;
  END;
  FUNCTION getPresenceStatusesAsJsonList
    (
      pUserVersion   IN NUMBER,
      pLatestVersion IN NUMBER
    )
    RETURN json_list
  IS
    l_json_list json_list := json_list();
  BEGIN
    FOR r IN
    (
      SELECT
        id,
        name,
        description_required,
        img,
        row_status
      FROM
        app_presence_status
      WHERE
        id IN
        (
          SELECT
            MAX(id) keep (dense_rank FIRST
          ORDER BY
            version DESC)
          FROM
            app_presence_status
          WHERE
            version    > pUserVersion
          AND version <= pLatestVersion
          GROUP BY
            name
        )
    )
    LOOP
      l_json_list.append
      (
        presenceStatusToJson(r).to_json_value()
      )
      ;
    END LOOP;
    RETURN l_json_list;
  END;
  FUNCTION getVer_
    (
      pUser    IN VARCHAR2,
      pVersion IN NUMBER
    )
    RETURN CLOB
  IS
    l_lastVersion app_source.version%type;
    l_lastModification app_source.creation_date%type;
    l_json json := json();
    c CLOB;
  BEGIN
    SELECT
      MAX(version),
      MAX(creation_date)
    INTO
      l_lastVersion,
      l_lastModification
    FROM
      app_source;
    l_json.put('version', l_lastVersion);
    l_json.put('last_mod', date_as_string(l_lastModification));
    l_json.put('change_pass', false);
    l_json.put('resources', getNewSourcesAsJsonList(pUser, pVersion, l_lastVersion));
    l_json.put('settings', getSettingsAsJsonList(pUser, pVersion, l_lastVersion, C_FRAME_SETTINGS));
    l_json.put('appconfigs', getSettingsAsJsonList(pUser, pVersion, l_lastVersion, C_APP_SETTINGS));
    l_json.put('presence_statuses', getPresenceStatusesAsJsonList(pVersion, l_lastVersion));
    dbms_lob.createtemporary(c, false);
    l_json.to_clob(c);
    RETURN c;
  END;
  FUNCTION getVer(
      pVersion       NUMBER,
      pAuthorization VARCHAR2)
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_error_stack     VARCHAR2(4000);
    l_error_backtrace VARCHAR2(4000);
    l_result CLOB;
    l_user VARCHAR2(200);
  BEGIN
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId  := logRequestStart(l_user,'getVer','pVersion=>''' || pVersion ||'''');
    l_result := getVer_('pLogin', pVersion);
    logRequestEnd(l_logId, C_REQ_SUCCESS, l_result);
    htp.p(toPersistentClob(l_result));
    RETURN C_STATUS_OK;
  EXCEPTION
  WHEN OTHERS THEN
    l_error_stack     := dbms_utility.format_error_stack();
    l_error_backtrace := dbms_utility.format_error_backtrace();
    logRequestEnd(l_logId, C_REQ_ERROR,NULL,l_error_stack,l_error_backtrace);
    raise;
  END;
/*
getVerInfo - get JSON with version only
*/
  FUNCTION getVerInfo(
      pAuthorization VARCHAR2)
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_error_stack     VARCHAR2(4000);
    l_error_backtrace VARCHAR2(4000);
    l_result          VARCHAR2(32767);
    l_lastVersion app_source.version%type;
    l_lastModification app_source.creation_date%type;
    l_json json := json();
    c CLOB;
    l_user VARCHAR2(200);
  BEGIN
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId := logRequestStart(l_user,'getVerInfo','');
    SELECT
      MAX(version),
      NVL(MAX(modification_date), MAX(creation_date))
    INTO
      l_lastVersion,
      l_lastModification
    FROM
      app_source;
    l_json.put('version', l_lastVersion);
    l_json.put('last_mod', date_as_string(l_lastModification));
    dbms_lob.createtemporary(c, false);
    l_json.to_clob(c);
    htp.p(l_json.to_char);
    logRequestEnd(l_logId, C_REQ_SUCCESS, c);
    RETURN C_STATUS_OK;
  EXCEPTION
  WHEN OTHERS THEN
    l_error_stack     := dbms_utility.format_error_stack();
    l_error_backtrace := dbms_utility.format_error_backtrace();
    logRequestEnd(l_logId, C_REQ_ERROR,NULL,l_error_stack,l_error_backtrace);
    raise;
  END;
/*
getUserInfo - get JSON with user info
*/
  FUNCTION getUserInfo(
      pAuthorization VARCHAR2)
    RETURN NUMBER
  IS
    v VARCHAR2(32767);
    l_json json;
    l_logId restful_request_log.id%type;
    l_error_stack     VARCHAR2(4000);
    l_error_backtrace VARCHAR2(4000);
    c CLOB;
    l_user_info VARCHAR2(200);
    l_user      VARCHAR2(200);
  BEGIN
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId := logRequestStart(l_user,'getUserInfo','pPass=>''' || 'pPass' ||'''');
    l_json  := json();
    l_json.put('name',l_user);
    l_json.put('description', l_user_info);
    dbms_lob.createtemporary(c, false);
    l_json.to_clob(c);
    htp.p(l_json.to_char);
    logRequestEnd(l_logId, C_REQ_SUCCESS, c);
    RETURN C_STATUS_OK;
  EXCEPTION
  WHEN OTHERS THEN
    l_error_stack     := dbms_utility.format_error_stack();
    l_error_backtrace := dbms_utility.format_error_backtrace();
    logRequestEnd(l_logId, C_REQ_ERROR,NULL,l_error_stack,l_error_backtrace);
    raise;
  END;
  --
  --
  FUNCTION addAppData(
      p_appDataJson IN VARCHAR2,
      pAuthorization VARCHAR2)
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_error_stack     VARCHAR2(4000);
    l_error_backtrace VARCHAR2(4000);
    l_result          VARCHAR2(4000);
    --procedure to call
    l_procName VARCHAR2(100);
    l_json json;
    l_user VARCHAR2(200);
  BEGIN
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId    := logRequestStart(l_user,'addAppData','p_appDataJson=>''' || p_appDataJson ||'''');
    l_json     := json(p_appDataJson);
    l_procName := nullSafeGetString(l_json, 'procedura');
    logRequestEnd(l_logId, C_REQ_SUCCESS, l_result);
  EXCEPTION
  WHEN OTHERS THEN
    l_error_stack     := dbms_utility.format_error_stack();
    l_error_backtrace := dbms_utility.format_error_backtrace();
    logRequestEnd(l_logId, C_REQ_ERROR,NULL,l_error_stack,l_error_backtrace);
    --raise; Andrzej Raczkowski - no raise this time to enable finish ofline synch on mobile...
  END;
  PROCEDURE addDoc_(
      pTitle    IN VARCHAR2,
      pBody     IN BLOB,
      pMimeType IN VARCHAR2,
      pMobDate  IN VARCHAR2,
      pMobUser  IN VARCHAR2)
  IS
  BEGIN
    INSERT
    INTO
      file_content
      (
        file_name,
        file_body,
        content_type,
        mob_creation_date,
        mob_creation_user
      )
      VALUES
      (
        pTitle,
        pBody,
        pMimeType,
        pMobDate,
        pMobUser
      );
  END;
  --
  --
  FUNCTION addDoc
    (
      pTitle    IN VARCHAR2,
      pBody     IN BLOB,
      pMimeType IN VARCHAR2,
      pMobDate  IN VARCHAR2,
      pMobUser  IN VARCHAR2,
      pAuthorization VARCHAR2
    )
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_user VARCHAR2(200);
  BEGIN
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId := logRequestStart(l_user,'addDoc','pAuthorization'''|| pAuthorization ||'''pTitle=>''' || pTitle ||
    ''',pMimeType=>''' || pMimeType || ''',pMobDate=>''' || pMobDate || ''',pMobUser=>''' || pMobUser || '''');
    addDoc_(pTitle, pBody, pMimeType, pMobDate, pMobUser);
    logRequestEnd(l_logId, C_REQ_SUCCESS, NULL);
    RETURN C_STATUS_OK;
  EXCEPTION
  WHEN OTHERS THEN
    logRequestEnd(l_logId, C_REQ_ERROR, NULL , dbms_utility.format_error_stack() , dbms_utility.format_error_backtrace(
    ));
    raise;
  END;
  --
  PROCEDURE addLoc_
    (
      pLat     IN VARCHAR2,
      pLon     IN VARCHAR2,
      pMobDate IN VARCHAR2,
      pMobUser IN VARCHAR2
    )
  IS
  BEGIN
    INSERT
    INTO
      user_location
      (
        lat,
        lon,
        mob_creation_user,
        mob_creation_date
      )
      VALUES
      (
        pLat,
        pLon,
        pMobUser,
        pMobDate
      );
  END;
  --
  FUNCTION addLoc
    (
      pLat     IN VARCHAR2,
      pLon     IN VARCHAR2,
      pMobDate IN VARCHAR2,
      pMobUser IN VARCHAR2,
      pAuthorization VARCHAR2
    )
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_user VARCHAR2(200);
  BEGIN
    BEGIN
      l_user := WEB_UTILS.validateUser(pAuthorization);
    EXCEPTION
    WHEN OTHERS THEN
      htp.p(C_UNAUTHORIZED_MSG);
      RETURN C_STATUS_UNAUTHORIZED;
    END;
    l_logId := logRequestStart(l_user,'addLoc','pLat=>''' || pLat || ''',pLon=>''' || pLon || ''',pMobDate=>''' ||
    pMobDate || ''',pMobUser=>''' || pMobUser || '''');
    addLoc_(pLat, pLon, pMobDate, pMobUser);
    logRequestEnd(l_logId, C_REQ_SUCCESS, NULL);
    RETURN C_STATUS_OK;
  EXCEPTION
  WHEN OTHERS THEN
    logRequestEnd(l_logId, C_REQ_ERROR, NULL , dbms_utility.format_error_stack() , dbms_utility.format_error_backtrace(
    ));
    raise;
  END;
  FUNCTION getLatestSourceId_
    (
      pSourceName IN VARCHAR2
    )
    RETURN app_source.id%type
  IS
    l_result app_source.id%type;
  BEGIN
    SELECT
      MAX(id) keep (dense_rank FIRST
    ORDER BY
      version DESC)
    INTO
      l_result
    FROM
      app_source
    WHERE
      name = pSourceName;
    RETURN l_result;
  END;
  FUNCTION getLatestSourceId(
      pSourceName IN VARCHAR2)
    RETURN app_source.id%type
  IS
    l_logId restful_request_log.id%type;
    l_result app_source.id%type;
  BEGIN
    l_logId := logRequestStart('pUser','getLatestSourceId', 'pSourceName=>''' || pSourceName || '''');
    --validateUser(pUser, pPass);
    l_result := getLatestSourceId_(pSourceName);
    logRequestEnd(l_logId, C_REQ_SUCCESS, TO_CHAR(l_result));
    RETURN l_result;
  EXCEPTION
  WHEN OTHERS THEN
    logRequestEnd(l_logId, C_REQ_ERROR, NULL , dbms_utility.format_error_stack() , dbms_utility.format_error_backtrace(
    ));
    raise;
  END;

/*
getForm
*/
  FUNCTION getForm(
      pScan          IN VARCHAR2,
      pAuthorization IN VARCHAR2)
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_result app_source.id%type;
  BEGIN
    NULL;

  END;


  FUNCTION logReq(
      pName VARCHAR2)
    RETURN NUMBER
  IS
    l_logId restful_request_log.id%type;
    l_srcId APP_SOURCE.id%type;
    l_srcContent APP_SOURCE.CONTENT%type;
  BEGIN
    l_logId    := logRequestStart('pUser','logReq', 'pName=>''' || pName || '''');
    l_srcId    := mobws_utils.getLatestSourceId(pName);
    IF l_srcId IS NOT NULL THEN
      SELECT
        content
      INTO
        l_srcContent
      FROM
        APP_SOURCE
      WHERE
        id = l_srcId;
    END IF;
    logRequestEnd(l_logId, C_REQ_SUCCESS, NULL);
    RETURN 200;
  END;
END MOBWS_UTILS;
/
