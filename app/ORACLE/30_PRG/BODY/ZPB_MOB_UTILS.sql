create or replace PACKAGE BODY       ZPB_MOB_UTILS
IS
  /** ============================================================================
  ** ==
  ** == TMS_UTILS is utility package providing some functionalities for
  ** == TMS RESTful WS
  ** == Contact: andrzej.raczkowski@eSynerga.pl
  ** ==
  ** == AR    01/04/2014    initial version
  ** ========================================================================= */
  --
  --
  C_STATUS_OK                    CONSTANT NUMBER := 200;
  C_STATUS_UNAUTHORIZED          CONSTANT NUMBER := 401;
  C_STATUS_NOT_FOUND             CONSTANT NUMBER := 404;
  C_STATUS_INTERNAL_SERVER_ERROR CONSTANT NUMBER := 500;
  --
  C_UNAUTHORIZED_MSG             CONSTANT VARCHAR2(200) := 'Nieprawidlowe dane logowania!';
  --
  --

--
--
/*
getUserInfo
*/
FUNCTION getUserInfo(
    pAuthorization IN VARCHAR2)
  RETURN NUMBER
IS
  l_user VARCHAR2(2000);
  l_pass VARCHAR2(2000);
  l_json json_list;
BEGIN
  BEGIN
    WEB_UTILS.validateUser(pAuthorization);
  exception
  when others then
    htp.p(C_UNAUTHORIZED_MSG);
    return C_STATUS_UNAUTHORIZED;
  END;
  --
  BEGIN
     WEB_UTILS.decodeBasicAuth(pAuthorization => pAuthorization, pUser => l_user, pPass =>l_pass);
     l_json := JSON_DYN.executeList(q'!select imie  || ' ' || nazwisko as name, l.* from ludzie l where login = '!'||l_user||q'!'!');
     JSON_AC.array_head(l_json).htp();
  EXCEPTION WHEN OTHERS THEN
     htp.p(dbms_utility.format_error_stack());
     return C_STATUS_INTERNAL_SERVER_ERROR;
  END;

  return C_STATUS_OK;
END;
--
--
/*
getTasksInfo
*/
FUNCTION getTasksInfo(
    pAuthorization IN VARCHAR2)
  RETURN NUMBER
IS
  l_user VARCHAR2(2000);
  l_pass VARCHAR2(2000);
  l_json_list json_list;
  l_ilosc_sum number;
  l_json json := json();
BEGIN
  --
  BEGIN
    WEB_UTILS.validateUser(pAuthorization);
  EXCEPTION
  WHEN OTHERS THEN
    htp.p(C_UNAUTHORIZED_MSG);
    RETURN C_STATUS_UNAUTHORIZED;
  END;

  --
  WEB_UTILS.decodeBasicAuth(pAuthorization => pAuthorization, pUser => l_user, pPass =>l_pass);
  select count(1) into l_ilosc_sum
   from zlecenia z, ludzie_zlecenia lz, ludzie l
    where z.id = lz.ZLECENIA_ID
    and l.id = lz.LUDZIE_ID
    and to_char(z.DATA_START_PLAN,'YYYY-MM-DD') = to_char(sysdate,'YYYY-MM-DD')
    and z.DATA_KONIEC is null
    and l.login =  l_user;

  l_json_list := JSON_DYN.executeList(q'!select z.TYP_ZLECENIA typ, count(1) ilosc
                                    from zlecenia z, ludzie_zlecenia lz, ludzie l
                                    where z.id = lz.ZLECENIA_ID
                                    and l.id = lz.LUDZIE_ID
                                    and to_char(z.DATA_START_PLAN,'YYYY-MM-DD') = to_char(sysdate,'YYYY-MM-DD')
                                    and z.DATA_KONIEC is null
                                    and l.login =  '!'||l_user||q'!' group by z.TYP_ZLECENIA!');
  l_json.put('komunikat', 'Zadania do wykonania.');
  l_json.put('iloscSumaryczna', l_ilosc_sum);
  l_json.put('zawartosc',l_json_list);
  l_json.htp();

  RETURN C_STATUS_OK;
  --
END;
--
--
/*
getTasks
*/
FUNCTION getTasks(
    pAuthorization IN VARCHAR2)
  RETURN NUMBER
IS
  l_json json := json();
  l_json_list json_list;
  l_user VARCHAR2(2000);
  l_pass VARCHAR2(2000);
BEGIN
  --
  --
  BEGIN
    WEB_UTILS.validateUser(pAuthorization);
  EXCEPTION
  WHEN OTHERS THEN
    htp.p(C_UNAUTHORIZED_MSG);
    RETURN C_STATUS_UNAUTHORIZED;
  END;
  --
  --
  WEB_UTILS.decodeBasicAuth(pAuthorization => pAuthorization, pUser => l_user, pPass =>l_pass);
  --
  l_json_list := JSON_DYN.executeList(q'!select z.*
                                    from zlecenia z, ludzie_zlecenia lz, ludzie l
                                    where z.id = lz.ZLECENIA_ID
                                    and l.id = lz.LUDZIE_ID
                                    and to_char(z.DATA_START_PLAN,'YYYY-MM-DD') = to_char(sysdate,'YYYY-MM-DD')
                                    and z.DATA_KONIEC is null
                                    and l.login =  '!'||l_user||q'!'order by z.DATA_START_PLAN!');
  --
  --
  l_json_list.htp();
  RETURN C_STATUS_OK;
END;
--
--
--
END ZPB_MOB_UTILS;
/
