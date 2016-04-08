SPOOL install_all.log
Rem  Copyright (c) SVIETE 2010 - 2016. All Rights Reserved.
PROMPT .
PROMPT . SVIETE ISG App Installation.
PROMPT ...........................................
@install_db.sql
PROMPT .
rem ALTER SESSION SET CURRENT_SCHEMA="SYS"
ALTER SESSION SET CURRENT_SCHEMA="SYS";
PROMPT ...........................................
PROMPT COMPILE ALL SCHEMAS
PROMPT ...........................................
EXEC DBMS_UTILITY.compile_schema(schema => '',compile_all => true);
PROMPT ...........................................
PROMPT .
PROMPT .
rem ALTER SESSION SET CURRENT_SCHEMA="APEX_050000"
ALTER SESSION SET CURRENT_SCHEMA="APEX_050000";
PROMPT ...........................................
PROMPT APEX INSTALLATION
PROMPT WORKSPACE
@40_APP\ISG.sql
PROMPT APLICATION
@40_APP\100.sql
PROMPT PLUGINS
@40_APP\item_type_plugin_com_af_plugin_jq_fileupload.sql
PROMPT .
PROMPT .
PROMPT ...........................................
PROMPT RESTful WS
@50_WS\ws.sql
PROMPT .
PROMPT ...........................................
PROMPT ...........................................
PROMPT COMPILE ISG SCHEMA
PROMPT ...........................................
EXEC DBMS_UTILITY.compile_schema(schema => 'ISG',compile_all => true);
PROMPT ...........................................
PROMPT TABLE TAPI PACKAGES
prompt . genTableTapi(p_tableOwner => 'ISG')
EXEC BEGIN ISG.DEV_UTILS.genTableTapi(p_tableOwner => 'ISG'); EXCEPTION WHEN OTHERS THEN ISG.DEV_UTILS.genTableTapi(p_tableOwner => 'ISG'); END;
PROMPT SIMPLE TABLE AUDIT TRIGERS
prompt . addSimpleTableAudit(p_tableOwner => 'ISG')
EXEC ISG.DEV_UTILS.addSimpleTableAudit(p_tableOwner => 'ISG');
PROMPT .
PROMPT .
PROMPT ...........................................
PROMPT Done.
SPOOL OFF
