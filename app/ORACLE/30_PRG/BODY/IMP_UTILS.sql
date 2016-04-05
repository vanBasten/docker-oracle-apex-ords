create or replace PACKAGE BODY "IMP_UTILS"
IS
  /** =========================================================================
  ===
  ** ==
  ** == IMP_UTILS is utility package providing functionalities for import data
  ** ==
  ** == Contact: andrzej.raczkowski@eSynerga.pl
  ** ==
  ** == AR    21/03/2014    initial version
  ** =========================================================================
  */
  C_IMP_IN_PROGRESS CONSTANT VARCHAR2(30) := 'IN PROGRESS';
  C_IMP_SUCCESS     CONSTANT VARCHAR2(30) := 'SUCCESS';
  C_IMP_ERROR       CONSTANT VARCHAR2(30) := 'ERROR';
function logRequestStart(
    p_imp_file_id imp_file.id%type)
  return IMPORT_LOG.id%type
is
  l_id IMPORT_LOG.id%type;
  pragma autonomous_transaction;
begin
  insert
  into
    IMPORT_LOG
    (
      status,
      started,
      imp_file_id
    )
    values
    (
      c_imp_in_progress,
      systimestamp,
      p_imp_file_id
    )
  RETURNING
    id
  into
    l_id;
  commit;
  return l_id;
end;
procedure logRequestEnd
  (
    p_id IMPORT_LOG.id%type,
    p_status IMPORT_LOG.status%type,
    p_error_stack     varchar2 default null,
    p_error_backtrace varchar2 default null
  )
is
  pragma autonomous_transaction;
begin
  update
    IMPORT_LOG
  set
    status          = p_status ,
    error_stack     = p_error_stack ,
    error_backtrace = p_error_backtrace ,
    finshed         = systimestamp
  where
    id = p_id;
  commit;
end;
--
/*
truncateAll
*/
PROCEDURE truncateAll
IS
procedure disableConstrains(
    p_table_name varchar2)
is
begin
  FOR c IN
  (
    SELECT
      c.table_name,
      c.constraint_name
    FROM
      user_constraints c,
      user_tables t
    WHERE
      c.table_name         = t.table_name
    AND c.TABLE_NAME       = p_table_name
    AND c.status           = 'ENABLED'
    AND c.CONSTRAINT_TYPE != 'P'
    ORDER BY
      c.constraint_type DESC
  )
  LOOP
    dbms_utility.exec_ddl_statement('alter table "' || c.table_name ||
    '" disable constraint ' || c.constraint_name);
  END LOOP;
end;
procedure enableConstrains(
    p_table_name varchar2)
is
begin
  FOR c IN
  (
    SELECT
      c.table_name,
      c.constraint_name
    FROM
      user_constraints c,
      user_tables t
    WHERE
      c.table_name = t.table_name
    AND c.status   = 'DISABLED'
    ORDER BY
      c.constraint_type
  )
  LOOP
    dbms_utility.exec_ddl_statement('alter table "' || c.table_name ||
    '" enable constraint ' || c.constraint_name);
  END LOOP;
end;
BEGIN
  disableConstrains('ZLECENIA');
  disableConstrains('POJAZDY');
  disableConstrains('LUDZIE');
  disableConstrains('LUDZIE_ZLECENIA');
  disableConstrains('POJAZDY_ZLECENIA');
  DBMS_UTILITY.EXEC_DDL_STATEMENT('TRUNCATE TABLE LUDZIE_ZLECENIA');
  DBMS_UTILITY.EXEC_DDL_STATEMENT('TRUNCATE TABLE POJAZDY_ZLECENIA');
  DBMS_UTILITY.EXEC_DDL_STATEMENT('TRUNCATE TABLE ZLECENIA');
  DBMS_UTILITY.EXEC_DDL_STATEMENT('TRUNCATE TABLE POJAZDY');
  DBMS_UTILITY.EXEC_DDL_STATEMENT('TRUNCATE TABLE LUDZIE');
  enableConstrains('ZLECENIA');
  enableConstrains('POJAZDY');
  enableConstrains('LUDZIE');
  enableConstrains('LUDZIE_ZLECENIA');
  enableConstrains('POJAZDY_ZLECENIA');
END;
--
/*
impLudzie
*/
PROCEDURE impLudzie(
    p_file_id FILE_CONTENT.ID%type)
IS
BEGIN
  INSERT
  INTO
    LUDZIE
    (
      ID,
      LP,
      IMIE,
      NAZWISKO,
      UPRAWNIENIA_EKSPLOATACJA,
      UPRAWNIENIA_DOZOR,
      PPN,
      PROWADZNEIE_POJAZDOW,
      KOPARKI,
      PODESTY,
      POMIARY,
      GRAFIK_PRACY,
      ZWOLNIENIA_LEKARSKIE,
      GRAFIK_URLOPOW,
      GRAFIK_POGOTOWIA_DOMOWEGO
    )
  select
    *
  from
    (
    WITH
      dane AS
      (
        select
          row_nr,
          col_nr,
          nvl(string_val, number_val) val
        from
          table
          (
            select
              as_read_xlsx.read( CONTENT_DATA,'LUDZIE' )
            from
              IMP_FILE
            where
              ID = p_file_id
          )
        where
          row_nr > 1
      )
    SELECT
      *
    FROM
      dane PIVOT ( MAX(val) FOR col_nr IN ('1', '2', '3','4','5','6','7','8',
      '9','10','11','12','13','14' ) )
    );
END;
--
/*
impPojazdy
*/
PROCEDURE impPojazdy(
    p_file_id FILE_CONTENT.ID%type)
IS
BEGIN
  INSERT
  INTO
    POJAZDY
    (
      ID,
      LP,
      NAZWA,
      DMC,
      PRAWO_JAZDY,
      UPRAWNIENIA_DODATKOWE,
      ILOSC,
      POJEMNOSC
    )
  select
    *
  from
    (
    WITH
      dane AS
      (
        select
          row_nr,
          col_nr,
          nvl(string_val, number_val) val
        from
          table
          (
            select
              as_read_xlsx.read( CONTENT_DATA,'POJAZDY' )
            from
              IMP_FILE
            where
              ID = p_file_id
          )
        where
          row_nr > 1
      )
    SELECT
      *
    FROM
      dane PIVOT ( MAX(val) FOR col_nr IN ('1', '2', '3','4','5','6','7' ) )
    );
END;
--
/*
impZlecenia
*/
PROCEDURE impZlecenia(
    p_file_id FILE_CONTENT.ID%type)
IS
BEGIN
  INSERT
  INTO
    ZLECENIA
    (
      ID,
      LP,
      OPIS_ZLECENIA,
      NR,
      PRIORYTET,
      TYP_ZLECENIA,
      DATA_WYKONANIA,
      UWAGA,
      ILOSC_RBG,
      ILOSC_PRACOWNIKOW,
      UPRAWNIENIA_1,
      UPRAWNIENIA_2,
      UPRAWNIENIA_3,
      UPRAWNIENIA_4,
      SAMOCHOD_BRYGADOWY,
      WYMAGANY_SPRZET_1,
      WYMAGANY_SPRZET_2,
      MIEJSCOWOSC,
      ADRES,
      SZEROKOSC_GEOGRAFICZNA,
      D£UGOSC_GEOGRAFICZNA
    )
  select
  row_nr, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, trim(substr(k12,instr(k12,';')+1, length(k12))) k12, trim(substr(k12,0, instr(k12,';')-1)) k12b, k13,trim(substr(k14,instr(k14,';')+1, length(k14))) k14, trim(substr(k14,0, instr(k14,';')-1)) k14b, k15, k16, k17, k18
  from
    (
    WITH
      dane AS
      (
        select
          row_nr,
          col_nr,
          nvl(string_val, number_val) val
        from
          table
          (
            select
              as_read_xlsx.read( CONTENT_DATA,'ZLECENIA' )
            from
              IMP_FILE
            where
              ID = p_file_id
          )
        where
          row_nr > 1
      )
    SELECT
      *
    FROM
       dane PIVOT ( MAX(val) FOR col_nr IN ('1' k1, '2' k2, '3' k3,'4' k4,'5' k5,'6' k6,'7' k7,'8' k8,
      '9' k9,'10' k10,'11' k11,'12' k12,'13' k13,'14' k14, '15' k15,'16' k16,'17' k17,'18' k18 ) )
    );
END;
--
--
/*
mainImp -
*/
PROCEDURE mainImp(
    p_file_id FILE_CONTENT.ID%type DEFAULT NULL)
IS
  l_logId IMPORT_LOG.id%type;
  l_fileId number;
BEGIN
  --
  IF p_file_id IS NULL THEN
    select max(id) into l_fileId
    from imp_file;
  ELSE 
   l_fileId := p_file_id;
  END IF;
  
  --
  l_logId := logRequestStart(l_fileId);
  
  --
  -- 1. truncate tables
  truncateAll;
  --
  -- 2. import POJAZDY
  impPojazdy(l_fileId);
  --
  -- 3. import LUDZIE
  impLudzie(l_fileId);
  --
  -- 4. import ZLECENIA
  impZlecenia(l_fileId);
  --
  -- 5. widok kalendarza pracy, 1 dzieñ pracy to dzieñ importu + 1
  --dbms_mview.refresh(MV_HARMONOGRAM_PRACY);
  
  --
  logRequestEnd(l_logId, C_IMP_SUCCESS, null);
EXCEPTION
WHEN OTHERS THEN
  logRequestEnd(l_logId, C_IMP_ERROR, dbms_utility.format_error_stack() ,
  dbms_utility.format_error_backtrace());
  raise;
END;
END IMP_UTILS;
/