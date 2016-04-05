create or replace PACKAGE       "IMP_UTILS" IS
  /** ============================================================================
  ** ==
  ** == IMP_UTILS is utility package providing functionalities for import data
  ** ==
  ** == Contact: andrzej.raczkowski@eSynerga.pl
  ** ==
  ** == AR    21/03/2014    initial version
  ** ========================================================================= */
  --

  /*
  mainImp -
  */
  PROCEDURE mainImp(p_file_id FILE_CONTENT.ID%type DEFAULT NULL);


END IMP_UTILS;

/
