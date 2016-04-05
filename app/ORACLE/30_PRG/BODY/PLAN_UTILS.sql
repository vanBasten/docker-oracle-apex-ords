create or replace PACKAGE BODY "PLAN_UTILS"
IS
  /** =========================================================================
  ===
  ** ==
  ** == PLAN_UTILS is utility package providing functionalities for planning
  ** ==
  ** == Contact: andrzej.raczkowski@eSynerga.pl
  ** ==
  ** == AR    27/03/2014    initial version
  ** =========================================================================
  */
  --
  /*
  mainPlan -
  */
PROCEDURE mainPlan
IS
l_ilosc_pracownikow number;
BEGIN
  delete from LUDZIE_ZLECENIA;
  delete from POJAZDY_ZLECENIA;

  begin
    -- plan wykonania
    for r in
    (
      select
        *
      from
        zlecenia
    )
    loop
      update
        zlecenia
      set
        DATA_START_PLAN =
        (
          SELECT
            TO_DATE( TRUNC( DBMS_RANDOM.VALUE(TO_CHAR(sysdate,'J') ,TO_CHAR(
            sysdate + 8,'J') ) ),'J' )
          FROM
            DUAL
        )
      where
        id = r.id;
      -- przypisanie pracowników
      l_ilosc_pracownikow := to_number(nvl(r.ilosc_pracownikow,1));
      FOR x in 1..l_ilosc_pracownikow
      LOOP
        INSERT
        INTO
          LUDZIE_ZLECENIA
          (
            LUDZIE_ID,
            ZLECENIA_ID
          )
          VALUES
          (
            (
              select
                id
              from
                (
                  SELECT
                    id
                  from
                    ludzie
                  order by
                    DBMS_RANDOM.RANDOM
                )
              where
                rownum < 2
            )
            ,
            r.id
          );
      end loop;
      -- przypisanie pojazdu
      INSERT
      INTO
        POJAZDY_ZLECENIA
        (
          POJAZDY_ID,
          ZLECENIA_ID
        )
        VALUES
        (
          (
            select
              id
            from
              (
                SELECT
                  id
                from
                  pojazdy
                order by
                  DBMS_RANDOM.RANDOM
              )
            where
              rownum < 2
          )
          ,
          r.id
        );
      -- przypisanie sprzêtu
      if r.WYMAGANY_SPRZET_1 is not null then
        INSERT
        INTO
          POJAZDY_ZLECENIA
          (
            POJAZDY_ID,
            ZLECENIA_ID
          )
          VALUES
          (
            (
              select
                nvl(id, (select id from pojazdy where rownum <2))
              from
                pojazdy
              where
                nazwa = r.WYMAGANY_SPRZET_1
            )
            ,
            r.id
          );
      end if;
    end loop;
    -- data koniec
    update
      zlecenia
    set
      DATA_KONIEC_PLAN = DATA_START_PLAN + zlecenia.ILOSC_RBG /
      zlecenia.ILOSC_PRACOWNIKOW;
      
    -- login i haslo dla LUDZI
    update ludzie l
    set l.login = upper(substr(l.imie,0,1)||substr(l.nazwisko,0,1)),
      l.haslo = upper(substr(l.imie,0,1)||substr(l.nazwisko,0,1));
    
  end;
END;
END PLAN_UTILS;
/