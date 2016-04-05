--------------------------------------------------------
--  DDL for Package Body CUR_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CUR_UTILS" 
IS
  /*
  getNotification - awizo
  */
FUNCTION getNotification(
    p_task_id NUMBER)
  RETURN VARCHAR2
IS
  rTask TASK_TAPI.TASK_TAPI_REC;
  rAddress ADDRESS_TAPI.ADDRESS_TAPI_REC;
  rTaskType TASK_TYPE_TAPI.TASK_TYPE_TAPI_REC;
  rUser ADM.APP_USER_TAPI.APP_USER_TAPI_REC;
  l_operation VARCHAR2(200);
  l_text      VARCHAR2(2300);
BEGIN
  rTask.id := p_task_id;
  TASK_TAPI.get(rTask);
  rAddress.ID := rTask.ADDRESS_ID;
  ADDRESS_TAPI.get(rAddress);
  rTaskType.ID := rTask.TYPE_ID;
  TASK_TYPE_TAPI.get(rTaskType);
  rUser.LOGIN := rTask.USER_LOGIN;
  ADM.APP_USER_TAPI.get(rUser);
  IF rTaskType.CODE = 'ODB' THEN
    l_operation    := 'NADANIA';
  ELSE
    l_operation := 'ODEBRANIA';
  END IF;
  --
  --
  l_text := '        ZAWIADOMIENIE\n\n';
  l_text := l_text ||rTask.PARTNER_NAME||'\n';
  l_text := l_text ||rAddress.street ||' '|| rAddress."NUMBER" || ' ' || rAddress.postal_code ||' '|| rAddress.city||'\n\n';
  l_text := l_text ||'SZANOWNI PANSTWO,'||'\n';
  l_text := l_text ||'UPRZEJMIE INFORMUJEMY, ZE NASZ KURIER' ||'\n';
  l_text := l_text ||'W DNIU: ' || TO_CHAR(sysdate,'DD/MM/YYYY') ||'r O GODZINIE: '|| TO_CHAR(sysdate,'hh24:mi')|| '\n';
  l_text := l_text || 'NIE ZASTAL OSOBY UPOWAZNIONEJ DO '||l_operation||' :\n\n';
  FOR rec IN
  (SELECT i.*,
    p.name
  FROM task_item i,
    package_type p
  WHERE task_id = rTask.id
  AND p.id      = i.package_type_id
  )
  LOOP
    l_text := l_text || rec.name ||' numer: ' || rec.code || '\n';
  END LOOP;
  --
  l_text := l_text || '\nINFORMUJEMY, ZE W CELU '||l_operation;
  l_text := l_text || '\nNALEZY SKONTAKTOWAC SIE Z:\n ';
  l_text := l_text || ' ' ||initcap(rUser.FIRST_NAME) || ' ' || initcap(rUser.LAST_NAME) ||'\n';
  l_text := l_text || ' ' ||'numer telefonu: ' || rUser.tel||'\n';
  l_text := l_text || ' ' ||'adres email: ' || rUser.tel||'\n';
  l_text := l_text ||'        ZAPRASZAMY\n\n\n';
  --
  RETURN l_text;
END;
/*
getInvoice
*/
FUNCTION getInvoice(
    p_task_id NUMBER)
  RETURN VARCHAR2
IS
  rTask TASK_TAPI.TASK_TAPI_REC;
  rAddress ADDRESS_TAPI.ADDRESS_TAPI_REC;
  rTaskType TASK_TYPE_TAPI.TASK_TYPE_TAPI_REC;
  rUser ADM.APP_USER_TAPI.APP_USER_TAPI_REC;
  l_operation VARCHAR2(200);
  l_text      VARCHAR2(2300);
BEGIN
  --
  rTask.id := p_task_id;
  TASK_TAPI.get(rTask);
  rAddress.ID := rTask.ADDRESS_ID;
  ADDRESS_TAPI.get(rAddress);
  rTaskType.ID := rTask.TYPE_ID;
  TASK_TYPE_TAPI.get(rTaskType);
  rUser.LOGIN := rTask.USER_LOGIN;
  ADM.APP_USER_TAPI.get(rUser);
  IF rTaskType.CODE = 'ODB' THEN
    l_operation    := 'NADANIA';
  ELSE
    l_operation := 'ODEBRANIA';
  END IF;
  --
  l_text := '        ZAWIADOMIENIE\n\n';
  l_text := l_text ||rTask.PARTNER_NAME||'\n';
  l_text := l_text ||rAddress.street ||' '|| rAddress."NUMBER" || ' ' || rAddress.postal_code ||' '|| rAddress.city||'\n\n';
  l_text := l_text ||'SZANOWNI PANSTWO,'||'\n';
  l_text := l_text ||'UPRZEJMIE INFORMUJEMY, ZE NASZ KURIER' ||'\n';
  l_text := l_text ||'W DNIU: ' || TO_CHAR(sysdate,'DD/MM/YYYY') ||'r O GODZINIE: '|| TO_CHAR(sysdate,'hh24:mi')|| '\n';
  l_text := l_text || 'NIE ZASTAL OSOBY UPOWAZNIONEJ DO '||l_operation||' :\n\n';
  FOR rec IN
  (SELECT i.*,
    p.name
  FROM task_item i,
    package_type p
  WHERE task_id = rTask.id
  AND p.id      = i.package_type_id
  )
  LOOP
    l_text := l_text || rec.name ||' numer: ' || rec.code || '\n';
  END LOOP;
  --
  l_text := l_text || '\nINFORMUJEMY, ZE W CELU '||l_operation;
  l_text := l_text || '\nNALEZY SKONTAKTOWAC SIE Z:\n ';
  l_text := l_text || ' ' ||initcap(rUser.FIRST_NAME) || ' ' || initcap(rUser.LAST_NAME) ||'\n';
  l_text := l_text || ' ' ||'numer telefonu: ' || rUser.tel||'\n';
  l_text := l_text || ' ' ||'adres email: ' || rUser.tel||'\n';
  l_text := l_text ||'        ZAPRASZAMY\n\n\n';
  --
  --
  RETURN l_text;
END;
END CUR_UTILS;

/
