create or replace PACKAGE BODY       "STR_UTILS" is

  function concatList(p_cur sys_refcursor, p_sep varchar2) return varchar is
    ret varchar2(32767);
    tmp VARCHAR2(32767);
  begin
    loop
      fetch p_cur
        into tmp;
      exit when p_cur%NOTFOUND;
      if ret is null then
        ret := tmp;
      else
        ret := ret || p_sep || tmp;
      end if;

    end loop;
    close p_cur;
    return ret;
  end;

end str_utils;
/