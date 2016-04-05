create or replace PACKAGE "WEB_UTILS"
IS
  /** ============================================================================
  ** ==
  ** == WEB_UTILS is utility package providing some functionalities for
  ** == HTTP comunication via RESTful WS
  ** == Contact: andrzej.raczkowski@sviete.pl
  ** ==
  ** == AR    01/04/2014    initial version
  ** ========================================================================= */
  --
  --
  --
  /*
  decodeBasicAuth
  */
  PROCEDURE decodeBasicAuth(
      pAuthorization IN VARCHAR2,
      pUser OUT VARCHAR2,
      pPass OUT VARCHAR2 );
  --
  --
  --
  /*
  validateUser
  */
  FUNCTION validateUser(
      pAuthorization IN VARCHAR2) RETURN VARCHAR2;
  --
  --
  --
  /*
  changePassword
  */
  PROCEDURE changePassword(pNewPass      IN VARCHAR2,
                          pAuthorization IN VARCHAR2);
  --
  --
  --
  /*
  printClob
  */
  PROCEDURE printClob(
      pClob CLOB);
  --
  --
  --
  /*
  printJSON
  */
  PROCEDURE printJSON(
      pJson JSON);
  --
  --
  --
  /*
  executeList
  */
  FUNCTION executeList(
      pQuery IN VARCHAR2) RETURN JSON_LIST;
  --
  --
  --
END WEB_UTILS;

/
