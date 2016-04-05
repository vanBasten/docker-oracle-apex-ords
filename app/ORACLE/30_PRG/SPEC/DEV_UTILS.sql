--------------------------------------------------------
--  DDL for Package DEV_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DEV_UTILS" IS
  /** ============================================================================
  ** ==
  ** == DEV_UTILS is utility package providing some functionalities for system developmer
  ** ==
  ** ========================================================================= */
  --

  /*
  addSimpleTableAudit -
  */
  PROCEDURE addSimpleTableAudit(p_tableOwner varchar2 default 'ISG',
                                p_tableName  varchar2 default null);

  /*
  getGetRecTapi
  */
  PROCEDURE genTableTapi(p_tableOwner varchar2 default 'ISG',
                         p_tableName  varchar2 default null);

 /*
  synchPkSeq -
  */
  PROCEDURE genPkSeq(p_tableOwner varchar2 default 'ISG',
                      p_tableName  varchar2 default null);

END DEV_UTILS;

/
