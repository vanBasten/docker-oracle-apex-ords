create or replace PACKAGE "MOBWS_UTILS"
IS
  /** ============================================================================
  ** ==
  ** == MOBWS_UTILS is utility package providing some functionalities for
  ** == RESTful WS MOBWS
  ** == Contact: andrzej.raczkowski@eSynerga.pl
  ** ==
  ** == AR    31/03/2016    initial version
  ** ========================================================================= */
  --
  /*
  changePassword - change password in APEX
  */
  FUNCTION changePassword(
      pNewPass IN VARCHAR2,
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  getVer - get JSON with version, settings and resources
  */
  FUNCTION getVer(
      pVersion       NUMBER,
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  getVer - get JSON with version only
  */
  FUNCTION getVerInfo(
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  getUserInfo - get JSON with user info
  */
  FUNCTION getUserInfo(
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  addAppData - add app data
  */
  FUNCTION addAppData(
      p_appDataJson IN VARCHAR2,
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  addDoc - add doc
  */
  FUNCTION addDoc(
      pTitle    IN VARCHAR2,
      pBody     IN BLOB,
      pMimeType IN VARCHAR2,
      pMobDate  IN VARCHAR2,
      pMobUser  IN VARCHAR2,
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  addLoc - add location info
  */
  FUNCTION addLoc(
      pLat     IN VARCHAR2,
      pLon     IN VARCHAR2,
      pMobDate IN VARCHAR2,
      pMobUser IN VARCHAR2,
      pAuthorization VARCHAR2)
    RETURN NUMBER;
  /*
  getLatestSourceId - get latests source id
  */
  FUNCTION getLatestSourceId(
      pSourceName IN VARCHAR2)
    RETURN app_source.id%type;

  /*
  ISG getForm
  */
  FUNCTION getForm(pScan in VARCHAR2,
                   pAuthorization in VARCHAR2)
    RETURN NUMBER;

  /*
  TEST
  */
  FUNCTION logReq(
      pName VARCHAR2)
    RETURN NUMBER;
END MOBWS_UTILS;
/
