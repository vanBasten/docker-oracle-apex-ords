--------------------------------------------------------
--  DDL for Package Body DEV_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DEV_UTILS" IS
  /** ============================================================================
  ** ==
  ** == DEV_UTILS is utility package providing some functionalities for system developer
  ** ==
  ** == Contact: andrzej.raczkowski@sviete.pl
  ** ==
  ** == AR    27/07/2011    initial version
  ** == AR    10/03/2012    added his procedure
  ** == AR    15/11/2012    changed genDelBody
  ** == AR    15/11/2012    genPkSeq
  ** ========================================================================= */
  --
  cursor c_table_columns(pc_owner varchar2, pc_tab_name varchar2) is
    select tc.column_name, tc.data_type
      from ALL_ALL_TABLES t, ALL_TAB_COLUMNS tc
     where t.table_name = tc.table_name
       and t.owner = tc.owner
       and t.owner = pc_owner
       and t.table_name = pc_tab_name
       and tc.column_name not like 'SYS_NC0%'
       and tc.DATA_TYPE not in ('BLOB','CLOB')
     order by tc.column_id;

  cursor c_table(pc_owner varchar2, pc_name varchar2) is
    select t.owner, t.table_name
      from ALL_ALL_TABLES t, ALL_TAB_COLUMNS tc
     where t.table_name = tc.table_name
       and t.owner = tc.owner
       and tc.column_name = 'MODIFICATION_USER'
       and tc.DATA_TYPE = 'VARCHAR2'
       and tc.DATA_LENGTH = 200
       and t.owner = pc_owner
       and t.TABLE_NAME not like '%_HIS'
       and t.table_name = nvl(pc_name, t.table_name);

  cr CONSTANT VARCHAR2(1) := CHR(10);

  /*
   generate TAPI type part (_TAPI_REC _TAPI_TAB)
  */
  FUNCTION genType(p_tableOwner varchar2, p_tableName varchar2)
    RETURN VARCHAR2 IS
    l_head   varchar2(32767);
    l_body   varchar2(32767);
    l_footer varchar2(32767);
  BEGIN

    l_head := q'!TYPE #TAB_NAME#_TAPI_REC is record(!';

    for rec in c_table_columns(p_tableOwner, p_tableName) loop
      if l_body is null then
        l_body := '"'||rec.column_name || '"   "' || p_tableName || '"."' ||
                  rec.column_name || '"%type' || cr;
      else
        l_body := l_body || ',"' || rec.column_name || '"   "' || p_tableName || '"."' ||
                  rec.column_name || '"%type' || cr;
      end if;
    end loop;

    l_footer := q'!);
                TYPE #TAB_NAME#_TAPI_TAB IS TABLE OF #TAB_NAME#_TAPI_REC;!';

    return replace(l_head || l_body || l_footer, '#TAB_NAME#', p_tableName);
  END;

  /*
   generate tapi get record procedure spec
  */
  FUNCTION genGetSpec(p_tableName varchar2) RETURN VARCHAR2 IS
  BEGIN
    return replace(q'!procedure get(r#TAB_NAME# in out #TAB_NAME#_tapi_rec);!',
                   '#TAB_NAME#',
                   p_tableName);
  END;
  /*

  /*
   generate tapi ins record procedure spec
  */
  FUNCTION genInsSpec(p_tableName varchar2) RETURN VARCHAR2 IS
  BEGIN
    return replace(q'!procedure ins(r#TAB_NAME# in out #TAB_NAME#_tapi_rec);!',
                   '#TAB_NAME#',
                   p_tableName);
  END;
  /*

  /*
   generate tapi upd record procedure spec
  */
  FUNCTION genUpdSpec(p_tableName varchar2) RETURN VARCHAR2 IS
  BEGIN
    return replace(q'!procedure upd(r#TAB_NAME# in out #TAB_NAME#_tapi_rec);!',
                   '#TAB_NAME#',
                   p_tableName);
  END;

  /*
   generate tapi del record procedure spec
  */
  FUNCTION genDelSpec(p_tableName varchar2) RETURN VARCHAR2 IS
  BEGIN
    return replace(q'!procedure del(p_ID in #TAB_NAME#.ID%type);!',
                   '#TAB_NAME#',
                   p_tableName);
  END;

  /*
   generate TAPI get record procedure body
  */
  FUNCTION genGetBody(p_tableOwner varchar2, p_tableName varchar2)
    RETURN VARCHAR2 IS
    l_proc_head        VARCHAR2(32767);
    l_proc_select_body VARCHAR2(32767);
    l_proc_where_body  VARCHAR2(32767);
    l_proc_prog_body   VARCHAR2(32767);
    l_proc_if_body     VARCHAR2(32767);
  BEGIN

    -- HEAD
    l_proc_head := q'!PROCEDURE get(r#TAB_NAME# IN OUT #TAB_NAME#_tapi_rec) IS
                         CURSOR c#TAB_NAME# IS SELECT !';

    -- SELECT_BODY
    for rec in c_table_columns(p_tableOwner, p_tableName) loop
      if l_proc_select_body is null then
        l_proc_select_body := '"'||rec.column_name||'"' || cr;
      else
        l_proc_select_body := l_proc_select_body || ',"' || rec.column_name ||'"'|| cr;
      end if;
    end loop;

    -- WHERE BODY
    for rec in c_table_columns(p_tableOwner, p_tableName) loop

      if rec.data_type != 'SDO_GEOMETRY' then
        if l_proc_where_body is null then
          l_proc_where_body := 'FROM "' || p_tableName ||'"' || cr || 'WHERE (r' ||
                               p_tableName || '."' || rec.column_name ||
                               '" IS NOT NULL' || cr || 'AND "' ||
                               rec.column_name || '" = r' || p_tableName || '."' ||
                               rec.column_name ||'"' || cr || 'OR r' ||
                               p_tableName || '."' || rec.column_name ||
                               '" IS NULL)' || cr;
        else
          l_proc_where_body := l_proc_where_body || 'AND' || cr || '(r' ||
                               p_tableName || '."' || rec.column_name ||
                               '" IS NOT NULL' || cr || 'AND "' ||
                               rec.column_name || '" = r' || p_tableName || '."' ||
                               rec.column_name ||'"' || cr || 'OR r' ||
                               p_tableName || '."' || rec.column_name ||
                               '" IS NULL)' || cr;
        end if;
      end if;
    end loop;

    -- IF BODY
    for rec in c_table_columns(p_tableOwner, p_tableName) loop

      if rec.data_type != 'SDO_GEOMETRY' then
        if l_proc_if_body is null then
          l_proc_if_body := 'r' || p_tableName || '."' || rec.column_name ||
                            '" IS NOT NULL ' || cr;
        else
          l_proc_if_body := l_proc_if_body || ' OR r' || p_tableName || '."' ||
                            rec.column_name || '" IS NOT NULL ' || cr;

        end if;
      end if;
    end loop;
    -- PROG_BODY
    l_proc_prog_body := q'!;
                        BEGIN
                          IF (!' || l_proc_if_body ||

                        q'! ) THEN
                             OPEN c#TAB_NAME#;
                              FETCH c#TAB_NAME# INTO r#TAB_NAME#;
                             CLOSE c#TAB_NAME#;
                             ELSE
                               -- WHEN ALL FIELDS ARE NULL THEN RETURN EMPTY REC
                               NULL;
                             END IF;
                        END;!';

    return replace(l_proc_head || l_proc_select_body || l_proc_where_body ||
                   l_proc_prog_body,
                   '#TAB_NAME#',
                   p_tableName);
  END;
  /*
   generate TAPI ins record procedure body
  */
  FUNCTION genInsBody(p_tableOwner varchar2, p_tableName varchar2)
    RETURN VARCHAR2 IS
    l_proc_head    VARCHAR2(32767);
    l_proc_columns VARCHAR2(32767);
    l_proc_values  VARCHAR2(32767);
  BEGIN
    -- HEAD
    l_proc_head := q'!PROCEDURE ins(r#TAB_NAME# IN OUT #TAB_NAME#_TAPI_REC) IS
                        BEGIN
                          INSERT
                          INTO #TAB_NAME#
                            ( !';
    --
    for rec in c_table_columns(p_tableOwner, p_tableName) loop
      if rec.column_name != 'ID' then
        if l_proc_columns is null then
          l_proc_columns := '"'|| rec.column_name ||'"'|| cr;
        else
          l_proc_columns := l_proc_columns || ',"' || rec.column_name ||'"'|| cr;
        end if;
      end if;
    end loop;
    --
    for rec in c_table_columns(p_tableOwner, p_tableName) loop
      if rec.column_name != 'ID' then
        if l_proc_values is null then
          l_proc_values := ') VALUES ( r' || p_tableName || '."' ||
                           rec.column_name ||'"'|| cr;
        else
          l_proc_values := l_proc_values || ',' || 'r' || p_tableName || '."' ||
                           rec.column_name ||'"'|| cr;
        end if;
      end if;
    end loop;
    l_proc_values := l_proc_values ||
                     ' )returning id into r#TAB_NAME#.ID; END;';

    return REPLACE(l_proc_head || l_proc_columns || l_proc_values,
                   '#TAB_NAME#',
                   p_tableName);
  END;

  /*
   generate TAPI upd record procedure body
  */
  FUNCTION genUpdBody(p_tableOwner varchar2, p_tableName varchar2)
    RETURN VARCHAR2 IS
    l_proc_head    VARCHAR2(32767);
    l_proc_columns VARCHAR2(32767);
  BEGIN
    -- HEAD
    l_proc_head := q'!PROCEDURE upd(r#TAB_NAME# IN OUT #TAB_NAME#_TAPI_REC) IS
                        BEGIN
                          UPDATE #TAB_NAME# SET !';
    --
    for rec in c_table_columns(p_tableOwner, p_tableName) loop
      if l_proc_columns is null then
        l_proc_columns := rec.column_name || ' = ' || 'r' || p_tableName || '."' ||
                          rec.column_name ||'"'|| cr;
      else
        l_proc_columns := l_proc_columns || ',"' || rec.column_name || '" = ' || 'r' ||
                          p_tableName || '."' || rec.column_name ||'"'|| cr;
      end if;
    end loop;
    l_proc_columns := l_proc_columns || 'WHERE ID = r' || p_tableName ||
                      '.ID;' || cr || ' END;';
    return REPLACE(l_proc_head || l_proc_columns,
                   '#TAB_NAME#',
                   p_tableName);
  END;

  /*
   generate TAPI del record procedure body
  */
  FUNCTION genDelBody(p_tableOwner varchar2, p_tableName varchar2)
    RETURN VARCHAR2 IS
    l_proc VARCHAR2(32767);
    cursor cTableHis(pc_owner varchar2, pc_tab_name varchar2) is
      select 1 tab
        from ALL_ALL_TABLES t
       where t.table_name = pc_tab_name
         and t.owner = pc_owner;
    rTableHis cTableHis%rowtype;
    l_columns VARCHAR2(32767);
  BEGIN

    open cTableHis(p_tableOwner, p_tableName || '_HIS');
    fetch cTableHis
      into rTableHis;
    close cTableHis;

    if nvl(rTableHis.tab, 0) = 1 then
          l_columns := '';
          for rec in c_table_columns(p_tableOwner, p_tableName) loop
                l_columns := l_columns ||'"'|| rec.column_name ||'",';
          end loop;

      l_proc := q'!PROCEDURE del(p_ID IN #TAB_NAME#.ID%type) IS
                        BEGIN
                          INSERT INTO #TAB_NAME#_HIS(!'||l_columns|| 'HISTORY_DATE)';

        l_columns := '';
        for rec in c_table_columns(p_tableOwner, p_tableName) loop
                l_columns := l_columns || 't."'||rec.column_name ||'",';
        end loop;

      l_proc :=  l_proc || q'! SELECT !'||l_columns|| q'!systimestamp FROM #TAB_NAME# t
                          WHERE t.id = p_ID;
                        DELETE FROM #TAB_NAME# WHERE ID = p_ID;
                        END;!';


    else
      --
      l_proc := q'!PROCEDURE del(p_ID IN #TAB_NAME#.ID%type) IS
                        BEGIN
                          DELETE FROM #TAB_NAME# WHERE ID = p_ID;
                        END;!';

    end if;
    --
    return replace(l_proc, '#TAB_NAME#', p_tableName);
  END;
  /*
  addSimpleTableAudit -
  */
  PROCEDURE addSimpleTableAudit(p_tableOwner varchar2 default 'ISG',
                                p_tableName  varchar2 default null) is
    l_trig_template VARCHAR2(32000);
    l_trig          VARCHAR2(32000);

  begin
    --
    l_trig_template := q'!
CREATE OR REPLACE TRIGGER "#OWNER#"."#TAB_NAME#_AUDIT_TRG"
BEFORE INSERT OR UPDATE ON #OWNER#.#TAB_NAME#
 /** ============================================================================
  ** ==
  ** == Do not change manually !
  ** == Contact: andrzej.raczkowski@esynerga.pl
  ** == Generated on: #SYSDATE#
  ** ==
  ** ========================================================================= */
--
REFERENCING
  NEW AS NEW
  OLD AS OLD
  FOR EACH ROW
BEGIN
    IF INSERTING THEN
     --
      select seq_#TAB_NAME#_pk.NEXTVAL into :NEW.ID from dual;
      --
      SELECT NVL(v('USER'), USER), SYSDATE
        INTO :NEW.creation_user, :NEW.creation_date
      FROM DUAL;
      --
      --logger.log_information('insert new record into #TAB_NAME#');
    ELSIF UPDATING THEN
      --
      SELECT NVL(v('USER'), USER), SYSDATE
        INTO :NEW.modification_user, :NEW.modification_date
      FROM DUAL;
      --
      --logger.log_information('updated record in #TAB_NAME#');
    END IF;
END;
!';

    for rec in c_table(p_tableOwner, p_tableName) loop

      dbms_output.put_line('addSimpleTableAudit for: '|| rec.owner || '.' || rec.table_name);

      l_trig := l_trig_template;
      l_trig := replace(l_trig, '#TAB_NAME#', substr(rec.table_name, 1, 22));
      l_trig := replace(l_trig, '#OWNER#', rec.owner);
      l_trig := replace(l_trig,
                        '#SYSDATE#',
                        to_char(sysdate, 'YYYY-MM-DD hh24:mi:ss'));
     begin
      EXECUTE IMMEDIATE l_trig;
     exception when others then
             dbms_output.put_line(sqlerrm);
     end;

    end loop;
    --
  exception
    when others then
      dbms_output.put_line(sqlerrm);
  end;

  PROCEDURE genTableTapi(p_tableOwner varchar2 default 'ISG',
                         p_tableName  varchar2 default null) IS
    l_pkg_spec VARCHAR2(32767);
    l_pkg_body VARCHAR2(32767);
    l_type     VARCHAR2(32767);
    l_get_spec VARCHAR2(32767);
    l_ins_spec VARCHAR2(32767);
    l_upd_spec VARCHAR2(32767);
    l_del_spec VARCHAR2(32767);
    l_get_body VARCHAR2(32767);
    l_ins_body VARCHAR2(32767);
    l_upd_body VARCHAR2(32767);
    l_del_body VARCHAR2(32767);

    l_unit_name VARCHAR2(32);
  BEGIN

    for rec in c_table(p_tableOwner, p_tableName) loop

      dbms_output.put_line('genTableTapi for: '|| rec.owner || '.' || rec.table_name);


      BEGIN
        l_pkg_spec := q'!
      CREATE OR REPLACE PACKAGE #TAB_OWNER#.#UNIT_NAME# IS
       /** ============================================================================
        ** ==
        ** == Do not change manually !
        ** == Generated on: #SYSDATE#
        ** == Contact: andrzej.raczkowski@esynerga.pl
        ** ==
        ** ========================================================================= */
        --
        --
         #TYPE#
         --
         #GET_SPEC#
         --
         #INS_SPEC#
         --
         #UPD_SPEC#
         --
         #DEL_SPEC#
         --
         END #UNIT_NAME#;!';

        --
        l_pkg_body := q'!CREATE OR REPLACE PACKAGE BODY #TAB_OWNER#.#UNIT_NAME# IS
                             --
                             #GET_BODY#
                             --
                             #INS_BODY#
                             --
                             #UPD_BODY#
                             --
                             #DEL_BODY#
                             --
                             END #UNIT_NAME#;!';
        --

        --
        l_unit_name := substr(rec.table_name, 0, 21) || '_TAPI';
        --
        l_type     := genType(rec.owner, rec.table_name);
        l_get_spec := genGetSpec(rec.table_name);
        l_ins_spec := genInsSpec(rec.table_name);
        l_upd_spec := genUpdSpec(rec.table_name);
        l_del_spec := genDelSpec(rec.table_name);
        --
        l_get_body := genGetBody(rec.owner, rec.table_name);
        l_ins_body := genInsBody(rec.owner, rec.table_name);
        l_upd_body := genUpdBody(rec.owner, rec.table_name);
        l_del_body := genDelBody(rec.owner, rec.table_name);

        l_pkg_spec := replace(l_pkg_spec,
                              '#SYSDATE#',
                              to_char(sysdate, 'YYYY-MM-DD hh24:mi:ss'));
        l_pkg_spec := replace(l_pkg_spec, '#TAB_OWNER#', rec.owner);
        l_pkg_spec := replace(l_pkg_spec, '#UNIT_NAME#', l_unit_name);
        l_pkg_spec := replace(l_pkg_spec, '#TYPE#', l_type);
        l_pkg_spec := replace(l_pkg_spec, '#GET_SPEC#', l_get_spec);
        l_pkg_spec := replace(l_pkg_spec, '#INS_SPEC#', l_ins_spec);
        l_pkg_spec := replace(l_pkg_spec, '#UPD_SPEC#', l_upd_spec);
        l_pkg_spec := replace(l_pkg_spec, '#DEL_SPEC#', l_del_spec);
        EXECUTE IMMEDIATE l_pkg_spec;

        l_pkg_body := replace(l_pkg_body, '#TAB_OWNER#', rec.owner);

        l_pkg_body := replace(l_pkg_body, '#UNIT_NAME#', l_unit_name);
        l_pkg_body := replace(l_pkg_body, '#GET_BODY#', l_get_body);
        l_pkg_body := replace(l_pkg_body, '#INS_BODY#', l_ins_body);
        l_pkg_body := replace(l_pkg_body, '#UPD_BODY#', l_upd_body);
        l_pkg_body := replace(l_pkg_body, '#DEL_BODY#', l_del_body);
        EXECUTE IMMEDIATE l_pkg_body;

      EXCEPTION
        WHEN OTHERS THEN
          dbms_output.put_line(sqlerrm);
      END;
    end loop;

  END;

   /*
  genPkSeq -
  */
  PROCEDURE genPkSeq(p_tableOwner varchar2 default 'ISG',
                      p_tableName  varchar2 default null) IS
    l_mini_val number;
    TYPE cTyp IS REF CURSOR;
    c cTyp;
  BEGIN
   for rec in c_table(p_tableOwner, p_tableName) loop

      BEGIN

        dbms_output.put_line('genPkSeq for:'|| rec.owner || '.' || rec.table_name);

         OPEN c for ' select nvl(max(id)+1,1) from "' || rec.owner||'"."'||rec.table_name ||'"';
           FETCH c INTO l_mini_val;
         CLOSE c;

        EXECUTE IMMEDIATE 'CREATE SEQUENCE "'||rec.owner||'"."SEQ_'||rec.table_name||
        '_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH '||l_mini_val;

      EXCEPTION
        WHEN OTHERS THEN
          dbms_output.put_line(sqlerrm);
      END;
      end loop;
  END;

END DEV_UTILS;

/
