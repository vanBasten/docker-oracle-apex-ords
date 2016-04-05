create or replace PACKAGE BODY "WEB_UTILS"
IS
  /** =========================================================================
  ===
  ** ==
  ** == WEB_UTILS is utility package providing some functionalities for
  ** == HTTP comunication via RESTful WS
  ** == Contact: andrzej.raczkowski@sviete.pl
  ** ==
  ** == AR    06/11/2013    initial version
  ** =========================================================================
  */
  --
  /*
  decodeBasicAuth
  */
  PROCEDURE decodeBasicAuth(
      pAuthorization IN VARCHAR2,
      pUser OUT VARCHAR2,
      pPass OUT VARCHAR2 )
  IS
    l_auth VARCHAR2(2000);
  BEGIN
    -- pAuthorization => Basic YWRtaW46eHh4
    l_auth := SUBSTR(pAuthorization,7);
    l_auth := UTL_ENCODE.TEXT_DECODE(buf => l_auth, encode_charset => 'UTF8', encoding => UTL_ENCODE.BASE64);
    pUser  := SUBSTR(l_auth,0,instr(l_auth,':')-1);
    pPass  := SUBSTR(l_auth,instr(l_auth,':')  +1);
  END;
--
--
/*
printClob
*/
  PROCEDURE printClob(
      pClob CLOB)
  IS
    l_text VARCHAR2(32000);
    l_c CLOB := pClob;
  BEGIN
    WHILE LENGTH(l_c) > 0
    LOOP
      BEGIN
        IF LENGTH(l_c) > 16000 THEN
          l_text      := SUBSTR(l_c,1,16000);
          htp.prn(l_text);
          l_c:= SUBSTR(l_c,LENGTH(l_text)+1);
        ELSE
          l_text := l_c;
          htp.prn(l_text);
          l_c    :='';
          l_text := '';
        END IF;
      END;
    END LOOP;
  END;
--
--
--
/*
printJSON
*/
  PROCEDURE printJSON(
      pJson JSON)
  IS
  BEGIN
    pJson.htp();
  END;
--
--
/*
validateUser
*/
  FUNCTION validateUser(
      pAuthorization IN VARCHAR2)
    RETURN VARCHAR2
  IS
    l_user VARCHAR2(2000);
    l_pass VARCHAR2(2000);
    l_workspace_id apex_workspaces.workspace_id%TYPE;
  BEGIN
    decodeBasicAuth(pAuthorization => pAuthorization , pUser => l_user, pPass => l_pass);
    SELECT
      workspace_id
    INTO
      l_workspace_id
    FROM
      apex_workspaces
    WHERE
      workspace = 'POST'; --ISG todo
    -- Set Workspace ID to be able to check user in APEX
    apex_util.set_security_group_id(l_workspace_id); --200000
    IF NOT APEX_UTIL.IS_LOGIN_PASSWORD_VALID( p_username => l_user, p_password => l_pass) THEN
      raise_application_error(-20001, 'User invalid!');
    END IF;
    RETURN l_user;
  END;
/*
--
-- TODO to have better information
--
*/
  PROCEDURE workspace_pwd_check(
      P_USER      IN VARCHAR2,
      P_PWD       IN VARCHAR2,
      P_OLD_PWD   IN VARCHAR2,
      P_WORKSPACE IN VARCHAR2,
      P_PWD_VALID OUT BOOLEAN,
      P_ERROR_MESSAGE OUT VARCHAR2,
      P_CHANGE_PWD IN OUT BOOLEAN )
  AS
    l_min_length_err              BOOLEAN;
    l_new_differs_by_err          BOOLEAN;
    l_one_alpha_err               BOOLEAN;
    l_one_numeric_err             BOOLEAN;
    l_one_punctuation_err         BOOLEAN;
    l_one_upper_err               BOOLEAN;
    l_one_lower_err               BOOLEAN;
    l_not_like_username_err       BOOLEAN;
    l_not_like_workspace_name_err BOOLEAN;
    l_not_like_words_err          BOOLEAN;
    l_not_reusable_err            BOOLEAN;
    l_count                       NUMBER;
    l_apex_user_id                NUMBER;
    l_first_name                  VARCHAR2(255);
    l_last_name                   VARCHAR2(255);
    l_schema                      VARCHAR2(255);
    l_email_address               VARCHAR2(255);
    l_start_date                  DATE;
    l_end_date                    DATE;
    l_apex_group_id               VARCHAR2(255);
  BEGIN
    --l_user_id := apex_util.get_user_id (p_username => upper(l_user));
    APEX_UTIL.STRONG_PASSWORD_CHECK( p_username => P_USER, p_password => P_PWD, p_old_password => P_OLD_PWD,
    p_workspace_name => P_WORKSPACE, p_use_strong_rules => false, p_min_length_err => l_min_length_err,
    p_new_differs_by_err => l_new_differs_by_err, p_one_alpha_err => l_one_alpha_err, p_one_numeric_err =>
    l_one_numeric_err, p_one_punctuation_err => l_one_punctuation_err, p_one_upper_err => l_one_upper_err,
    p_one_lower_err => l_one_lower_err, p_not_like_username_err => l_not_like_username_err,
    p_not_like_workspace_name_err => l_not_like_workspace_name_err, p_not_like_words_err => l_not_like_words_err,
    p_not_reusable_err => l_not_reusable_err);
    IF l_min_length_err THEN
      P_ERROR_MESSAGE := 'Password is too short';
    END IF;
    IF l_new_differs_by_err THEN
      P_ERROR_MESSAGE := 'Password is too similar to the old password';
    END IF;
    IF l_one_alpha_err THEN
      P_ERROR_MESSAGE := 'Password must contain at least one alphabetic character' ;
    END IF;
    IF l_one_numeric_err THEN
      P_ERROR_MESSAGE := 'Password  must contain at least one numeric character' ;
    END IF;
    IF l_one_punctuation_err THEN
      P_ERROR_MESSAGE := 'Password  must contain at least one punctuation character' ;
    END IF;
    IF l_one_upper_err THEN
      P_ERROR_MESSAGE := 'Password must contain at least one upper-case character' ;
    END IF;
    IF l_one_lower_err THEN
      P_ERROR_MESSAGE := 'Password must contain at least one lower-case character' ;
    END IF;
    IF l_not_like_username_err THEN
      P_ERROR_MESSAGE := 'Password may not contain the username' ;
    END IF;
    IF l_not_like_workspace_name_err THEN
      P_ERROR_MESSAGE := 'Password may not contain the workspace name' ;
    END IF;
    IF l_not_like_words_err THEN
      P_ERROR_MESSAGE := 'Password contains one or more prohibited common words' ;
    END IF;
    IF l_not_reusable_err THEN
      P_ERROR_MESSAGE := 'Password cannot be used because it has been used for the account recently.' ;
    END IF;
  END;
--
--
/*
changePassword
*/
  PROCEDURE changePassword(
      pNewPass       IN VARCHAR2,
      pAuthorization IN VARCHAR2)
  IS
    l_user VARCHAR2(2000);
    l_pass VARCHAR2(2000);
    l_workspace_id apex_workspaces.workspace_id%TYPE;
  BEGIN
    decodeBasicAuth(pAuthorization => pAuthorization , pUser => l_user, pPass => l_pass);
    SELECT
      workspace_id
    INTO
      l_workspace_id
    FROM
      apex_workspaces
    WHERE
      workspace = 'POST';                            --ISG todo
    apex_util.set_security_group_id(l_workspace_id); --200000
    APEX_CUSTOM_AUTH.LOGIN ( p_uname => upper(l_user), p_password => l_pass, p_session_id => V('APP_SESSION'),
    p_app_page => '555100');
    APEX_UTIL.CHANGE_CURRENT_USER_PW(p_new_password => pNewPass);

  END;
--
--
--
/*
executeList
*/
  FUNCTION executeList(
      pQuery IN VARCHAR2)
    RETURN JSON_LIST
  IS
    l json_list := json_list();
  BEGIN
    RETURN JSON_DYN.EXECUTELIST(pQuery);
  EXCEPTION
  WHEN OTHERS THEN
    RETURN l;
  END;
--
--
--
END WEB_UTILS;
/
