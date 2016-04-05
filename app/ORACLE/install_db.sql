prompt ..install_db_main.sql

@@00_INI\initialize.sql

rem ALTER SESSION SET CURRENT_SCHEMA="ISG"
ALTER SESSION SET CURRENT_SCHEMA="ISG";

prompt ..10_DDL\dm.sql
@@10_DDL\dm.sql
prompt ..20_DML\app_setting.sql
@@20_DML\app_setting.sql
prompt ..20_DML\app_source.sql
@@20_DML\app_source.sql
prompt ..20_DML\presence_status.sql
@@20_DML\presence_status.sql
prompt ..pljson\install.sql
@@pljson\install.sql
prompt ..30_PRG\all_spec.sql
@@30_PRG\all_spec.sql
prompt ..30_PRG\all_body.sql
@@30_PRG\all_body.sql
