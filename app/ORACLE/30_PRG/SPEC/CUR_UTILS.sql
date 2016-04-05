--------------------------------------------------------
--  DDL for Package CUR_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CUR_UTILS" IS
  /** ============================================================================
  ** ==
  ** == CUR_APEX_UTILS is utility package providing functionalities for courier apex apps
  ** ==
  ** == Contact: andrzej.raczkowski@sviete.pl
  ** ==
  ** == AR    07/01/2013    initial version
  ** ========================================================================= */
  --
  /** ===========================================================================
  /** ==
  /** ==  Functions to POS printer
  /** ==
  /** ===========================================================================*/
  /*
  getNotification - awizo
  */
  FUNCTION getNotification(p_task_id number) return varchar2;

  /*
  getInvoice
  */
  FUNCTION getInvoice(p_task_id number) return varchar2;

  /*
  getTask
  */


END CUR_UTILS;

/
