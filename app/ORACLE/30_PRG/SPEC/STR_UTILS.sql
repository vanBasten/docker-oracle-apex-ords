--------------------------------------------------------
--  DDL for Package STR_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "STR_UTILS" is

  --
  function concatList(p_cur sys_refcursor, p_sep varchar2) return varchar;

end str_utils;

/
