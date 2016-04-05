--------------------------------------------------------
--  DDL for Package ZPB_MOB_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ZPB_MOB_UTILS" 
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
  /*
  getUserInfo
  */
  FUNCTION getUserInfo(
      pAuthorization IN VARCHAR2)
    RETURN NUMBER;
    
  /*
  getTasksInfo - info o skanach do wykoanania w danym dniu
  */
  FUNCTION getTasksInfo(
      pAuthorization IN VARCHAR2)
    RETURN NUMBER;
  --
  --
  /*
  getTasks
  */
  FUNCTION getTasks(
      pAuthorization IN VARCHAR2)
    RETURN NUMBER;
  --
  --
  --
END ZPB_MOB_UTILS;

/
