set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>1838304746307669
,p_default_application_id=>100
,p_default_owner=>'ISG'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 100 - ISG
--
-- Application Export:
--   Application:     100
--   Name:            ISG
--   Date and Time:   11:55 Tuesday April 5, 2016
--   Exported By:     ISG
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     103884259283008
--

-- Application Statistics:
--   Pages:                     31
--     Items:                  109
--     Computations:             2
--     Validations:             34
--     Processes:               52
--     Regions:                 63
--     Buttons:                 90
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  4
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:             25
--       NavBar Entries:         3
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 2
--       Templates:
--         Page:                32
--         Region:              57
--         Label:               11
--         List:                35
--         Popup LOV:            2
--         Calendar:             6
--         Breadcrumb:           4
--         Button:              13
--         Report:              20
--       LOVs:                  10
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,100)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'K00')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'ISG')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'K00')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20160405115453'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>28800
,p_flow_language=>'pl'
,p_flow_language_derived_from=>'SESSION'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'YYYY-MM-DD HH24.MI.SS'
,p_date_time_format=>'YYYY-MM-DD HH24.MI.SS'
,p_timestamp_format=>'YYYY-MM-DD HH24.MI.SSXFF'
,p_timestamp_tz_format=>'YYYY-MM-DD HH24.MI.SSXFF PM TZR'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(11429928121845294)
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=600&amp;p_next_flow_page_sess=600:2'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:ISG'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'&APP_VERSION.'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'HELP'
,p_substitution_value_01=>'Info'
,p_substitution_string_02=>'PRODUCT_NAME'
,p_substitution_value_02=>'ISG'
,p_substitution_string_03=>'LOGOUT'
,p_substitution_value_03=>'Logout'
,p_substitution_string_04=>'MSG_COMPANY'
,p_substitution_value_04=>'Sviete'
,p_substitution_string_05=>'MSG_LANGUAGE'
,p_substitution_value_05=>'Language'
,p_substitution_string_06=>'MSG_COPYRIGHT'
,p_substitution_value_06=>'Copyright &copy; 2016, Sviete All rights reserved.'
,p_substitution_string_07=>'MSG_USER'
,p_substitution_value_07=>'User'
,p_last_updated_by=>'ISG'
,p_last_upd_yyyymmddhh24miss=>'20160405115453'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(11439328148008973)
,p_name=>'menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11439530086008973)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Plany doręczeń'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11439831732008977)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dane słownikowe'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11456035669373536)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Rezultaty doręczenia'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11439831732008977)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11461238668660844)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Przyczyny niedoręczenia'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11439831732008977)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11461622494668343)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Dostępne przyczyny'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11439831732008977)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11461433492663198)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Jednostki awizacyjne'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11439831732008977)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Terminal Mobilny'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11482019361578904)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Ustawienia Aplikacji'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11482215911580520)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Zasoby Aplikacji'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11636522926790751)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Nowa wersja'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11482215911580520)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11489334093754365)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Statusy Obecnosci'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11507040742328527)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Pozycje GPS'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#APP_IMAGES#icon-map-marker18.png'
,p_parent_list_item_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11507332546332380)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Odebrane Pliki'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#APP_IMAGES#icon-cloud-download.png'
,p_parent_list_item_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11519642222953425)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Logi Komunikacji'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(11468838008916948)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(51777655062407600)
,p_name=>'main menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select level,',
'       nvl(t.value, m.link_label) label,',
'       decode(m.link_url,',
'              null,',
'              ''f?p='' || m.app_alias || '':'' || m.app_page_id || '':'' ||',
'              ''&SESSION.'',',
'              m.link_url) target,',
'      decode(m.app_alias,:APP_ALIAS,(decode(m.parent_id,null,''YES'',''NO'')), ''NO'') is_current_list_entry',
'  from adm.app_main_menu m',
'  left outer join  cor.translate_text t',
'   on m.code = t.code',
'   and t.language = apex_util.get_session_lang',
'   and t."SCHEMA" = ''ADM''',
'   and t."TABLE" = ''APP_MAIN_MENU''',
'   and t."COLUMN" = ''LINK_LABEL''',
' -- authorization check',
' where adm.users_utils.IsAccessYN(p_vAppAlias => m.app_alias,',
'                                p_nPageId   => m.app_page_id,',
'                                p_vUser     => :APP_USER) = ''Y''',
' start with m.parent_id is null',
'connect by prior m.id = m.parent_id',
'order by m.order_by'))
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3649140957220823)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3649225241220823)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3676514794218459)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'PLUGIN_COM.AF.PLUGIN.JQ.FILEUPLOAD'
,p_attribute_01=>'1536000'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941249878925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_EXISTS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941328158925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_NOT_EXISTS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941430795925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_ITEM_IS_NULL'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941551386925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941637075925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_FUNCTION_BODY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941740715925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_PREF_EQUALS_VALUE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941855343925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_PREF_NOT_EQUALS_VALUE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15941932415925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_ITEM_EQUALS_VALUE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942051468925712)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_plugin=>'NATIVE_ITEM_NOT_EQUALS_VALUE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942128187925712)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_JQM_LIST_VIEW'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942241309925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_HIDE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942356151925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_ENABLE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942455830925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_DISABLE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942540024925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_SET_VALUE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942638417925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_JAVASCRIPT_CODE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942743034925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_ADD_CLASS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942834309925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_REMOVE_CLASS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15942943921925712)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_SET_CSS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943038867925713)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_CUSTOM'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943158470925713)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943240343925713)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_TEXTAREA'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943334388925713)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_PASSWORD'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943432066925713)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_CLASSIC'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943545374925713)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STOP_AND_START_HTML_TABLE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943631650925713)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_REFRESH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943730026925713)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_SHOW'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943858916925713)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_HTTP_HEADER_VARIABLE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15943957256925713)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_CLEAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944052411925713)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_ALERT'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944156787925713)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_CONFIRM'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944247531925713)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_PARSE_UPLOADED_DATA'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944348742925713)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944428456925713)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_PREPARE_UPLOADED_DATA'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944534274925713)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_LOAD_UPLOADED_DATA'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944647882925713)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_APEX_ACCOUNTS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944733523925713)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_OPEN_DOOR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944830472925714)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_DB_ACCOUNTS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15944955578925714)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_LDAP'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945057400925714)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_IAS_SSO'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945127074925714)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_plugin=>'NATIVE_DAD'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945241665925714)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_SET_FOCUS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945327434925714)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_SUBMIT_PAGE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945455044925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_NUMBER_FIELD'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945527058925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SLIDER'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945652138925714)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_SEND_EMAIL'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945745925925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_FILE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945858458925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_LIST_MANAGER'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15945938613925714)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946040698925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946148550925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_HTML5'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946235284925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_TEXT_FIELD'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946336962925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946443761925714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_TEXT_WITH_CALCULATOR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946552324925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_HIDDEN'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946640324925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DISPLAY_IMAGE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946738392925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_AUTO_COMPLETE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946835909925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_POPUP_LOV'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15946943025925715)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_EXECUTE_PLSQL_CODE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15947049152925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DISPLAY_ONLY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15947140981925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_CHECKBOX'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15947251151925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15947338839925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SHUTTLE'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15947456495925715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RADIOGROUP'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(21199243213269583)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(34807104762731341)
,p_icon_sequence=>1
,p_icon_subtext=>'Wyloguj: &APP_USER. (&BROWSER_LANGUAGE.)'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'&APP_USER. (&BROWSER_LANGUAGE.)'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(35728211053928865)
,p_icon_sequence=>10
,p_icon_subtext=>'Zgłoszenie'
,p_icon_target=>'javascript:popupURL(''f?p=&APP_ID.:102:&SESSION.:::102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.'');'
,p_nav_entry_is_feedback_yn=>'Y'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(21078928930025661)
,p_icon_sequence=>100
,p_icon_subtext=>'Pomoc'
,p_icon_target=>'javascript:popupURL(''f?p=&APP_ALIAS.:HELP:&SESSION.:&APP_PAGE_ID.'');'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(20849450167137169)
,p_name=>'APP_NAME'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(23728429791922636)
,p_name=>'APP_VERSION'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(34808914222731699)
,p_name=>'FSP_AFTER_LOGIN_URL'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(35671614849209473)
,p_name=>'LOGIN_MESSAGE'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18178332590353101)
,p_lov_name=>'LV_ADDRESS_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  POSTAL_CODE || '' ''||  CITY || '' ''||',
'  STREET || '' ''|| "NUMBER" as d,',
'  ID as r',
'FROM k00.ADDRESS'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(11512617055117798)
,p_lov_name=>'LV_MEDIA_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(11512617055117798)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11512939435117798)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'image/png'
,p_lov_return_value=>'image/png'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11513222306117799)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'image/gif'
,p_lov_return_value=>'image/gif'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11513543679117799)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'text/html'
,p_lov_return_value=>'text/html'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11513841689117799)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'text/javascript'
,p_lov_return_value=>'text/javascript'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11514127067117799)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'text/css'
,p_lov_return_value=>'text/css'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18392456886765892)
,p_lov_name=>'LV_NOTYFICATION_CHANNEL_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.NOTIFICATION_CHANNEL'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18367958319744363)
,p_lov_name=>'LV_PACKAGE_TYPE_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.PACKAGE_TYPE',
'where Foreign = ''N'''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18379543568175397)
,p_lov_name=>'LV_PAYMENT_TYPE_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.PAYMENT_TYPE'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18398953169171614)
,p_lov_name=>'LV_SERVICE_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.SERVICE'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26872578945748839)
,p_lov_name=>'LV_TASK_STATUS_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NAME d, ID r',
'from TASK_STATUS',
'order by 2'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26872353318741490)
,p_lov_name=>'LV_TASK_TYPE_NAME'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NAME d, ID r',
'from TASK_TYPE',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18364434530618033)
,p_lov_name=>'LV_VEHICLE_NUM_ALL'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NUM display_value, ID return_value ',
'from  k00.vehicle',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(11488135672741966)
,p_lov_name=>'LV_Y_N'
,p_lov_query=>'.'||wwv_flow_api.id(11488135672741966)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11488441631741968)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Tak'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11488714608741971)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Nie'
,p_lov_return_value=>'0'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(34808199147731347)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11468632287912847)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Terminal Mobilny'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11475033427952750)
,p_parent_id=>wwv_flow_api.id(11468632287912847)
,p_short_name=>'Zasoby Aplikacji'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11475718795952750)
,p_parent_id=>wwv_flow_api.id(11475033427952750)
,p_short_name=>'Edycja Zasobu Aplikacji'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11480914806034740)
,p_parent_id=>wwv_flow_api.id(11468632287912847)
,p_short_name=>'Ustawienia Aplikacji'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11487735325722456)
,p_parent_id=>wwv_flow_api.id(11468632287912847)
,p_short_name=>'Statusy Obecnosci'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11497532316271361)
,p_parent_id=>wwv_flow_api.id(11468632287912847)
,p_short_name=>'Pozycje GPS'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11498230053271362)
,p_parent_id=>wwv_flow_api.id(11497532316271361)
,p_short_name=>'Edycja Pozycji GPS'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11505013973313965)
,p_parent_id=>wwv_flow_api.id(11468632287912847)
,p_short_name=>'Odebrane Pliki'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11505715516313966)
,p_parent_id=>wwv_flow_api.id(11505013973313965)
,p_short_name=>'Odebrane Pliki'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11517444065945439)
,p_parent_id=>wwv_flow_api.id(11468632287912847)
,p_short_name=>'Logi Komunikacji'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11633228695659731)
,p_parent_id=>wwv_flow_api.id(11475033427952750)
,p_short_name=>'Wgranie nowej wersji'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18174237275301455)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Curiers Tasks'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18174950005301455)
,p_parent_id=>wwv_flow_api.id(18174237275301455)
,p_short_name=>'Form on Curier Task'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18337456985613154)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Task Type Form'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18350753644322692)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Task Status Form'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18357752091369136)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Report on Address'
,p_link=>'f?p=&APP_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18358439884369137)
,p_parent_id=>wwv_flow_api.id(18357752091369136)
,p_short_name=>'Form on Address'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18373333453895435)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Package Type Form '
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18378652554126695)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Payment Type Form'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18385141453225502)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Form on Notification Channel'
,p_link=>'f?p=&APP_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18398528726884714)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Form on Service'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19018049933310916)
,p_parent_id=>wwv_flow_api.id(18174950005301455)
,p_short_name=>'Task Item Detail'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19103957055247325)
,p_parent_id=>wwv_flow_api.id(18174237275301455)
,p_short_name=>'Agenda Calendar'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20857145962373318)
,p_parent_id=>wwv_flow_api.id(34808595104731350)
,p_short_name=>'Message Template Form'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(34808595104731350)
,p_parent_id=>0
,p_short_name=>'Start'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63528830251630401)
,p_theme_id=>24
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uLoginContainer">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="$x_Remove(''uNotificationMessage'')"></a>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63529045338630458)
,p_theme_id=>24
,p_name=>'No Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        <li><span>#WELCOME_USER#</span></li>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63529357630630460)
,p_theme_id=>24
,p_name=>'No Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63529655917630460)
,p_theme_id=>24
,p_name=>'No Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63529934903630461)
,p_theme_id=>24
,p_name=>'No Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63530250358630465)
,p_theme_id=>24
,p_name=>'One Level Tabs - Content Frame'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'		#REGION_POSITION_02#',
'    </span>',
'  </div>',
'  <div class="uFrameContent">',
'	<div class="uFrameMain">',
'		#BODY#',
'	</div>',
'	<div class="uFrameSide">',
'		#REGION_POSITION_03#',
'	</div>',
'  </div>',
'</section>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63530551598630465)
,p_theme_id=>24
,p_name=>'One Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63530850582630465)
,p_theme_id=>24
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63531151309630466)
,p_theme_id=>24
,p_name=>'One Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63531432759630466)
,p_theme_id=>24
,p_name=>'One Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63531747759630467)
,p_theme_id=>24
,p_name=>'One Level Tabs - Wizard Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'',
'<div class="cWizard">',
'	<div class="cWizardHeader">',
'		#REGION_POSITION_02#',
'	</div>',
'    <div class="cWizardContentContainer">',
'    <div class="cWizardContent">',
'        #BODY##REGION_POSITION_03#',
'    </div>',
'    <div class="clear"></div>',
'</div>',
'',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63532028429630467)
,p_theme_id=>24
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63532344010630467)
,p_theme_id=>24
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD# id="uPrinterFriendly">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_04#',
'</header>',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63532645711630467)
,p_theme_id=>24
,p_name=>'Two Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63532937800630468)
,p_theme_id=>24
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63533243311630468)
,p_theme_id=>24
,p_name=>'Two Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message"><section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63533530930630468)
,p_theme_id=>24
,p_name=>'Two Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102280876383499960)
,p_theme_id=>102
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="login">',
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'  <div id="login-main">#REGION_POSITION_02##BODY##REGION_POSITION_03#',
'</div>',
'',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_reference_id=>24355716806328834
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102281071987499964)
,p_theme_id=>102
,p_name=>' No Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'#REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'         ',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_reference_id=>24355912410328838
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102281386769499964)
,p_theme_id=>102
,p_name=>'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_reference_id=>24356227192328838
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102281688490499968)
,p_theme_id=>102
,p_name=>'No Tabs - Right Sidebar (fixed-width / DIV based) - custom menu'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'   ',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'     ',
' ',
'',
'',
'      <div class="tab-holder">',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_reference_id=>24356528913328842
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102281981582499968)
,p_theme_id=>102
,p_name=>'No Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region">',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title"></div>',
'    <div class="rc-buttons">',
'      <button onclick="#BACK_LINK#" class="button-alt1" type="button">',
'        <span>#OK#</span>',
'      </button>',
'    </div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">',
'  <p>#MESSAGE#</p>',
'  <strong>#ADDITIONAL_INFO#</strong>',
'  <br />',
'  <br />',
'  <div class="error_technical_info">#TECHNICAL_INFO#</div>',
'  ',
'  </div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>',
''))
,p_grid_type=>'TABLE'
,p_reference_id=>24356822005328842
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102282291541499968)
,p_theme_id=>102
,p_name=>'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
' #REGION_POSITION_08#',
'',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_reference_id=>24357131964328842
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102282583608499969)
,p_theme_id=>102
,p_name=>'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_reference_id=>24357424031328843
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102282880505499970)
,p_theme_id=>102
,p_name=>'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_reference_id=>24357720928328844
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102283178018499970)
,p_theme_id=>102
,p_name=>'One Level Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_reference_id=>24358018441328844
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102283489735499970)
,p_theme_id=>102
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD# class="popup-page">#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_reference_id=>24358330158328844
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102283769639499970)
,p_theme_id=>102
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar">#REGION_POSITION_02#</td>     ',
'        <td class="tbl-main" width="100%">#BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_reference_id=>24358610062328844
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102284062538499971)
,p_theme_id=>102
,p_name=>'Two Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_reference_id=>24358902961328845
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102284388191499971)
,p_theme_id=>102
,p_name=>'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_reference_id=>24359228614328845
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102284660446499972)
,p_theme_id=>102
,p_name=>'Two Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_reference_id=>24359500869328846
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(102284985540499972)
,p_theme_id=>102
,p_name=>'Two Level Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_reference_id=>24359825963328846
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3650149127220869)
,p_template_name=>'HTML image (legacy - APEX 5 migration)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'<a href="#LINK#" id="#BUTTON_ID#" title="#LABEL#"><img src="#BUTTON_CSS_CLASSES#" alt="#LABEL#" border="#" #BUTTON_ATTRIBUTES# /></a>'))
,p_hot_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'<a href="#LINK#" id="#BUTTON_ID#" title="#LABEL#"><img src="#BUTTON_CSS_CLASSES#" alt="#LABEL#" border="#" #BUTTON_ATTRIBUTES# /></a>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3655241289221053)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63533850818630469)
,p_template_name=>'Button'
,p_template=>'<a href="#LINK#" class="uButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButton uHotButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63534054101630474)
,p_template_name=>'Interactive Report Button'
,p_template=>'<a href="#LINK#" class="uButtonIR" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63534245004630474)
,p_template_name=>'Large Button'
,p_template=>'<a href="#LINK#" class="uButtonLarge" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63534439251630474)
,p_template_name=>'Small Button'
,p_template=>'<a href="#LINK#" class="uButtonSmall" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonSmall uHotButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63534638773630474)
,p_template_name=>'[ + ] Add Button'
,p_template=>'<a href="#LINK#" class="uIconButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" title="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" title="#LABEL#" class="addIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63534853692630474)
,p_template_name=>'[ > ] Go To Button'
,p_template=>'<a href="#LINK#" class="uIconButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" title="#LABEL#" class="gotoIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" title="#LABEL#" class="gotoIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63535039186630475)
,p_template_name=>'[ Text ] Button'
,p_template=>'<a href="#LINK#" class="uIconButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(102285260408499974)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-gray" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_hot_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>24360100831328848
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>102
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(102285461096499977)
,p_template_name=>'Button, Alternative 1'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>24360301519328851
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>102
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(102285668137499978)
,p_template_name=>'Button, Alternative 2'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>24360508560328852
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>102
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(102285888182499978)
,p_template_name=>'Button, Alternative 3'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>24360728605328852
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>102
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63535258525630475)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63535536924630480)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>24
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63535834478630480)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBracketedRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>24
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63536139609630480)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBreadcrumbs" #REGION_ATTRIBUTES#>',
'  #BODY#',
'  <div class="uBreadcrumbsBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>24
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63536455552630480)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>',
''))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>24
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63536747775630481)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>',
''))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>24
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63537030433630481)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63537328529630481)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63537633608630481)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer">',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Content Frame Body Container'
,p_theme_id=>24
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63537944397630481)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>24
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63538242092630481)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>24
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63538559528630499)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>24
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63538836694630499)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_theme_id=>24
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63539133988630499)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region - Borderless'
,p_theme_id=>24
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63539440580630500)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    #BODY#',
'</div>'))
,p_page_plug_template_name=>'IRR Region Template'
,p_theme_id=>24
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63539730688630500)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding clearfix uLoginRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uLoginHeading">',
'    <span class="bgArrow"></span>',
'    <div class="appIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="appIcon #REGION_STATIC_ID#" alt=""/>',
'    </div> ',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uLoginBody clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63540048640630500)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uModalRegion uAlertRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Modal Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63540353407630500)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>24
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63540635957630504)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region - Heading Inside'
,p_theme_id=>24
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63540948657630504)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading clearfix">',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>',
''))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>24
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63541248170630504)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>24
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63541542400630504)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion uNoHeading uReportFilter clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    <div class="uReportFilterRow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uSearchIcon" alt="" />',
'    #BODY#',
'    </div>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>24
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63541853220630504)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63542159610630505)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63542438693630505)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63542748160630505)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - Heading Inside'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63543039491630505)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix"  style="height: 400px; overflow:scroll">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Scrollable Content Region'
,p_theme_id=>24
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63543328109630505)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ebaSearchFilterRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'<div class="ebaSearchFilterButtons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'</div>'))
,p_page_plug_template_name=>'Search Filter Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63543651783630505)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>24
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63543951573630506)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region - Heading Inside'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>24
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63544237269630506)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_theme_id=>24
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63544527963630506)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>24
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63544841420630506)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>24
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63545132642630506)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" style="display:none" #REGION_ATTRIBUTES#>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'jQuery Modal Region Template'
,p_theme_id=>24
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102286072216499978)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>102
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24360912639328852
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102286384030499980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bk-top">',
'    <div class="bk-top-r">',
'      <div class="bk-title">#TITLE#</div>',
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    </div>',
'  </div>',
'  <div class="bk-body">#BODY#</div>',
'  <div class="bk-bottom">',
'    <div class="bk-bottom-r">&nbsp;</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>102
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24361224453328854
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102286672249499980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div>#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>102
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24361512672328854
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102286991051499980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>102
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24361831474328854
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102287290269499989)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>102
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24362130692328863
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102287564278499995)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24362404701328869
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102287865520499995)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>102
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24362705943328869
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102288166890499996)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="hide-show-top">',
'    <div class="hide-show-title">#TITLE#<a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_2/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_2/rollup_minus_dgr'
||'ay.gif'');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_2/rollup_plus_dgray.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></div>',
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>102
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24363007313328870
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102288471882499996)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'    <div class="rc-content-main">',
'      <div class="rc-image"><img src="#IMAGE_PREFIX#themes/theme_2/images/report_icon.png" alt="" /></div>',
'      <div class="rc-content">#BODY#</div>',
'    </div>',
'  </div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'List Region with Icon'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24363312305328870
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102288775705499996)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div>',
'    <h3>#TITLE#</h3>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>102
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24363616128328870
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102289062351499996)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>102
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24363902774328870
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102289362132499996)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>102
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24364202555328870
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102289691485499996)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>102
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24364531908328870
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102289991265499997)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>102
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24364831688328871
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102290279547499997)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24365119970328871
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102290571521499998)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24365411944328872
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102290870906499998)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24365711329328872
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102291167056499998)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sidebar-region" id="#REGION_STATIC_ID#">',
'  <h3>#TITLE#</h3>',
'  <div class="box">',
'    <div class="frame"><div class="content">#BODY#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>102
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24366007479328872
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102291471567499999)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sidebar-region-alt" id="#REGION_STATIC_ID#">',
'  <h3>#TITLE#</h3>',
'  <div class="box">',
'    <div class="frame"><div class="content">#BODY#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>102
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24366311990328873
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102291789689499999)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="topbar" style="width:100%;clear:both;" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="topbar-top"><div class="topbar-top-r"></div></div>',
'  <div class="topbar-body"><div class="topbar-body-r"><div class="topbar-content">',
'      <div style="float:left">#BODY#</div>',
'      <div style="float:right"><span style="margin-right:10px;">#CLOSE#</span>#COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#</div>',
'   </div></div></div>',
'  <div class="topbar-bottom"><div class="topbar-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Top Bar'
,p_theme_id=>102
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24366630112328873
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102292073941499999)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>102
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24366914364328873
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(102292382004499999)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>102
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>24367222427328873
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(103318283041314344)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="htmldbLoginTop" summary="" id="#REGION_ID#">',
'<tr>',
'<th class="L"><br /></th>',
'<th class="C">#TITLE#</th>',
'<th class="R"><br /></th>',
'</tr>',
'<tr>',
'<td colspan="3" style="font-size:12px;padding:6px;">#BODY#<img src="#IMAGE_PREFIX#1px_trans.gif" height="2" width="260" alt=""/></td>',
'</tr>',
'<tr class="htmldbLoginBottom">',
'<th class="LF"><br /></th>',
'<th class="CF">#CREATE#</th>',
'<th class="RF"><br /></th>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Login Region'
,p_plug_table_bgcolor=>'#F7F7E7'
,p_theme_id=>102
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#F7F7E7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>' '
,p_reference_id=>25393123464143218
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23446539073255703)
,p_list_template_current=>'<li style="font-weight: bold;"><a style="background: gainsboro;" href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li style="font-weight: bold;"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'New DHTML Tree'
,p_theme_id=>24
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li style="margin-left:25px;font-weight: normal;"><a style="background: gainsboro;" href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li style="margin-left:25px;font-weight: normal;"><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li style="font-weight: bold;"><a style="background: gainsboro;" href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li style="font-weight: bold;"><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li style="margin-left:25px;font-weight: normal;"><a style="background: gainsboro;" href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li style="margin-left:25px;font-weight: normal;"><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35217899338321629)
,p_list_template_current=>'<option htmldb:type="#A01#" id="#A01#" value="#A01#" selected="selected"">#TEXT#</option>'
,p_list_template_noncurrent=>'<option htmldb:type="#A01#" id="#A01#" value="#A01#">#TEXT#</option>'
,p_list_template_name=>'Copy of (Columbus) Object Browser Object Types'
,p_theme_id=>101
,p_theme_class_id=>16
,p_list_template_before_rows=>'<select onchange="gLastTab=false;gSideBar.onchange(true);"  id="obObjectSelect">'
,p_list_template_after_rows=>'</select>'
,p_reference_id=>27299139469539059
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35223803861321634)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="current">',
'    <a class="nosub" href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'</div>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="non-current">',
'    <a class="nosub" href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'</div>',
''))
,p_list_template_name=>'Copy of APEX Standard Tabs'
,p_theme_id=>101
,p_theme_class_id=>0
,p_list_template_before_rows=>'<div id="tabs" class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div>'
,p_before_sub_list=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu pulldown-tabs" style="display:none;">',
''))
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)" title="#TEXT_ESC_SC#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="current">',
'    <a href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'    <img src="#IMAGE_PREFIX#apex/builder/down_dark_12x12.gif" width="12" height="12" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" alt=""/>',
'</div>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="non-current">',
'    <a href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'    <img src="#IMAGE_PREFIX#apex/builder/down_dark_12x12.gif" width="12" height="12" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" alt=""/>',
'</div>',
''))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')" title="#TEXT_ESC_SC#"><span>#TEXT#</span><img class="htmldbMIMG" alt="" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></'
||'li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')" title="#TEXT_ESC_SC#"><span>#TEXT#</span><img class="htmldbMIMG" alt="" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></'
||'li>'
,p_f_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="non-current-first">',
'    <a class="nosub" href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'</div>',
''))
,p_f_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="current-first">',
'    <a class="nosub" href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'</div>',
''))
,p_f_item_template_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="current-first">',
'    <a href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'    <img src="#IMAGE_PREFIX#apex/builder/down_dark_12x12.gif" width="12" height="12" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" alt=""/>',
'</div>',
''))
,p_fi_template_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ITEM_ID#" class="non-current-first">',
'    <a href="#LINK#" title="#TEXT_ESC_SC#">#TEXT#</a>',
'    <img src="#IMAGE_PREFIX#apex/builder/down_dark_12x12.gif" width="12" height="12" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" alt=""/>',
'</div>',
''))
,p_reference_id=>30936338919226551
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63545457444630506)
,p_list_template_current=>'<a href="#LINK#" class="uButtonSmall uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButtonSmall" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_theme_id=>24
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63545751550630511)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>24
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63546028397630512)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>24
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63546356965630512)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>24
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63546652480630512)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>24
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63546948581630512)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_theme_id=>24
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63547251519630513)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>24
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav class="uPageTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63547550461630513)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>24
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#f_spacer.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63547846073630513)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>24
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63548133541630513)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>24
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63548455630630513)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>24
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63548760058630513)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_theme_id=>24
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63549033247630513)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>24
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63549351870630514)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>24
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63549659513630514)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>24
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63549944938630514)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>24
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63550234873630514)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_theme_id=>24
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102292660904499999)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-gray" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_theme_id=>102
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>24367501327328873
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102292984721500001)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>102
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_reference_id=>24367825144328875
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102293270564500002)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>102
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_reference_id=>24368110987328876
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102293589753500005)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>102
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>24368430176328879
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102293865261500005)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>102
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>24368705684328879
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102294181096500005)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>102
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
,p_reference_id=>24369021519328879
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102294491332500007)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>102
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_reference_id=>24369331755328881
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102294768206500007)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>102
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="tabbed-navigation-list">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>24369608629328881
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102295062173500007)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>102
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>24369902596328881
);
end;
/
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102295364257500010)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>102
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
,p_reference_id=>24370204680328884
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102295670570500010)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>102
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="vertical-sidebar-list">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>24370510993328884
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102295990524500010)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>102
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>24370830947328884
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102296284253500010)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>102
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>24371124676328884
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102296590819500014)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>102
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
,p_reference_id=>24371431242328888
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(102296869517500014)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_theme_id=>102
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="horizontal-progres-list">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
,p_reference_id=>24371709940328888
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63550540747630520)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63550540747630520)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63551045584630527)
,p_row_template_name=>'Comment Bubbles'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63551328801630530)
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>24
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63551328801630530)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63551851651630530)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>24
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63551851651630530)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63552329903630534)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>24
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63552329903630534)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63552845485630534)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63553150984630534)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>24
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63553150984630534)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63553639405630535)
,p_row_template_name=>'Standard - Alternative'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>24
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63553639405630535)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63554130172630536)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>24
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63554460112630536)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>24
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63554758760630537)
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>24
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102297187203500016)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>102
,p_theme_class_id=>1
,p_reference_id=>24372027626328890
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(102297187203500016)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102297663105500022)
,p_row_template_name=>'Fixed Column Headers'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template2=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#',
'<tr>',
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>102
,p_theme_class_id=>7
,p_reference_id=>24372503528328896
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(102297663105500022)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102298187278500022)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>102
,p_theme_class_id=>2
,p_reference_id=>24373027701328896
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(102298187278500022)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102298679697500024)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t1OneColumnUnorderedList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>102
,p_theme_class_id=>3
,p_reference_id=>24373520120328898
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(102298679697500024)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102299168246500026)
,p_row_template_name=>'Search Results (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified) -->',
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="search-results-report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul> ',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>102
,p_theme_class_id=>1
,p_reference_id=>24374008669328900
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102299472154500026)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>102
,p_theme_class_id=>4
,p_reference_id=>24374312577328900
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(102299472154500026)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102299981694500031)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_row_template1=>'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>',
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>102
,p_theme_class_id=>5
,p_reference_id=>24374822117328905
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(102299981694500031)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102300464951500031)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#1#</div>',
'  <div class="report-col-val">#2#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>7
,p_reference_id=>24375305374328905
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(102300783513500031)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>',
'  <div class="report-col-val">#COLUMN_VALUE#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>6
,p_reference_id=>24375623936328905
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63555043920630537)
,p_template_name=>'Hidden label, read by screen reader'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>24
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63555155236630540)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63555258814630541)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63555330617630541)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63555460147630541)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired">'
,p_template_body2=>' <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63555550245630541)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(102301062145500031)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="no-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>102
,p_theme_class_id=>13
,p_reference_id=>24375902568328905
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(102301189061500031)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>102
,p_theme_class_id=>3
,p_reference_id=>24376029484328905
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(102301264964500031)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>102
,p_theme_class_id=>1
,p_reference_id=>24376105387328905
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(102301367672500031)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_2/images/required.gif" alt="#VALUE_REQUIRED#" tabindex="999" /><span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>102
,p_theme_class_id=>4
,p_reference_id=>24376208095328905
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(102301467235500031)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_2/images/required.gif" alt="#VALUE_REQUIRED#" tabindex="999" /><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSI'
||'ON.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>102
,p_theme_class_id=>2
,p_reference_id=>24376307658328905
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(63555656732630541)
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> '
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(63555746854630546)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>24
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(102301567141500031)
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<div id="breadcrumbs"><ul class="breadcrumb-list">'
,p_current_page_option=>'<li class="current">#NAME#</li>'
,p_non_current_page_option=>'<li class="noncurrent"><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'<li class="separator">&nbsp;</li>'
,p_after_last=>'</ul></div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>102
,p_theme_class_id=>1
,p_reference_id=>24376407564328905
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(102301668463500031)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>102
,p_theme_class_id=>2
,p_reference_id=>24376508886328905
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(63556448246630551)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(102302377238500035)
,p_popup_icon=>'#IMAGE_PREFIX#htmldb/icons/view_small.gif'
,p_popup_icon_attr=>'width="18" height="18" alt="Popup Lov"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css">',
'',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="margin:0;"'
,p_before_field_text=>'<div class="popup-head">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="popup-body">'
,p_theme_id=>102
,p_theme_class_id=>1
,p_reference_id=>24377217661328909
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(63555848894630546)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>24
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(63556056263630548)
,p_cal_template_name=>'Calendar - Alternative'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>24
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(63556236285630548)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th class="day-of-week">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="small-calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_day_title_format=>'<div class="day-title">#DD#</div>'
,p_day_open_format=>'<td class="day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="weekend-day-title">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="weekend-day">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="non-day-title">#DD#</div>'
,p_nonday_open_format=>'<td class="non-day" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>24
,p_theme_class_id=>3
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(102301760266500031)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#WTITLE#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_cust_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_cust_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_cust_day_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">'
,p_cust_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_cust_nonday_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_cust_weekend_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th class="Hour">'
,p_cust_time_close_format=>'<br /></th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_cust_wk_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_cust_wk_month_close_format=>'</table></td></tr></table>'
,p_cust_wk_day_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">'
,p_cust_wk_day_close_format=>'<br /></td>'
,p_cust_wk_today_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">'
,p_cust_wk_weekend_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">'
,p_cust_wk_weekend_close_format=>'<br /></td>'
,p_cust_month_day_height_pix=>'75'
,p_cust_week_day_width_per=>'14'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>102
,p_theme_class_id=>1
,p_reference_id=>24376600689328905
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(102301981005500033)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="4" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="4" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#WTITLE#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_cust_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_cust_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_cust_day_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top" height="100" height="100">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">'
,p_cust_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_cust_nonday_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_cust_weekend_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th class="Hour">'
,p_cust_time_close_format=>'<br /></th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_cust_wk_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">'
,p_cust_wk_month_close_format=>'</table></td></tr></table>'
,p_cust_wk_day_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">'
,p_cust_wk_day_close_format=>'<br /></td>'
,p_cust_wk_today_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">'
,p_cust_wk_weekend_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">'
,p_cust_wk_weekend_close_format=>'<br /></td>'
,p_cust_month_day_height_pix=>'100'
,p_cust_week_day_width_pix=>'100'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>102
,p_theme_class_id=>2
,p_reference_id=>24376821428328907
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(102302162567500033)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th class="t1DayOfWeek">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1SmallCalendarHolder"> ',
' <tr>',
'   <td class="t1MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="1" summary="" class="t1SmallCalendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_day_title_format=>'<div class="t1DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t1Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t1Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t1WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t1WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t1NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t1NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1SmallWeekCalendarHolder">',
'<tr>',
'<td class="t1MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t1DayOfWeek">#IDAY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="1" summary="0" class="t1SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t1Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t1NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t1Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t1DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1SmallDayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="1" summary="0" class="t1SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="t1Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t1Today">'
,p_daily_time_open_format=>'<th class="t1Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>102
,p_theme_class_id=>3
,p_reference_id=>1933901522678208
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(63556657298630554)
,p_theme_id=>24
,p_theme_name=>'Cloudy'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(63531432759630466)
,p_error_template=>wwv_flow_api.id(63529655917630460)
,p_printer_friendly_template=>wwv_flow_api.id(63532344010630467)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_login_template=>wwv_flow_api.id(63528830251630401)
,p_default_button_template=>wwv_flow_api.id(63533850818630469)
,p_default_region_template=>wwv_flow_api.id(63542159610630505)
,p_default_chart_template=>wwv_flow_api.id(63537328529630481)
,p_default_form_template=>wwv_flow_api.id(63538242092630481)
,p_default_reportr_template=>wwv_flow_api.id(63542159610630505)
,p_default_tabform_template=>wwv_flow_api.id(63542159610630505)
,p_default_wizard_template=>wwv_flow_api.id(63544527963630506)
,p_default_menur_template=>wwv_flow_api.id(63536139609630480)
,p_default_listr_template=>wwv_flow_api.id(63537030433630481)
,p_default_irr_template=>wwv_flow_api.id(63539440580630500)
,p_default_report_template=>wwv_flow_api.id(63553150984630534)
,p_default_label_template=>wwv_flow_api.id(63555258814630541)
,p_default_menu_template=>wwv_flow_api.id(63555656732630541)
,p_default_calendar_template=>wwv_flow_api.id(63555848894630546)
,p_default_list_template=>wwv_flow_api.id(63549659513630514)
,p_default_option_label=>wwv_flow_api.id(63555330617630541)
,p_default_required_label=>wwv_flow_api.id(63555550245630541)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(24),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(102302575266500037)
,p_theme_id=>102
,p_theme_name=>'eSynerga Builder Blue'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(102281688490499968)
,p_error_template=>wwv_flow_api.id(102281981582499968)
,p_printer_friendly_template=>wwv_flow_api.id(102283769639499970)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(102280876383499960)
,p_default_button_template=>wwv_flow_api.id(102285260408499974)
,p_default_region_template=>wwv_flow_api.id(102290279547499997)
,p_default_chart_template=>wwv_flow_api.id(102287564278499995)
,p_default_form_template=>wwv_flow_api.id(102287865520499995)
,p_default_reportr_template=>wwv_flow_api.id(102290279547499997)
,p_default_tabform_template=>wwv_flow_api.id(102290279547499997)
,p_default_wizard_template=>wwv_flow_api.id(102292073941499999)
,p_default_menur_template=>wwv_flow_api.id(102286672249499980)
,p_default_listr_template=>wwv_flow_api.id(102288471882499996)
,p_default_irr_template=>wwv_flow_api.id(102289362132499996)
,p_default_report_template=>wwv_flow_api.id(102299472154500026)
,p_default_label_template=>wwv_flow_api.id(102301264964500031)
,p_default_menu_template=>wwv_flow_api.id(102301567141500031)
,p_default_calendar_template=>wwv_flow_api.id(102301760266500031)
,p_default_list_template=>wwv_flow_api.id(102295990524500010)
,p_default_option_label=>wwv_flow_api.id(102301264964500031)
,p_default_required_label=>wwv_flow_api.id(102301467235500031)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(102),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(16029527310987741)
,p_translation_flow_id=>101
,p_translation_flow_language_cd=>'pl'
);
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(26857980686617551)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(11429928121845294)
,p_name=>'express'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/item_type/com_af_plugin_jq_fileupload
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(150164544068776339)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.AF.PLUGIN.JQ.FILEUPLOAD'
,p_display_name=>'Multiple File Upload'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.AF.PLUGIN.JQ.FILEUPLOAD'),'')
,p_render_function=>'plugin_jquery_file_upload.plugin_render'
,p_ajax_function=>'plugin_jquery_file_upload.plugin_ajax_handler'
,p_standard_attributes=>'VISIBLE:ELEMENT:WIDTH:HEIGHT:ELEMENT_OPTION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	This plugin has been developed by Matt Nolan (APEX Freelancer). Please visit the online <a href="http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:FILE_UPLOAD::DOCUMENTATION" target="_blank">documentation</a> for a detailed help/instruction g'
||'uide and license information.</p>',
'<p>',
'	<strong>Note: </strong>this is a commercial APEX plugin and requires that a suitable license be purchased.</p>',
'<p>',
'	<strong>Change Log:</strong></p>',
'<ul>',
'	<li>',
'		<strong>v2.1.0 - 06-Jan-2015</strong>',
'		<ul>',
'			<li>',
'				Improvement: Added the option to force upload via the iframe technique for uploading large files in a single HTTP post.</li>',
'			<li>',
'				Improvement: Added chunked file upload support to bypass increasing maxPostSize on the web server</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v2.0.2 - 22-Dec-2015</strong>',
'		<ul>',
'			<li>',
'				Improvement: added the ability to strip files from the &quot;files&quot; array which is passed as a parameter within the &quot;Multiple File Upload - Before Starting Upload of All Files&quot; event.</li>',
'			<li>',
'				Bug Fix: incorrect event naming for &quot;Multiple File Upload - Before Start of File Upload&quot; and &quot;Multiple File Upload - Before Starting Upload of All Files&quot;.</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v2.0.1 - 17-Feb-2014</strong>',
'		<ul>',
'			<li>',
'				Improvement: Removed the package compilation dependency on UTL_FILE. You still need to grant execute privileges on SYS.UTL_FILE if you want to upload files to the file system. This change just allows you to avoid having to grant the privilege if '
||'you don&#39;t use the write to File System feature in the plugin.</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v2.0.0 - 10-Feb-2014</strong>',
'		<ul>',
'			<li>',
'				Improvement: Added support for saving files to an APEX Collection</li>',
'			<li>',
'				Improvement: Added support for saving files to BFILE column and File System</li>',
'			<li>',
'				Improvement: Changed the event labels so they are easier to recognize</li>',
'			<li>',
'				Improvement: Added 2 new events to fire when all files have finished uploading</li>',
'			<li>',
'				Improvement: Added the option to auto close the dialog when all files have been uploaded</li>',
'			<li>',
'				Improvement: Added the option to show/hide previous uploads in the dialog</li>',
'			<li>',
'				Improvement: Changed foreign key column/item to support up to 4 columns/items</li>',
'			<li>',
'				Bug Fix: File Size column value was always null</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v1.10 - 19-Jun-2012</strong>',
'		<ul>',
'			<li>',
'				Bug Fix: this.data not set correctly for events</li>',
'			<li>',
'				Improvement: Added a &quot;Before Start&quot; event thaat fires before the first file is uploaded</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v1.09 - 13-Apr-2011</strong>',
'		<ul>',
'			<li>',
'				Bug Fix: APEX 4.1.1 page protection issue in non HTML5 browsers</li>',
'			<li>',
'				Bug Fix: APEX 4.1.1 download link blank page issue</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v1.08 - 21-Nov-2011</strong>',
'		<ul>',
'			<li>',
'				APEX 4.1 IE bug fix in iframe response</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v1.07 - 03-Aug-2011</strong>',
'		<ul>',
'			<li>',
'				Bug Fix release for translation issues</li>',
'		</ul>',
'	</li>',
'</ul>',
'<ul>',
'	<li>',
'		<strong>v1.06 - 29-Jul-2011</strong>',
'		<ul>',
'			<li>',
'				translation support added</li>',
'			<li>',
'				substitution strings supported in plugin attributes</li>',
'		</ul>',
'	</li>',
'</ul>',
'<div>',
'	<a href="http://www.theapexfreelancer.com/" target="_blank"><img alt="APEX Freelancer" src="http://www.theapexfreelancer.com/c/af-logo.png" style="width: 125px; height: 110px;" /></a></div>',
''))
,p_version_identifier=>'2.1.0'
,p_about_url=>'http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:FILE_UPLOAD'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(162915206275877928)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Upload Piece Size'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'1536000'
,p_display_length=>10
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Please enter a size in number of bytes which will be used to transfer the base64 encoded files in pieces/chunks e.g. 1536000. The actual piece size during transmission may be slightly larger than your setting due to base64 encoding. For files that'
||' are uploaded via HTML5 File API (enabled by default for browsers which support this) and whose size exceed this "Upload Piece Size" setting they will be uploaded in pieces i.e. multiple AJAX calls and stored in a temporary collection until fully upl'
||'oaded and stored in your choice of destination.</p>',
'<p>Piece by piece uploads for each file have been implemented to support large file sizes and avoid the need to increase the web server''s maxPostSize limit. The larger the chunk size the faster the file will be uploaded and less stress is placed on t'
||'he DB since each chunk must be appended to the previous. We recommend that you set the chunkSize to a value (several hundred KB) below your current maxPostSize setting. The default on most web servers is 2MB.</p>',
'<ul>',
'<li>1MB = 1048576</li>',
'<li>1.5MB = 1536000 (Our recommendation)</li>',
'<li>2MB = 2097152</li>',
'<li>etc.</li>',
'</ul>',
'<p><strong>Note:</strong> this setting is ignored when the "Upload via iFrame" option is selected, since the iframe technique uses a non-HTML5 traditional file upload and uploads the entire file in one form POST. We would suggest using this iframe te'
||'chnique for regular file uploads that are greater than 50MB</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151458142868394192)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Table/Collection Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>32
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>If you have selected the "Save To" destination as Table or File System then please enter the name of the table where the file information will be stored. The file will be uploaded and stored in a BLOB for the Table option. If you have chosen File '
||'System then the file will be uploaded to the file system directory and stored in a BFILE reference column.</p>',
'<p>',
'<strong>Note:</strong> It is assumed that this will be a specific file table as multiple files can be uploaded. The foreign key column(s) attribute is used to define the link between this table and a parent table which the files are associated with.<'
||'/p>',
'<p>If you have selected Collection in the "Save To" option, the files will be uploaded to the collection name provided here. The plugin will check for the existence of this collection and create it if it does not exist. You will be responsible for pr'
||'ocessing the collection (and clearing) which can be done at page submission. You can query the collection as follows:</p>',
'<pre>',
'SELECT',
'  dbms_lob.getlength(blob001) PLUGIN_CONTENTS,',
'  c001 FILE_NAME,',
'  c002 MIME_TYPE,',
'  n001 FILE_SIZE',
'FROM',
'  APEX_COLLECTIONS ',
'WHERE ',
'  COLLECTION_NAME = ''&COLLECTION_NAME''',
'</pre>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151458654988397686)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Filename Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>32
,p_max_length=>32
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TABLE,FILE'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Specify the name of the column where the filename of the uploaded file should be stored at. The stored filename is also used by the browser in the "Save As" dialog when the file gets downloaded.',
'<br /><br />',
'It''s not necessary that the column also exists as page item on the current page.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151459128108399369)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Mime Type Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>32
,p_max_length=>32
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TABLE,FILE'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Specify the name of the column where the mime type of the uploaded file should be stored at. If specified, the stored mime type is also used by the browser to identify which application should be used to display the content of the BLOB when the file '
||'gets downloaded.',
'<br /><br />',
'It''s not necessary that the column also exists as page item on the current page.',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151459633649400974)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'File Size Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>32
,p_max_length=>32
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TABLE,FILE'
,p_help_text=>'Specify the name of the column where the file size will be stored.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151460153734406762)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'BLOB/BFILE Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>32
,p_max_length=>32
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TABLE,FILE'
,p_help_text=>'<p>Enter the name of the column where the actual uploaded file will be stored. If you have chosen TABLE as the "Save To" destination then this column must be a BLOB data type, whereas if you selected "File System" then this column must be a BFILE dat'
||'a type.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151460659275408389)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Primary Key Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>32
,p_max_length=>32
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TABLE,FILE'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Enter the name of the primary key column for the file record. The primary key is used as a locator for downloading the file once uploaded. It is expected that the primary key value is generated by a trigger on the table either populated by an increme'
||'nting sequence or using SYS_GUID().',
'<br /><br />',
'<strong>Note:</strong> only one primary key column is currently supported due to the limited number of custom attributes available in APEX 4.0. However this may change in future releases of the plugin.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151461134126410567)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Foreign Key Column(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>32
,p_max_length=>200
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TABLE,FILE'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This column is optional. Leave it blank if you intend to just upload files that have no association with any tables/records in your application. ',
'</p>',
'<p>',
'Enter the name of the foreign key column(s) for the file record. If you are using more than one foreign key column then please separate the column names using a comma "," and ensure that they appear in the same order as the "Foreign Key Item(s)" plug'
||'in setting. A maximum of 5 columns can be entered.',
'</p>',
'<p>The foreign key is used to associate the file record with a parent record e.g. employee_id. It is expected that the foreign key value will be sourced from an item on the page or available in session state.',
'</p>',
'<p>',
'<strong>Note:</strong> Only 5 foreign key column are supported, if you require support for more foreign key items you will need to do this within a Database Trigger.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(143203209013554714)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Foreign Key Page Item(s)'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(151461134126410567)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This setting is dependent upon the foreign key column(s) attribute having a value. Leave it blank if you intend to just upload files that have no association with any tables/records in your application. ',
'</p>',
'<p>',
'Enter the name of the page item(s) or application item set in session state that will be referenced/used for obtaining the foreign key value(s) that will form part of the insert statement for the uploaded file record(s). If you are using more than on'
||'e foreign key column then please separate the column names using a comma "," and ensure that they appear in the same order as the "Foreign Key Column(s)" plugin setting',
'</p>',
'<p>',
'<strong>Note:</strong> Only 5 foreign key columns are supported, if you require support for more foreign key items you will need to do this within a Database Trigger.',
'</p>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151462160099418107)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'(HTML5 Only) File Size Limit (KB)'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'1024'
,p_display_length=>32
,p_max_length=>32
,p_is_translatable=>false
,p_help_text=>'<p><strong>Note:</strong> this attribute is only enforced in browsers that support the HTML5 file capability. The value required is in Kilobytes (KB).</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(151614837111312637)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'(HTML5 Only) Allowed File Extensions'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>32
,p_max_length=>500
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p><strong>Note:</strong> this attribute is only enforced in browsers that support the HTML5 file capability. Do NOT include the dot "." when defining the file extension(s).',
'<br /><br />',
'Enter one or more file extensions separated by a comma',
'<br /><br />',
'e.g. Restrict uploaded files to only images',
'<br /><br />',
'png,jpg,jepg,gif',
'<br /><br />',
'Leaving this attribute blank will mean that all file types are allowed.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(141532100014400456)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>1
,p_prompt=>'Save To'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TABLE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Choose the destination of where the file will be uploaded to:</p>',
'<ul style="margin-left:25px;">',
'<li><b>TABLE</b> - the file will be uploaded to a database table</li>',
'<li><b>COLLECTION</b> - the file will be uploaded to a collection of your choice using the table/collection name attribute</li>',
'<li><b>FILE SYSTEM</b> - the file will be uploaded to a named directory which your application parsing schema has read/write access to</li>',
'</ul>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(141536603477401478)
,p_plugin_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_display_sequence=>10
,p_display_value=>'Table'
,p_return_value=>'TABLE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(141540906940402493)
,p_plugin_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_display_sequence=>20
,p_display_value=>'Collection'
,p_return_value=>'COLLECTION'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(141545210750403538)
,p_plugin_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_display_sequence=>30
,p_display_value=>'File System'
,p_return_value=>'FILE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(141600298545418934)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>85
,p_prompt=>'Show Previously Uploaded FIles'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(151461134126410567)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>a Yes/No option to show a maximum of 25 previously uploaded files within the file upload dialog that are located using the foreign key values.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(142366804590425657)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>3
,p_prompt=>'Overwrite Existing Files'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'FILE'
,p_help_text=>'<p>Choose the action to perform when uploading files with the same name. If you choose not to overwrite files with the same name the primary key value will be appended to the filename so that it has a unique reference.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(162893313847851730)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Options:</p>',
'<ul>',
'<li><strong>Close Dialog on Upload Completion<p> - check this option to close the uploaded files dialog when all files have been successfully uploaded. <strong>Note: </strong> if an error occurs during upload for one or more of the files the dialog w'
||'ill not be closed.</li>',
'<li><strong>Upload via iFrame<p> - check this option upload files via the iframe upload technique. With this option you can only upload 1 file at a time. This is for situations where you are uploading large files and do not want to increase the maxPo'
||'stSize on your webserver which the default AJAX method uses. The downside to this approach is that it does not use the HTML5 File API functionality therefore you cannot track the progress of the file upload and you cannot select multiple files.</li>',
'</ul>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(162898220773853794)
,p_plugin_attribute_id=>wwv_flow_api.id(162893313847851730)
,p_display_sequence=>10
,p_display_value=>'Close Dialog on Upload Completion'
,p_return_value=>'CLOSE_DIALOG'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(162902526661855437)
,p_plugin_attribute_id=>wwv_flow_api.id(162893313847851730)
,p_display_sequence=>20
,p_display_value=>'Upload via iFrame (for large file support)'
,p_return_value=>'FORCE_IFRAME_UPLOAD'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(141776227054635389)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>2
,p_prompt=>'Directory Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(141532100014400456)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'FILE'
,p_help_text=>'<p>this attribute applies only when the FILE SYSTEM is selected for the "Save To" option. Please provide the name of a directory which your application parsing schema has read/write access to. See the <a href="http://docs.oracle.com/cd/E11882_01/serv'
||'er.112/e41084/statements_5007.htm#SQLRF01207" target="_blank">Oracle Documentation</a> for more information.</p>'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(168947353620268439)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'beforestart'
,p_display_name=>'Multiple File Upload - Before Starting Upload of All Files'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(151572634543530646)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'oncancel'
,p_display_name=>'Multiple File Upload - After File Upload Cancelled'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(151573244933533581)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'oncomplete'
,p_display_name=>'Multiple File Upload - After File Upload Completed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(141639799415457092)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'oncompleteall'
,p_display_name=>'Multiple File Upload - After All Files Uploaded'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(142480507668823980)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'onerror'
,p_display_name=>'Multiple File Upload - After File Upload Error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(142563100068973186)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'onerrorall'
,p_display_name=>'Multiple File Upload - After All Files Uploaded with 1 or More Failures'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(151572359693528365)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'onprogress'
,p_display_name=>'Multiple File Upload - File Upload Progress'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(151572938699531786)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_name=>'onsubmit'
,p_display_name=>'Multiple File Upload - Before Start of File Upload'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000050000002308030000006B4430FC0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000069504C5445F1F1F2F7F7F7EEEEEFEDEDEDF0F1F1F8F8F9E8E8E9C6';
wwv_flow_api.g_varchar2_table(2) := 'C7C7E7E7E7D5D5D6D8D8D9F4F4F4E1E2E2EAEBEBFBFBFCDDDEDEFAFAFAE4E4E5F6F6F6EFEFF0DFDFE0F9F9FAFBFBFBDCDCDDE5E6E6E9E9EAF2F3F3D9D9DAF5F5F5E3E3E4DADBDCE0E0E1ECECECD6D7D7F7F7F8819F1BC7000000504944415478DA24C109';
wwv_flow_api.g_varchar2_table(3) := '1242000040D19F2CD929640971FF439A3FDEA3128368442F22718A87788B9FC8C52C6EA1F888403CC55F946212B1788951B4621585D845276AF1159B5844260E918A44970003008BD90BA0B806EB800000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151587448810933617)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'bg-btn.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396106001D00D500004646464848482F2F2F3131313030304040403636363C3C3C2929292A2A2A3838382525254949493333333737373232322D2D2D2C2C2C3535354C4C4C3D3D3D4E4E4E3F3F3F4444444242423A3A3A4343434A4A4A272727';
wwv_flow_api.g_varchar2_table(2) := '3B3B3B4545454747473434344141413E3E3E4B4B4B2E2E2E2B2B2B3939392626262828284D4D4D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021F90400000000002C0000000006001D00000672C04A6A98AA4C86C7D468C9DC389D8C40201AFD58AF000F609BF55C2E1E8F4683196B42E874C1B22E1444F038E5303F1C329D7CDEC4EF2B140E810A120685061220898A0F0F0D0D8D039104';
wwv_flow_api.g_varchar2_table(4) := '030402969504249A9B1110119D1025A2A3080809A70928AAA5281CAAAE1CB127B3270BB5B30B41003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151588146653934665)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'bg-submit.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396110001000D52500B7B7B720201FCBCBCBF1F1F1707070F9F9F9888989F9F9FAF4F4F4383838888889D6D6D6C6C6C6F7F7F7201F1F1F1F1FFBFBFB373838FDFEFDEBEBEBF6F6F71F2020202020D0CFCFFBFBFCFDFDFDFEFEFEFCFBFBFDFEFE';
wwv_flow_api.g_varchar2_table(2) := '898888A8A8A8F1F1F25454540F0F0F666666FFFFFF999999FFFEFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021F90401000025002C0000000010001000000672C09270482C1249C82449642C9146D0E848443292344AD2825A3D660C064547711199994312842068131893C3A12B7C82EEF8FB88EE1C2500808011097B47120F010E16010115011C7C2418';
wwv_flow_api.g_varchar2_table(4) := '211E9596211B9105219C9D9C05910D9E9E149108A39D08911F03AC1FAFAF037C4E594A4DB74441003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151588844065935824)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'icon-generic.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396110001000D53600DDDDDE383838FBFCFCFBFBFBDCDDDED7D7D7AAAAAAE5E5E5FBFCFB888889202020C0C0C0F4F3F3B6B6B6F3F4F537383888898989888880808020201FDDDDDDF8F7F7E8E7E8E4E4E4DFDFE0DCDDDDE3E3E4DFDFDFADADAD';
wwv_flow_api.g_varchar2_table(2) := 'EAEAEA383738F7F7F8373738ECEDECEFF0F0FCFBFBFCFCFBE0E0E01F1F1FEBEBECDDDCDE707071898889E7E7E8EFEFEFDBDBDBFAFBFAFAFBFB1F2020707070545454D4D4D40F0F0F999999FFFEFE00000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021F90401000036002C0000000010001000000680409B70482C0E6BC8A4127944200683116920A822043561CDB55CBEB2B6DA07024944CC8BCE425501D71CB1B8FC404F31DC0E997EDF283564775A220101202D011E0F840F2C6E2126130592';
wwv_flow_api.g_varchar2_table(4) := '13301C0A0A276E1634339D9D120606342B6E179C9E9FA21A6E1834AEAFB01B6E00190000140004BA00281460615D4B46C3C4C54441003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151589541693936930)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'icon-image.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396110001000D53B00DDDDDEFBFCFC8A8A8AF7F7F7DCDDDEFBFBFBFBFCFB9F9F9F3F3F3F5A5A5AA4A4A4AAAAAAF4F3F33E3F3FF8F8F8F5F5F5F3F4F5DDDDDD3131315A5B5ADFDFDFDFDFE0F8F7F7888888F7F7F85F5E5FB5B5B5EFEFEF898A8A';
wwv_flow_api.g_varchar2_table(2) := '3D3D3DECEDEC939393919191FAFBFA3F3E3F4849490F1010EBEBECFCFCFBF9F9F9EFF0F0838383E7E7E8636363DCDDDDFCFBFBE8E7E8FAFBFBF4F4F4252526DDDCDE5A5A5BE4E4E4E3E3E47F7F7F7474742525250F0F0F999999FFFEFE00000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021F9040100003B002C0000000010001000000684C09D70482C0E75C8A4127934180A8596A910A81A023AA12EB45CBEB23B1D2679501C9416B00E925C9C346724430D1108380A876301B2CFB52837821F038529821B6A1E093313360F0F172B';
wwv_flow_api.g_varchar2_table(4) := '0909256A2E0899193037230D0D222A6A34313838121D12A6A6356A1539B024B0B339146A002C0000110004BE00321160615D4B46C7C8C94441003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151590238674938308)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'icon-media.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396110001000D52A008A8A8ADDDDDEFBFCFC3F3F3FFBFCFBDCDDDE3E3F3F3F3E3FF3F4F5F4F3F3DDDDDDE8E7E8E3E3E4EFF0F0FCFBFBEBEBECFAFBFBDFDFDF5A5A5BEFEFEFECEDECDCDDDDFCFCFB898A8ADFDFE0E4E4E45A5B5AF8F7F7DDDCDE';
wwv_flow_api.g_varchar2_table(2) := 'F7F7F82525260F1010FAFBFAE7E7E85A5A5A747474E0E0E07F7F7F2525250F0F0FFBFBFB999999FFFEFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021F9040100002A002C0000000010001000000680409570482C0E53C8A4127924105028870525A8120429610A94229552D0548994826455A90EB204857E539B730A916CA39209390200B8DCC17C00795A0D238676862313721422121A226422';
wwv_flow_api.g_varchar2_table(4) := '93220F720B03990763069D072172191E26A45EA4A40C721827AC1F63ACAC1172011501010A0105BA011C0A67684BC146C3C4C54441003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151590935008939977)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'icon-zip.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839610F000F00A50000443E3CA4A6A47C7A7CD4D6D45C5A5CECEEEC4C4E4C8C8E8C646664C4C2C4FCFAFC444644E4E2E4FCF6F49C9A9C6C6E6CCCCACC8C8A8C645E5CF4F6F45C56546C66644C4644ECEAEC444244BCBABC848284DCDEDC5C5E5C';
wwv_flow_api.g_varchar2_table(2) := 'F4F2F4544E4C949294C4C6C4FCFEFCE4E6E49C9E9CD4CECC6C6A6C4C4A4C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021F90409060021002C000000000F000F00000677C09070482C0A1B9364C3480C582C0B5367F461300F00C0A2A3015840C58B0780D98A2265EBF003D0640C05215B4324003621884258C098F6';
wwv_flow_api.g_varchar2_table(4) := '4216064C1C00134314186A79211D7E4411001143150E0E0002440C26181F17210859180345200B0012A0590F87450C1A0821150BB4744C42131DB9ADB74C410021F90409060026002C000000000F000F0085443E3CA4A6A4747274D4D6D45C5654ECEEEC';
wwv_flow_api.g_varchar2_table(5) := 'C4C2C48C8A8C4C4A4CE4E2E4B4B2B47C7E7CFCFAFC444644E4DEDC6C6A6CD4D2D49C9694545254ACA6A4DCDEDC5C5E5CF4F6F4CCCACC544E4CECEAEC8486844442447C7A7CDCDADC5C5A5CF4F2F4C4C6C49492944C4E4CE4E6E4B4B6B4848284FCFEFC4C';
wwv_flow_api.g_varchar2_table(6) := '46449C9E9CACAAAC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067A40935078891486C8E4A7E1213192C84CA8010068A04208A2';
wwv_flow_api.g_varchar2_table(7) := '0AD88028976406035880360B8660E34086CAC207C5F42E213D80B929232C6C104827225815001643041B23427C261F270D48070007260C0F8B28001C4809081216130001281B1B1D49200A23225C1B245826241B551C03B1590F5EB8430C240149410021';
wwv_flow_api.g_varchar2_table(8) := 'F90409060010002C000000000F000F0085443E3CA4A2A4747674D4D2D45C5A5CECEAEC4C4E4C949294F4F6F4DCDEDC444644C4C6C48482846C6A6C5C5654545654FCFEFCB4B6B47C7E7CDCDADC646264F4F2F4544E4C9C9E9CFCF6F4E4E6E44C46444442';
wwv_flow_api.g_varchar2_table(9) := '44ACAAAC7C7A7CD4D6D45C5E5CECEEEC949694E4E2E4CCCACC8C8684746E6C545254FCFAFC4C4A4C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(10) := '0000000000000000000677408870380C808848222594141642048D63A34924072800C0B0D17690050B40623D00360704D12C1996049ED38848D8588503210545D4189A1F006A420E2618101E1542150A1A440B151924168A1017005F441C590D1015171B';
wwv_flow_api.g_varchar2_table(11) := '1B13481C5A1B1F5D1B114918A80A000A1213274D230A05834D4317BA10410021F90409060018002C000000000F000F0085443E3CA4A2A4747274D4D2D45452548C8A8CECEAEC4C4A4C7C7E7CDCDEDC5C5E5C949694F4F6F45C5A5C4C4644B4B6B47C7A7C';
wwv_flow_api.g_varchar2_table(12) := 'DCDADC5C5654949294544E4C8C8684E4E6E49C9E9CFCFEFC4442447C7674D4D6D45456548C8E8CF4F2F44C4E4C848284E4E2E46462649C9694FCFAFCBCBABC00000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(13) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000673408C70482C1A8F46C3A2E1907442988085383800009F0CE050C94C85060A0091C0840A57EF70322696B4802F46A3800A230AC2E72327314824';
wwv_flow_api.g_varchar2_table(14) := '437E8044221C041C25431E05138204570B441700104490001D06181E1719191B821C029F19225A190F45130C09201F001908A148420CB5B843410021F90409060019002C000000000F000F0085443E3CA4A2A4747274D4D2D4ECEAEC5C56548C8A8CBCBA';
wwv_flow_api.g_varchar2_table(15) := 'BC4C4A4CDCDEDCF4F6F4949694C4C6C4ACAEAC7C7E7C6C6A6C5452544C4644DCDADCF4F2F45C5E5C949294C4C2C4544E4CE4E6E4FCFEFC9C9E9CB4B6B4848684444244D4D6D4ECEEEC5C5A5C8C8E8CBCBEBC4C4E4CE4E2E4FCFAFC9C9A9CCCCECCB4B2B4';
wwv_flow_api.g_varchar2_table(16) := '8482840000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000673C08C70482C1A8F46C20214298448C7010200187500088BD1F348253224';
wwv_flow_api.g_varchar2_table(17) := '43A7031D0606A512B10270605019C938851996448071A524A002401219130257551F2263000D13431301530D1922121C00214525180B6A422453211F821A1007460C631D14571D1B47092923580E8148420A9CB5B941003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(151591632635941142)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0D0A202A20687474703A2F2F6769746875622E636F6D2F76616C756D732F66696C652D75706C6F616465720D0A202A0D0A202A204D756C7469706C652066696C652075706C6F616420636F6D706F6E656E7420776974682070726F67726573732D';
wwv_flow_api.g_varchar2_table(2) := '6261722C20647261672D616E642D64726F702E0D0A202A20C2A9203230313020416E647265772056616C756D73202820616E647265772861742976616C756D732E636F6D20290D0A202A0D0A202A204C6963656E73656420756E646572204D49542E0D0A';
wwv_flow_api.g_varchar2_table(3) := '202A2F0D0A2F2A2A0D0A202A2044656D6F3A20687474703A2F2F7777772E74686561706578667265656C616E6365722E636F6D2F617065782F663F703D41504558465245454C414E4345523A46494C455F55504C4F41440D0A202A0D0A202A20466F726B';
wwv_flow_api.g_varchar2_table(4) := '65642076657273696F6E206F66207468652061626F7665207363726970742070726F766964656420627920416E647265772056616C756D730D0A202A20C2A92032303136204D617474204E6F6C616E2028206D6174742E6E6F6C616E2861742974686561';
wwv_flow_api.g_varchar2_table(5) := '706578667265656C616E6365722E636F6D20290D0A202A0D0A202A20412076616C696420636F6D6D65726369616C206C6963656E736520697320726571756972656420746F207573652074686973204150455820506C7567696E0D0A202A207669736974';
wwv_flow_api.g_varchar2_table(6) := '20687474703A2F2F7777772E74686561706578667265656C616E6365722E636F6D2F20746F2070757263686173652061206C6963656E73650D0A202A0D0A202A204E6F74653A2070617274206F6620746865206C6963656E73652070726F636565647320';
wwv_flow_api.g_varchar2_table(7) := '77696C6C20626520646F6E6174656420746F20416E647265772056616C756D730D0A202A202020202020206173207468697320706C7567696E20776F756C64206E6F7420657869737420776974686F7574206869732062617365206C6576656C20636F64';
wwv_flow_api.g_varchar2_table(8) := '650D0A202A2F0D0A0D0A2F2F0D0A2F2F2048656C7065722066756E6374696F6E730D0A2F2F0D0A0D0A766172207171203D207171207C7C207B7D3B0D0A0D0A2F2A2A0D0A202A204164647320616C6C206D697373696E672070726F706572746965732066';
wwv_flow_api.g_varchar2_table(9) := '726F6D207365636F6E64206F626A20746F206669727374206F626A0D0A202A2F0D0A71712E657874656E64203D2066756E6374696F6E2866697273742C207365636F6E6429207B0D0A202020666F7220287661722070726F7020696E207365636F6E6429';
wwv_flow_api.g_varchar2_table(10) := '207B0D0A20202020202066697273745B70726F705D203D207365636F6E645B70726F705D3B0D0A2020207D0D0A7D3B0D0A0D0A2F2A2A0D0A202A20536561726368657320666F72206120676976656E20656C656D656E7420696E20746865206172726179';
wwv_flow_api.g_varchar2_table(11) := '2C2072657475726E73202D31206966206974206973206E6F742070726573656E742E0D0A202A2040706172616D207B4E756D6265727D205B66726F6D5D2054686520696E64657820617420776869636820746F20626567696E2074686520736561726368';
wwv_flow_api.g_varchar2_table(12) := '0D0A202A2F0D0A71712E696E6465784F66203D2066756E6374696F6E286172722C20656C742C2066726F6D29207B0D0A202020696620286172722E696E6465784F66292072657475726E206172722E696E6465784F6628656C742C2066726F6D293B0D0A';
wwv_flow_api.g_varchar2_table(13) := '0D0A20202066726F6D203D2066726F6D207C7C20303B0D0A202020766172206C656E203D206172722E6C656E6774683B0D0A0D0A2020206966202866726F6D203C2030292066726F6D202B3D206C656E3B0D0A0D0A202020666F7220283B2066726F6D20';
wwv_flow_api.g_varchar2_table(14) := '3C206C656E3B2066726F6D2B2B29207B0D0A2020202020206966202866726F6D20696E20617272202626206172725B66726F6D5D203D3D3D20656C7429207B0D0A20202020202020202072657475726E2066726F6D3B0D0A2020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(15) := '7D0D0A20202072657475726E202D313B0D0A7D3B0D0A0D0A71712E676574556E697175654964203D202866756E6374696F6E2829207B0D0A202020766172206964203D20303B0D0A20202072657475726E2066756E6374696F6E2829207B0D0A20202020';
wwv_flow_api.g_varchar2_table(16) := '202072657475726E2069642B2B3B0D0A2020207D3B0D0A7D2928293B0D0A0D0A2F2F0D0A2F2F204576656E74730D0A0D0A71712E617474616368203D2066756E6374696F6E28656C656D656E742C20747970652C20666E29207B0D0A2020206966202865';
wwv_flow_api.g_varchar2_table(17) := '6C656D656E742E6164644576656E744C697374656E657229207B0D0A202020202020656C656D656E742E6164644576656E744C697374656E657228747970652C20666E2C2066616C7365293B0D0A2020207D20656C73652069662028656C656D656E742E';
wwv_flow_api.g_varchar2_table(18) := '6174746163684576656E7429207B0D0A202020202020656C656D656E742E6174746163684576656E7428276F6E27202B20747970652C20666E293B0D0A2020207D0D0A7D3B0D0A71712E646574616368203D2066756E6374696F6E28656C656D656E742C';
wwv_flow_api.g_varchar2_table(19) := '20747970652C20666E29207B0D0A20202069662028656C656D656E742E72656D6F76654576656E744C697374656E657229207B0D0A202020202020656C656D656E742E72656D6F76654576656E744C697374656E657228747970652C20666E2C2066616C';
wwv_flow_api.g_varchar2_table(20) := '7365293B0D0A2020207D20656C73652069662028656C656D656E742E6174746163684576656E7429207B0D0A202020202020656C656D656E742E6465746163684576656E7428276F6E27202B20747970652C20666E293B0D0A2020207D0D0A7D3B0D0A0D';
wwv_flow_api.g_varchar2_table(21) := '0A71712E70726576656E7444656661756C74203D2066756E6374696F6E286529207B0D0A20202069662028652E70726576656E7444656661756C7429207B0D0A202020202020652E70726576656E7444656661756C7428293B0D0A2020207D20656C7365';
wwv_flow_api.g_varchar2_table(22) := '207B0D0A202020202020652E72657475726E56616C7565203D2066616C73653B0D0A2020207D0D0A7D3B0D0A0D0A2F2F0D0A2F2F204E6F6465206D616E6970756C6174696F6E730D0A0D0A2F2A2A0D0A202A20496E73657274206E6F6465206120626566';
wwv_flow_api.g_varchar2_table(23) := '6F7265206E6F646520622E0D0A202A2F0D0A71712E696E736572744265666F7265203D2066756E6374696F6E28612C206229207B0D0A202020622E706172656E744E6F64652E696E736572744265666F726528612C2062293B0D0A7D3B0D0A71712E7265';
wwv_flow_api.g_varchar2_table(24) := '6D6F7665203D2066756E6374696F6E28656C656D656E7429207B0D0A202020656C656D656E742E706172656E744E6F64652E72656D6F76654368696C6428656C656D656E74293B0D0A7D3B0D0A0D0A71712E636F6E7461696E73203D2066756E6374696F';
wwv_flow_api.g_varchar2_table(25) := '6E28706172656E742C2064657363656E64616E7429207B0D0A2020202F2F20636F6D70617265706F736974696F6E2072657475726E732066616C736520696E207468697320636173650D0A20202069662028706172656E74203D3D2064657363656E6461';
wwv_flow_api.g_varchar2_table(26) := '6E74292072657475726E20747275653B0D0A0D0A20202069662028706172656E742E636F6E7461696E7329207B0D0A20202020202072657475726E20706172656E742E636F6E7461696E732864657363656E64616E74293B0D0A2020207D20656C736520';
wwv_flow_api.g_varchar2_table(27) := '7B0D0A20202020202072657475726E2021212864657363656E64616E742E636F6D70617265446F63756D656E74506F736974696F6E28706172656E742920262038293B0D0A2020207D0D0A7D3B0D0A0D0A2F2A2A0D0A202A204372656174657320616E64';
wwv_flow_api.g_varchar2_table(28) := '2072657475726E7320656C656D656E742066726F6D2068746D6C20737472696E670D0A202A205573657320696E6E657248544D4C20746F2063726561746520616E20656C656D656E740D0A202A2F0D0A71712E746F456C656D656E74203D202866756E63';
wwv_flow_api.g_varchar2_table(29) := '74696F6E2829207B0D0A20202076617220646976203D20646F63756D656E742E637265617465456C656D656E74282764697627293B0D0A20202072657475726E2066756E6374696F6E2868746D6C29207B0D0A2020202020206469762E696E6E65724854';
wwv_flow_api.g_varchar2_table(30) := '4D4C203D2068746D6C3B0D0A20202020202076617220656C656D656E74203D206469762E66697273744368696C643B0D0A2020202020206469762E72656D6F76654368696C6428656C656D656E74293B0D0A20202020202072657475726E20656C656D65';
wwv_flow_api.g_varchar2_table(31) := '6E743B0D0A2020207D3B0D0A7D2928293B0D0A0D0A2F2F0D0A2F2F204E6F64652070726F7065727469657320616E6420617474726962757465730D0A0D0A2F2A2A0D0A202A2053657473207374796C657320666F7220616E20656C656D656E742E0D0A20';
wwv_flow_api.g_varchar2_table(32) := '2A204669786573206F70616369747920696E204945362D382E0D0A202A2F0D0A71712E637373203D2066756E6374696F6E28656C656D656E742C207374796C657329207B0D0A202020696620287374796C65732E6F70616369747920213D206E756C6C29';
wwv_flow_api.g_varchar2_table(33) := '207B0D0A20202020202069662028747970656F6620656C656D656E742E7374796C652E6F70616369747920213D2027737472696E672720262620747970656F6628656C656D656E742E66696C746572732920213D2027756E646566696E65642729207B0D';
wwv_flow_api.g_varchar2_table(34) := '0A2020202020202020207374796C65732E66696C746572203D2027616C706861286F7061636974793D27202B204D6174682E726F756E6428313030202A207374796C65732E6F70616369747929202B202729273B0D0A2020202020207D0D0A2020207D0D';
wwv_flow_api.g_varchar2_table(35) := '0A20202071712E657874656E6428656C656D656E742E7374796C652C207374796C6573293B0D0A7D3B0D0A71712E686173436C617373203D2066756E6374696F6E28656C656D656E742C206E616D6529207B0D0A202020766172207265203D206E657720';
wwv_flow_api.g_varchar2_table(36) := '5265674578702827285E7C202927202B206E616D65202B202728207C242927293B0D0A20202072657475726E2072652E7465737428656C656D656E742E636C6173734E616D65293B0D0A7D3B0D0A71712E616464436C617373203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(37) := '28656C656D656E742C206E616D6529207B0D0A202020696620282171712E686173436C61737328656C656D656E742C206E616D652929207B0D0A202020202020656C656D656E742E636C6173734E616D65202B3D20272027202B206E616D653B0D0A2020';
wwv_flow_api.g_varchar2_table(38) := '207D0D0A7D3B0D0A71712E72656D6F7665436C617373203D2066756E6374696F6E28656C656D656E742C206E616D6529207B0D0A202020766172207265203D206E6577205265674578702827285E7C202927202B206E616D65202B202728207C24292729';
wwv_flow_api.g_varchar2_table(39) := '3B0D0A202020656C656D656E742E636C6173734E616D65203D20656C656D656E742E636C6173734E616D652E7265706C6163652872652C20272027292E7265706C616365282F5E5C732B7C5C732B242F672C202222293B0D0A7D3B0D0A71712E73657454';
wwv_flow_api.g_varchar2_table(40) := '657874203D2066756E6374696F6E28656C656D656E742C207465787429207B0D0A202020656C656D656E742E696E6E657254657874203D20746578743B0D0A202020656C656D656E742E74657874436F6E74656E74203D20746578743B0D0A7D3B0D0A0D';
wwv_flow_api.g_varchar2_table(41) := '0A2F2F0D0A2F2F2053656C656374696E6720656C656D656E74730D0A0D0A71712E6368696C6472656E203D2066756E6374696F6E28656C656D656E7429207B0D0A202020766172206368696C6472656E203D205B5D2C0D0A2020202020206368696C6420';
wwv_flow_api.g_varchar2_table(42) := '3D20656C656D656E742E66697273744368696C643B0D0A0D0A2020207768696C6520286368696C6429207B0D0A202020202020696620286368696C642E6E6F646554797065203D3D203129207B0D0A2020202020202020206368696C6472656E2E707573';
wwv_flow_api.g_varchar2_table(43) := '68286368696C64293B0D0A2020202020207D0D0A2020202020206368696C64203D206368696C642E6E6578745369626C696E673B0D0A2020207D0D0A0D0A20202072657475726E206368696C6472656E3B0D0A7D3B0D0A0D0A71712E6765744279436C61';
wwv_flow_api.g_varchar2_table(44) := '7373203D2066756E6374696F6E28656C656D656E742C20636C6173734E616D6529207B0D0A20202069662028656C656D656E742E717565727953656C6563746F72416C6C29207B0D0A20202020202072657475726E20656C656D656E742E717565727953';
wwv_flow_api.g_varchar2_table(45) := '656C6563746F72416C6C28272E27202B20636C6173734E616D65293B0D0A2020207D0D0A0D0A20202076617220726573756C74203D205B5D3B0D0A2020207661722063616E64696461746573203D20656C656D656E742E676574456C656D656E74734279';
wwv_flow_api.g_varchar2_table(46) := '5461674E616D6528222A22293B0D0A202020766172206C656E203D2063616E646964617465732E6C656E6774683B0D0A0D0A202020666F7220287661722069203D20303B2069203C206C656E3B20692B2B29207B0D0A2020202020206966202871712E68';
wwv_flow_api.g_varchar2_table(47) := '6173436C6173732863616E646964617465735B695D2C20636C6173734E616D652929207B0D0A202020202020202020726573756C742E707573682863616E646964617465735B695D293B0D0A2020202020207D0D0A2020207D0D0A20202072657475726E';
wwv_flow_api.g_varchar2_table(48) := '20726573756C743B0D0A7D3B0D0A0D0A2F2A2A0D0A202A206F626A3275726C28292074616B65732061206A736F6E2D6F626A65637420617320617267756D656E7420616E642067656E6572617465730D0A202A2061207175657279737472696E672E2070';
wwv_flow_api.g_varchar2_table(49) := '7265747479206D756368206C696B65206A51756572792E706172616D28290D0A202A0D0A202A20686F7720746F207573653A0D0A202A0D0A202A202020206071712E6F626A3275726C287B613A2762272C633A2764277D2C27687474703A2F2F616E792E';
wwv_flow_api.g_varchar2_table(50) := '75726C2F75706C6F61643F6F74686572506172616D3D76616C756527293B600D0A202A0D0A202A2077696C6C20726573756C7420696E3A0D0A202A0D0A202A2020202060687474703A2F2F616E792E75726C2F75706C6F61643F6F74686572506172616D';
wwv_flow_api.g_varchar2_table(51) := '3D76616C756526613D6226633D64600D0A202A0D0A202A2040706172616D20204F626A656374204A534F4E2D4F626A6563740D0A202A2040706172616D2020537472696E672063757272656E74207175657279737472696E672D706172740D0A202A2040';
wwv_flow_api.g_varchar2_table(52) := '72657475726E20537472696E6720656E636F646564207175657279737472696E670D0A202A2F0D0A71712E6F626A3275726C203D2066756E6374696F6E286F626A2C2074656D702C20707265666978446F6E6529207B0D0A202020766172207572697374';
wwv_flow_api.g_varchar2_table(53) := '72696E6773203D205B5D2C0D0A202020202020707265666978203D202726272C0D0A202020202020616464203D2066756E6374696F6E286E6578744F626A2C206929207B0D0A202020202020202020766172206E65787454656D70203D2074656D70203F';
wwv_flow_api.g_varchar2_table(54) := '20282F5C5B5C5D242F2E746573742874656D702929202F2F2070726576656E7420646F75626C652D656E636F64696E670D0A2020202020202020203F2074656D70203A2074656D70202B20275B27202B2069202B20275D27203A20693B0D0A2020202020';
wwv_flow_api.g_varchar2_table(55) := '2020202069662028286E65787454656D7020213D2027756E646566696E6564272920262620286920213D2027756E646566696E6564272929207B0D0A202020202020202020202020757269737472696E67732E70757368280D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(56) := '202020202028747970656F66206E6578744F626A203D3D3D20276F626A6563742729203F2071712E6F626A3275726C286E6578744F626A2C206E65787454656D702C207472756529203A20284F626A6563742E70726F746F747970652E746F537472696E';
wwv_flow_api.g_varchar2_table(57) := '672E63616C6C286E6578744F626A29203D3D3D20275B6F626A6563742046756E6374696F6E5D2729203F20656E636F6465555249436F6D706F6E656E74286E65787454656D7029202B20273D27202B20656E636F6465555249436F6D706F6E656E74286E';
wwv_flow_api.g_varchar2_table(58) := '6578744F626A282929203A20656E636F6465555249436F6D706F6E656E74286E65787454656D7029202B20273D27202B20656E636F6465555249436F6D706F6E656E74286E6578744F626A290D0A202020202020202020202020293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(59) := '2020207D0D0A2020202020207D3B0D0A0D0A2020206966202821707265666978446F6E652026262074656D7029207B0D0A202020202020707265666978203D20282F5C3F2F2E746573742874656D702929203F20282F5C3F242F2E746573742874656D70';
wwv_flow_api.g_varchar2_table(60) := '2929203F202727203A20272627203A20273F273B0D0A202020202020757269737472696E67732E707573682874656D70293B0D0A202020202020757269737472696E67732E707573682871712E6F626A3275726C286F626A29293B0D0A2020207D20656C';
wwv_flow_api.g_varchar2_table(61) := '73652069662028284F626A6563742E70726F746F747970652E746F537472696E672E63616C6C286F626A29203D3D3D20275B6F626A6563742041727261795D27292026262028747970656F66206F626A20213D2027756E646566696E6564272929207B0D';
wwv_flow_api.g_varchar2_table(62) := '0A2020202020202F2F20776520776F6E7420757365206120666F722D696E2D6C6F6F70206F6E20616E2061727261792028706572666F726D616E6365290D0A202020202020666F7220287661722069203D20302C206C656E203D206F626A2E6C656E6774';
wwv_flow_api.g_varchar2_table(63) := '683B2069203C206C656E3B202B2B6929207B0D0A202020202020202020616464286F626A5B695D2C2069293B0D0A2020202020207D0D0A2020207D20656C7365206966202828747970656F66206F626A20213D2027756E646566696E6564272920262620';
wwv_flow_api.g_varchar2_table(64) := '286F626A20213D3D206E756C6C292026262028747970656F66206F626A203D3D3D20226F626A656374222929207B0D0A2020202020202F2F20666F7220616E797468696E6720656C7365206275742061207363616C61722C2077652077696C6C20757365';
wwv_flow_api.g_varchar2_table(65) := '20666F722D696E2D6C6F6F700D0A202020202020666F722028766172206920696E206F626A29207B0D0A202020202020202020616464286F626A5B695D2C2069293B0D0A2020202020207D0D0A2020207D20656C7365207B0D0A20202020202075726973';
wwv_flow_api.g_varchar2_table(66) := '7472696E67732E7075736828656E636F6465555249436F6D706F6E656E742874656D7029202B20273D27202B20656E636F6465555249436F6D706F6E656E74286F626A29293B0D0A2020207D0D0A0D0A20202072657475726E20757269737472696E6773';
wwv_flow_api.g_varchar2_table(67) := '2E6A6F696E28707265666978290D0A2020202020202E7265706C616365282F5E262F2C202727290D0A2020202020202E7265706C616365282F2532302F672C20272B27293B0D0A7D3B0D0A0D0A2F2F0D0A2F2F0D0A2F2F2055706C6F6164657220436C61';
wwv_flow_api.g_varchar2_table(68) := '737365730D0A2F2F0D0A2F2F0D0A0D0A766172207171203D207171207C7C207B7D3B0D0A0D0A2F2A2A0D0A202A20437265617465732075706C6F616420627574746F6E2C2076616C6964617465732075706C6F61642C2062757420646F65736E27742063';
wwv_flow_api.g_varchar2_table(69) := '72656174652066696C65206C697374206F722064642E0D0A202A2F0D0A71712E46696C6555706C6F616465724261736963203D2066756E6374696F6E286F29207B0D0A202020746869732E5F6F7074696F6E73203D207B0D0A2020202020202F2F207365';
wwv_flow_api.g_varchar2_table(70) := '7420746F207472756520746F20736565207468652073657276657220726573706F6E73650D0A20202020202069643A2022717175706C6F61646572222C0D0A20202020202064656275673A2066616C73652C0D0A202020202020616374696F6E3A20272F';
wwv_flow_api.g_varchar2_table(71) := '7365727665722F75706C6F6164272C0D0A202020202020706172616D733A207B7D2C0D0A202020202020627574746F6E3A206E756C6C2C0D0A2020202020206D756C7469706C653A20747275652C0D0A2020202020206D6178436F6E6E656374696F6E73';
wwv_flow_api.g_varchar2_table(72) := '3A20332C0D0A2020202020206368756E6B53697A653A20313034383537362C202F2F20314D420D0A2020202020202F2F6368756E6B53697A653A2035313230302C202F2F2035304B0D0A2020202020202F2F2076616C69646174696F6E20202020202020';
wwv_flow_api.g_varchar2_table(73) := '200D0A202020202020616C6C6F776564457874656E73696F6E733A205B5D2C0D0A20202020202073697A654C696D69743A20302C0D0A2020202020206D696E53697A654C696D69743A20302C0D0A2020202020202F2F206576656E74730D0A2020202020';
wwv_flow_api.g_varchar2_table(74) := '202F2F2072657475726E2066616C736520746F2063616E63656C207375626D69740D0A2020202020206F6E5375626D69743A2066756E6374696F6E2869642C2066696C654E616D6529207B7D2C0D0A2020202020206F6E50726F67726573733A2066756E';
wwv_flow_api.g_varchar2_table(75) := '6374696F6E2869642C2066696C654E616D652C206C6F616465642C20746F74616C29207B7D2C0D0A2020202020206F6E436F6D706C6574653A2066756E6374696F6E2869642C2066696C654E616D652C20726573706F6E73654A534F4E29207B7D2C0D0A';
wwv_flow_api.g_varchar2_table(76) := '2020202020206F6E43616E63656C3A2066756E6374696F6E2869642C2066696C654E616D6529207B7D2C0D0A2020202020202F2F206D657373616765732026206C6162656C732020202020202020202020202020200D0A2020202020207472616E736C61';
wwv_flow_api.g_varchar2_table(77) := '74696F6E4C6162656C733A207B7D2C0D0A2020202020206D657373616765733A207B0D0A202020202020202020747970654572726F723A20227B66696C657D2068617320696E76616C696420657874656E73696F6E2E204F6E6C79207B657874656E7369';
wwv_flow_api.g_varchar2_table(78) := '6F6E737D2061726520616C6C6F7765642E222C0D0A20202020202020202073697A654572726F723A20227B66696C657D20697320746F6F206C617267652C206D6178696D756D2066696C652073697A65206973207B73697A654C696D69747D2E222C0D0A';
wwv_flow_api.g_varchar2_table(79) := '2020202020202020206D696E53697A654572726F723A20227B66696C657D20697320746F6F20736D616C6C2C206D696E696D756D2066696C652073697A65206973207B6D696E53697A654C696D69747D2E222C0D0A202020202020202020656D70747945';
wwv_flow_api.g_varchar2_table(80) := '72726F723A20227B66696C657D20697320656D7074792C20706C656173652073656C6563742066696C657320616761696E20776974686F75742069742E222C0D0A2020202020202020206F6E4C656176653A20225468652066696C657320617265206265';
wwv_flow_api.g_varchar2_table(81) := '696E672075706C6F616465642C20696620796F75206C65617665206E6F77207468652075706C6F61642077696C6C2062652063616E63656C6C65642E222C0D0A2020202020202020207069656365733A20227069656365207B6368756E6B4E756D626572';
wwv_flow_api.g_varchar2_table(82) := '7D206F66207B6368756E6B546F74616C7D220D0A2020202020207D2C0D0A20202020202075706C6F6164656446696C65733A2022222C0D0A20202020202073686F774D6573736167653A2066756E6374696F6E286D65737361676529207B0D0A20202020';
wwv_flow_api.g_varchar2_table(83) := '2020202020616C657274286D657373616765293B0D0A2020202020207D0D0A2020207D3B0D0A20202071712E657874656E6428746869732E5F6F7074696F6E732C206F293B0D0A0D0A2020202F2F206E756D626572206F662066696C6573206265696E67';
wwv_flow_api.g_varchar2_table(84) := '2075706C6F616465640D0A202020746869732E5F66696C6573496E50726F6772657373203D20303B0D0A202020746869732E5F66696C6555706C6F61644572726F72436F756E74203D20303B0D0A202020746869732E5F66696C6555706C6F6164457272';
wwv_flow_api.g_varchar2_table(85) := '6F7273203D205B5D3B0D0A202020746869732E5F68616E646C6572203D20746869732E5F63726561746555706C6F616448616E646C657228293B0D0A0D0A20202069662028746869732E5F6F7074696F6E732E627574746F6E29207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(86) := '746869732E5F627574746F6E203D20746869732E5F63726561746555706C6F6164427574746F6E28746869732E5F6F7074696F6E732E627574746F6E293B0D0A2020207D0D0A0D0A202020746869732E5F70726576656E744C65617665496E50726F6772';
wwv_flow_api.g_varchar2_table(87) := '65737328293B0D0A7D3B0D0A0D0A71712E46696C6555706C6F6164657242617369632E70726F746F74797065203D207B0D0A202020736574506172616D733A2066756E6374696F6E28706172616D7329207B0D0A202020202020746869732E5F6F707469';
wwv_flow_api.g_varchar2_table(88) := '6F6E732E706172616D73203D20706172616D733B0D0A2020207D2C0D0A202020676574496E50726F67726573733A2066756E6374696F6E2829207B0D0A20202020202072657475726E20746869732E5F66696C6573496E50726F67726573733B0D0A2020';
wwv_flow_api.g_varchar2_table(89) := '207D2C0D0A2020205F63726561746555706C6F6164427574746F6E3A2066756E6374696F6E28656C656D656E7429207B0D0A2020202020207661722073656C66203D20746869733B0D0A2020202020202F2F20416464656420696E207468652049442074';
wwv_flow_api.g_varchar2_table(90) := '6F2073656172636820666F7220666565646261636B20646976207768656E207570646174696E672066696C65206E616D65730D0A2020202020202F2F2077686963682068617665206265656E2075706C6F616465642E0D0A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(91) := '206E65772071712E55706C6F6164427574746F6E287B0D0A20202020202020202069643A20746869732E5F6F7074696F6E732E69642C0D0A20202020202020202062726F77736542746E4C6162656C3A20746869732E5F6F7074696F6E732E7472616E73';
wwv_flow_api.g_varchar2_table(92) := '6C6174696F6E4C6162656C732E62726F77736542746E4C6162656C2C0D0A2020202020202020206E6F66696C654C6162656C3A20746869732E5F6F7074696F6E732E7472616E736C6174696F6E4C6162656C732E6E6F66696C654C6162656C2C0D0A2020';
wwv_flow_api.g_varchar2_table(93) := '20202020202020656C656D656E743A20656C656D656E742C0D0A2020202020202020206D756C7469706C653A20746869732E5F6F7074696F6E732E6D756C7469706C652026262071712E55706C6F616448616E646C65725868722E6973537570706F7274';
wwv_flow_api.g_varchar2_table(94) := '6564282920262620212121746869732E5F6F7074696F6E732E666F726365496672616D6555706C6F61642C0D0A2020202020202020206F6E4368616E67653A2066756E6374696F6E28696E70757429207B0D0A20202020202020202020202073656C662E';
wwv_flow_api.g_varchar2_table(95) := '5F6F6E496E7075744368616E676528696E707574293B0D0A2020202020202020207D0D0A2020202020207D293B0D0A2020207D2C0D0A2020205F63726561746555706C6F616448616E646C65723A2066756E6374696F6E2829207B0D0A20202020202076';
wwv_flow_api.g_varchar2_table(96) := '61722073656C66203D20746869732C0D0A20202020202020202068616E646C6572436C6173733B0D0A0D0A2020202020206966202871712E55706C6F616448616E646C65725868722E6973537570706F72746564282920262620212121746869732E5F6F';
wwv_flow_api.g_varchar2_table(97) := '7074696F6E732E666F726365496672616D6555706C6F616429207B0D0A20202020202020202068616E646C6572436C617373203D202755706C6F616448616E646C6572586872273B0D0A2020202020207D20656C7365207B0D0A20202020202020202068';
wwv_flow_api.g_varchar2_table(98) := '616E646C6572436C617373203D202755706C6F616448616E646C6572466F726D273B0D0A2020202020207D0D0A0D0A2020202020207661722068616E646C6572203D206E65772071715B68616E646C6572436C6173735D287B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(99) := '696672616D65466F726D3A20746869732E5F6F7074696F6E732E696672616D65466F726D2C0D0A202020202020202020696672616D65506167653A20746869732E5F6F7074696F6E732E696672616D65506167652C0D0A20202020202020202064656275';
wwv_flow_api.g_varchar2_table(100) := '673A20746869732E5F6F7074696F6E732E64656275672C0D0A202020202020202020616374696F6E3A20746869732E5F6F7074696F6E732E616374696F6E2C0D0A2020202020202020206D6178436F6E6E656374696F6E733A20746869732E5F6F707469';
wwv_flow_api.g_varchar2_table(101) := '6F6E732E6D6178436F6E6E656374696F6E732C0D0A2020202020202020206368756E6B53697A653A20746869732E5F6F7074696F6E732E6368756E6B53697A652C0D0A2020202020202020206F6E50726F67726573733A2066756E6374696F6E2869642C';
wwv_flow_api.g_varchar2_table(102) := '2066696C654E616D652C206C6F616465642C20746F74616C2C206368756E6B4E756D6265722C206368756E6B546F74616C29207B0D0A20202020202020202020202073656C662E5F6F6E50726F67726573732869642C2066696C654E616D652C206C6F61';
wwv_flow_api.g_varchar2_table(103) := '6465642C20746F74616C2C206368756E6B4E756D6265722C206368756E6B546F74616C293B0D0A20202020202020202020202073656C662E5F6F7074696F6E732E6F6E50726F67726573732869642C2066696C654E616D652C206C6F616465642C20746F';
wwv_flow_api.g_varchar2_table(104) := '74616C2C206368756E6B4E756D6265722C206368756E6B546F74616C293B0D0A2020202020202020207D2C0D0A2020202020202020206F6E436F6D706C6574653A2066756E6374696F6E2869642C2066696C654E616D652C20726573756C7429207B0D0A';
wwv_flow_api.g_varchar2_table(105) := '20202020202020202020202073656C662E5F6F6E436F6D706C6574652869642C2066696C654E616D652C20726573756C74293B0D0A20202020202020202020202073656C662E5F6F7074696F6E732E6F6E436F6D706C6574652869642C2066696C654E61';
wwv_flow_api.g_varchar2_table(106) := '6D652C20726573756C74293B0D0A2020202020202020207D2C0D0A2020202020202020206F6E43616E63656C3A2066756E6374696F6E2869642C2066696C654E616D6529207B0D0A20202020202020202020202073656C662E5F6F6E43616E63656C2869';
wwv_flow_api.g_varchar2_table(107) := '642C2066696C654E616D65293B0D0A20202020202020202020202073656C662E5F6F7074696F6E732E6F6E43616E63656C2869642C2066696C654E616D65293B0D0A2020202020202020207D0D0A2020202020207D293B0D0A0D0A202020202020726574';
wwv_flow_api.g_varchar2_table(108) := '75726E2068616E646C65723B0D0A2020207D2C0D0A2020205F70726576656E744C65617665496E50726F67726573733A2066756E6374696F6E2829207B0D0A2020202020207661722073656C66203D20746869733B0D0A0D0A20202020202071712E6174';
wwv_flow_api.g_varchar2_table(109) := '746163682877696E646F772C20276265666F7265756E6C6F6164272C2066756E6374696F6E286529207B0D0A202020202020202020696620282173656C662E5F66696C6573496E50726F677265737329207B0D0A20202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(110) := '726E3B0D0A2020202020202020207D0D0A0D0A2020202020202020207661722065203D2065207C7C2077696E646F772E6576656E743B0D0A2020202020202020202F2F20666F722069652C2066660D0A202020202020202020652E72657475726E56616C';
wwv_flow_api.g_varchar2_table(111) := '7565203D2073656C662E5F6F7074696F6E732E6D657373616765732E6F6E4C656176653B0D0A2020202020202020202F2F20666F72207765626B69740D0A20202020202020202072657475726E2073656C662E5F6F7074696F6E732E6D65737361676573';
wwv_flow_api.g_varchar2_table(112) := '2E6F6E4C656176653B0D0A2020202020207D293B0D0A2020207D2C0D0A2020205F6F6E5375626D69743A2066756E6374696F6E2869642C2066696C654E616D6529207B0D0A202020202020746869732E5F66696C6573496E50726F67726573732B2B3B0D';
wwv_flow_api.g_varchar2_table(113) := '0A2020207D2C0D0A2020205F6F6E50726F67726573733A2066756E6374696F6E2869642C2066696C654E616D652C206C6F616465642C20746F74616C29207B7D2C0D0A2020205F6F6E436F6D706C6574653A2066756E6374696F6E2869642C2066696C65';
wwv_flow_api.g_varchar2_table(114) := '4E616D652C20726573756C7429207B0D0A202020202020746869732E5F66696C6573496E50726F67726573732D2D3B0D0A20202020202069662028726573756C742E6572726F7229207B0D0A202020202020202020746869732E5F6F7074696F6E732E73';
wwv_flow_api.g_varchar2_table(115) := '686F774D65737361676528726573756C742E6572726F72293B0D0A2020202020207D0D0A2020207D2C0D0A2020205F6F6E43616E63656C3A2066756E6374696F6E2869642C2066696C654E616D6529207B0D0A202020202020746869732E5F66696C6573';
wwv_flow_api.g_varchar2_table(116) := '496E50726F67726573732D2D3B0D0A2020207D2C0D0A2020205F6F6E496E7075744368616E67653A2066756E6374696F6E28696E70757429207B0D0A2020202020207661722073656C66203D20746869733B0D0A20202020202069662028746869732E5F';
wwv_flow_api.g_varchar2_table(117) := '68616E646C657220696E7374616E63656F662071712E55706C6F616448616E646C657258687229207B0D0A202020202020202020746869732E5F75706C6F616446696C654C69737428696E7075742E66696C6573293B0D0A2020202020207D20656C7365';
wwv_flow_api.g_varchar2_table(118) := '207B0D0A20202020202020202069662028746869732E5F76616C696461746546696C6528696E7075742929207B0D0A2020202020202020202020202F2F2074726967676572206265666F7265207374617274206576656E7420666F7220726567756C6172';
wwv_flow_api.g_varchar2_table(119) := '20696672616D652066696C652075706C6F61640D0A2020202020202020202020202428222322202B20746869732E5F6F7074696F6E732E6964292E7472696767657228276265666F726573746172742E434F4D5F41465F504C5547494E5F4A515F46494C';
wwv_flow_api.g_varchar2_table(120) := '4555504C4F4144272C205B7B0D0A2020202020202020202020202020207769646765743A2073656C662C0D0A20202020202020202020202020202066696C65733A205B696E7075745D0D0A2020202020202020202020207D5D293B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(121) := '2020202020746869732E5F75706C6F616446696C6528696E707574293B0D0A2020202020202020207D0D0A2020202020207D0D0A202020202020746869732E5F627574746F6E2E726573657428293B0D0A2020207D2C0D0A2020205F75706C6F61644669';
wwv_flow_api.g_varchar2_table(122) := '6C654C6973743A2066756E6374696F6E2866696C657329207B0D0A2020202020207661722073656C66203D20746869732C2066696C654172726179203D205B5D3B0D0A202020202020666F7220287661722069203D20303B2069203C2066696C65732E6C';
wwv_flow_api.g_varchar2_table(123) := '656E6774683B20692B2B29207B0D0A20202020202020202066696C6541727261792E707573682866696C65735B695D293B0D0A2020202020202020206966202821746869732E5F76616C696461746546696C652866696C65735B695D2929207B0D0A2020';
wwv_flow_api.g_varchar2_table(124) := '2020202020202020202072657475726E3B0D0A2020202020202020207D0D0A2020202020207D0D0A2020202020202428222322202B20746869732E5F6F7074696F6E732E6964292E7472696767657228276265666F726573746172742E434F4D5F41465F';
wwv_flow_api.g_varchar2_table(125) := '504C5547494E5F4A515F46494C4555504C4F4144272C205B7B0D0A2020202020202020207769646765743A20746869732C0D0A20202020202020202066696C65733A2066696C6541727261790D0A2020202020207D5D293B0D0A202020202020666F7220';
wwv_flow_api.g_varchar2_table(126) := '287661722069203D20303B2069203C2066696C6541727261792E6C656E6774683B20692B2B29207B0D0A202020202020202020746869732E5F75706C6F616446696C652866696C6541727261795B695D293B0D0A2020202020207D0D0A2020207D2C0D0A';
wwv_flow_api.g_varchar2_table(127) := '2020205F75706C6F616446696C653A2066756E6374696F6E2866696C65436F6E7461696E657229207B0D0A202020202020766172206964203D20746869732E5F68616E646C65722E6164642866696C65436F6E7461696E6572293B0D0A20202020202076';
wwv_flow_api.g_varchar2_table(128) := '61722066696C654E616D65203D20746869732E5F68616E646C65722E6765744E616D65286964293B0D0A0D0A20202020202069662028746869732E5F6F7074696F6E732E6F6E5375626D69742869642C2066696C654E616D652920213D3D2066616C7365';
wwv_flow_api.g_varchar2_table(129) := '29207B0D0A202020202020202020746869732E5F6F6E5375626D69742869642C2066696C654E616D65293B0D0A202020202020202020746869732E5F68616E646C65722E75706C6F61642869642C20746869732E5F6F7074696F6E732E706172616D7329';
wwv_flow_api.g_varchar2_table(130) := '3B0D0A2020202020207D0D0A2020207D2C0D0A2020205F76616C696461746546696C653A2066756E6374696F6E2866696C6529207B0D0A202020202020766172206E616D652C2073697A653B0D0A0D0A2020202020206966202866696C652E76616C7565';
wwv_flow_api.g_varchar2_table(131) := '29207B0D0A2020202020202020202F2F20697420697320612066696C6520696E7075742020202020202020202020200D0A2020202020202020202F2F2067657420696E7075742076616C756520616E642072656D6F7665207061746820746F206E6F726D';
wwv_flow_api.g_varchar2_table(132) := '616C697A650D0A2020202020202020206E616D65203D2066696C652E76616C75652E7265706C616365282F2E2A285C2F7C5C5C292F2C202222293B0D0A2020202020207D20656C7365207B0D0A2020202020202020202F2F20666978206D697373696E67';
wwv_flow_api.g_varchar2_table(133) := '2070726F7065727469657320696E205361666172690D0A2020202020202020206E616D65203D2066696C652E66696C654E616D6520213D206E756C6C203F2066696C652E66696C654E616D65203A2066696C652E6E616D653B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(134) := '73697A65203D2066696C652E66696C6553697A6520213D206E756C6C203F2066696C652E66696C6553697A65203A2066696C652E73697A653B0D0A2020202020207D0D0A0D0A2020202020206966202821746869732E5F6973416C6C6F77656445787465';
wwv_flow_api.g_varchar2_table(135) := '6E73696F6E286E616D652929207B0D0A202020202020202020746869732E5F6572726F722827747970654572726F72272C206E616D65293B0D0A20202020202020202072657475726E2066616C73653B0D0A0D0A2020202020207D20656C736520696620';
wwv_flow_api.g_varchar2_table(136) := '2873697A65203D3D3D203029207B0D0A202020202020202020746869732E5F6572726F722827656D7074794572726F72272C206E616D65293B0D0A20202020202020202072657475726E2066616C73653B0D0A0D0A2020202020207D20656C7365206966';
wwv_flow_api.g_varchar2_table(137) := '202873697A6520262620746869732E5F6F7074696F6E732E73697A654C696D69742026262073697A65203E20746869732E5F6F7074696F6E732E73697A654C696D697429207B0D0A202020202020202020746869732E5F6572726F72282773697A654572';
wwv_flow_api.g_varchar2_table(138) := '726F72272C206E616D65293B0D0A20202020202020202072657475726E2066616C73653B0D0A0D0A2020202020207D20656C7365206966202873697A652026262073697A65203C20746869732E5F6F7074696F6E732E6D696E53697A654C696D69742920';
wwv_flow_api.g_varchar2_table(139) := '7B0D0A202020202020202020746869732E5F6572726F7228276D696E53697A654572726F72272C206E616D65293B0D0A20202020202020202072657475726E2066616C73653B0D0A2020202020207D0D0A0D0A20202020202072657475726E2074727565';
wwv_flow_api.g_varchar2_table(140) := '3B0D0A2020207D2C0D0A2020205F6572726F723A2066756E6374696F6E28636F64652C2066696C654E616D6529207B0D0A202020202020766172206D657373616765203D20746869732E5F6F7074696F6E732E6D657373616765735B636F64655D3B0D0A';
wwv_flow_api.g_varchar2_table(141) := '0D0A20202020202066756E6374696F6E2072286E616D652C207265706C6163656D656E7429207B0D0A2020202020202020206D657373616765203D206D6573736167652E7265706C616365286E616D652C207265706C6163656D656E74293B0D0A202020';
wwv_flow_api.g_varchar2_table(142) := '2020207D0D0A0D0A2020202020207228277B66696C657D272C20746869732E5F666F726D617446696C654E616D652866696C654E616D6529293B0D0A2020202020207228277B657874656E73696F6E737D272C20746869732E5F6F7074696F6E732E616C';
wwv_flow_api.g_varchar2_table(143) := '6C6F776564457874656E73696F6E732E6A6F696E28272C202729293B0D0A2020202020207228277B73697A654C696D69747D272C20746869732E5F666F726D617453697A6528746869732E5F6F7074696F6E732E73697A654C696D697429293B0D0A2020';
wwv_flow_api.g_varchar2_table(144) := '202020207228277B6D696E53697A654C696D69747D272C20746869732E5F666F726D617453697A6528746869732E5F6F7074696F6E732E6D696E53697A654C696D697429293B0D0A0D0A202020202020746869732E5F6F7074696F6E732E73686F774D65';
wwv_flow_api.g_varchar2_table(145) := '7373616765286D657373616765293B0D0A2020207D2C0D0A2020205F666F726D617446696C654E616D653A2066756E6374696F6E286E616D6529207B0D0A202020202020696620286E616D652E6C656E677468203E20333329207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(146) := '20206E616D65203D206E616D652E736C69636528302C20313929202B20272E2E2E27202B206E616D652E736C696365282D3133293B0D0A2020202020207D0D0A20202020202072657475726E206E616D653B0D0A2020207D2C0D0A2020205F6973416C6C';
wwv_flow_api.g_varchar2_table(147) := '6F776564457874656E73696F6E3A2066756E6374696F6E2866696C654E616D6529207B0D0A20202020202076617220657874203D20282D3120213D3D2066696C654E616D652E696E6465784F6628272E272929203F2066696C654E616D652E7265706C61';
wwv_flow_api.g_varchar2_table(148) := '6365282F2E2A5B2E5D2F2C202727292E746F4C6F776572436173652829203A2027273B0D0A20202020202076617220616C6C6F776564203D20746869732E5F6F7074696F6E732E616C6C6F776564457874656E73696F6E733B0D0A0D0A20202020202069';
wwv_flow_api.g_varchar2_table(149) := '66202821616C6C6F7765642E6C656E67746829207B0D0A20202020202020202072657475726E20747275653B0D0A2020202020207D0D0A0D0A202020202020666F7220287661722069203D20303B2069203C20616C6C6F7765642E6C656E6774683B2069';
wwv_flow_api.g_varchar2_table(150) := '2B2B29207B0D0A20202020202020202069662028616C6C6F7765645B695D2E746F4C6F776572436173652829203D3D2065787429207B0D0A20202020202020202020202072657475726E20747275653B0D0A2020202020202020207D0D0A202020202020';
wwv_flow_api.g_varchar2_table(151) := '7D0D0A0D0A20202020202072657475726E2066616C73653B0D0A2020207D2C0D0A2020205F666F726D617453697A653A2066756E6374696F6E28627974657329207B0D0A2020202020207661722069203D202D313B0D0A202020202020646F207B0D0A20';
wwv_flow_api.g_varchar2_table(152) := '20202020202020206279746573203D206279746573202F20313032343B0D0A202020202020202020692B2B3B0D0A2020202020207D207768696C6520286279746573203E203939293B0D0A0D0A20202020202072657475726E204D6174682E6D61782862';
wwv_flow_api.g_varchar2_table(153) := '797465732C20302E31292E746F4669786564283129202B205B276B42272C20274D42272C20274742272C20275442272C20275042272C20274542275D5B695D3B0D0A2020207D2C0D0A2020205F756E656E636F64656453697A653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(154) := '28627974657329207B0D0A20202020202072657475726E204D6174682E6365696C286279746573202F203429202A20333B0D0A2020207D0D0A7D3B0D0A0D0A0D0A2F2A2A0D0A202A20436C617373207468617420637265617465732075706C6F61642077';
wwv_flow_api.g_varchar2_table(155) := '6964676574207769746820647261672D616E642D64726F7020616E642066696C65206C6973740D0A202A2040696E6865726974732071712E46696C6555706C6F6164657242617369630D0A202A2F0D0A71712E46696C6555706C6F61646572203D206675';
wwv_flow_api.g_varchar2_table(156) := '6E6374696F6E286F29207B0D0A2020202F2F2063616C6C20706172656E7420636F6E7374727563746F720D0A20202071712E46696C6555706C6F6164657242617369632E6170706C7928746869732C20617267756D656E7473293B0D0A0D0A2020202F2F';
wwv_flow_api.g_varchar2_table(157) := '206164646974696F6E616C206F7074696F6E73202020200D0A20202071712E657874656E6428746869732E5F6F7074696F6E732C207B0D0A202020202020656C656D656E743A206E756C6C2C0D0A2020202020202F2F206966207365742C2077696C6C20';
wwv_flow_api.g_varchar2_table(158) := '6265207573656420696E7374656164206F662071712D75706C6F61642D6C69737420696E2074656D706C6174650D0A2020202020206C697374456C656D656E743A206E756C6C2C0D0A0D0A20202020202074656D706C6174653A20273C64697620636C61';
wwv_flow_api.g_varchar2_table(159) := '73733D2271712D75706C6F61646572223E27202B0D0A202020202020202020273C64697620636C6173733D2271712D75706C6F61642D64726F702D61726561223E3C7370616E3E27202B20746869732E5F6F7074696F6E732E7472616E736C6174696F6E';
wwv_flow_api.g_varchar2_table(160) := '4C6162656C732E64726F70417265614D7367202B20273C2F7370616E3E3C2F6469763E27202B0D0A202020202020202020273C64697620636C6173733D2271712D75706C6F61642D627574746F6E223E3C2F6469763E27202B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(161) := '273C756C2069643D2227202B20746869732E5F6F7074696F6E732E6964202B20275F75706C6F6164732220636C6173733D2271712D75706C6F61642D6C69737422207374796C653D22646973706C61793A6E6F6E653B223E27202B20746869732E5F6F70';
wwv_flow_api.g_varchar2_table(162) := '74696F6E732E75706C6F6164656446696C6573202B20273C2F756C3E27202B0D0A202020202020202020273C2F6469763E272C0D0A0D0A2020202020202F2F2074656D706C61746520666F72206F6E65206974656D20696E2066696C65206C6973740D0A';
wwv_flow_api.g_varchar2_table(163) := '20202020202066696C6554656D706C6174653A20273C6C693E27202B0D0A202020202020202020273C7370616E20636C6173733D2271712D75706C6F61642D66696C65223E3C2F7370616E3E27202B0D0A202020202020202020273C7370616E20636C61';
wwv_flow_api.g_varchar2_table(164) := '73733D2271712D75706C6F61642D7370696E6E6572223E3C2F7370616E3E27202B0D0A202020202020202020273C7370616E20636C6173733D2271712D75706C6F61642D73697A65223E3C2F7370616E3E27202B0D0A202020202020202020273C612063';
wwv_flow_api.g_varchar2_table(165) := '6C6173733D2271712D75706C6F61642D63616E63656C2220687265663D2223223E43616E63656C3C2F613E27202B0D0A202020202020202020273C7370616E20636C6173733D2271712D75706C6F61642D6661696C65642D74657874223E4661696C6564';
wwv_flow_api.g_varchar2_table(166) := '3C2F7370616E3E27202B0D0A202020202020202020273C2F6C693E272C0D0A0D0A202020202020636C61737365733A207B0D0A2020202020202020202F2F207573656420746F2067657420656C656D656E74732066726F6D2074656D706C617465730D0A';
wwv_flow_api.g_varchar2_table(167) := '202020202020202020627574746F6E3A202771712D75706C6F61642D627574746F6E272C0D0A20202020202020202064726F703A202771712D75706C6F61642D64726F702D61726561272C0D0A20202020202020202064726F704163746976653A202771';
wwv_flow_api.g_varchar2_table(168) := '712D75706C6F61642D64726F702D617265612D616374697665272C0D0A2020202020202020206C6973743A202771712D75706C6F61642D6C697374272C0D0A0D0A20202020202020202066696C653A202771712D75706C6F61642D66696C65272C0D0A20';
wwv_flow_api.g_varchar2_table(169) := '20202020202020207370696E6E65723A202771712D75706C6F61642D7370696E6E6572272C0D0A20202020202020202073697A653A202771712D75706C6F61642D73697A65272C0D0A20202020202020202063616E63656C3A202771712D75706C6F6164';
wwv_flow_api.g_varchar2_table(170) := '2D63616E63656C272C0D0A0D0A2020202020202020202F2F20616464656420746F206C697374206974656D207768656E2075706C6F616420636F6D706C657465730D0A2020202020202020202F2F207573656420696E2063737320746F20686964652070';
wwv_flow_api.g_varchar2_table(171) := '726F6772657373207370696E6E65720D0A202020202020202020737563636573733A202771712D75706C6F61642D73756363657373272C0D0A2020202020202020206661696C3A202771712D75706C6F61642D6661696C270D0A2020202020207D0D0A20';
wwv_flow_api.g_varchar2_table(172) := '20207D293B0D0A2020202F2F206F7665727772697465206F7074696F6E732077697468207573657220737570706C696564202020200D0A20202071712E657874656E6428746869732E5F6F7074696F6E732C206F293B0D0A0D0A202020746869732E5F65';
wwv_flow_api.g_varchar2_table(173) := '6C656D656E74203D20746869732E5F6F7074696F6E732E656C656D656E743B0D0A202020746869732E5F656C656D656E742E696E6E657248544D4C203D20746869732E5F6F7074696F6E732E74656D706C6174653B0D0A202020746869732E5F6C697374';
wwv_flow_api.g_varchar2_table(174) := '456C656D656E74203D20746869732E5F6F7074696F6E732E6C697374456C656D656E74207C7C20746869732E5F66696E6428746869732E5F656C656D656E742C20276C69737427293B0D0A0D0A202020746869732E5F636C6173736573203D2074686973';
wwv_flow_api.g_varchar2_table(175) := '2E5F6F7074696F6E732E636C61737365733B0D0A0D0A202020746869732E5F627574746F6E203D20746869732E5F63726561746555706C6F6164427574746F6E28746869732E5F66696E6428746869732E5F656C656D656E742C2027627574746F6E2729';
wwv_flow_api.g_varchar2_table(176) := '293B0D0A0D0A202020746869732E5F62696E6443616E63656C4576656E7428293B0D0A202020746869732E5F73657475704472616744726F7028293B0D0A7D3B0D0A0D0A2F2F20696E68657269742066726F6D2042617369632055706C6F616465720D0A';
wwv_flow_api.g_varchar2_table(177) := '71712E657874656E642871712E46696C6555706C6F616465722E70726F746F747970652C2071712E46696C6555706C6F6164657242617369632E70726F746F74797065293B0D0A0D0A71712E657874656E642871712E46696C6555706C6F616465722E70';
wwv_flow_api.g_varchar2_table(178) := '726F746F747970652C207B0D0A2020202F2A2A0D0A202020202A2047657473206F6E65206F662074686520656C656D656E7473206C697374656420696E20746869732E5F6F7074696F6E732E636C61737365730D0A202020202A2A2F0D0A2020205F6669';
wwv_flow_api.g_varchar2_table(179) := '6E643A2066756E6374696F6E28706172656E742C207479706529207B0D0A20202020202076617220656C656D656E74203D2071712E6765744279436C61737328706172656E742C20746869732E5F6F7074696F6E732E636C61737365735B747970655D29';
wwv_flow_api.g_varchar2_table(180) := '5B305D3B0D0A2020202020206966202821656C656D656E7429207B0D0A2020202020202020207468726F77206E6577204572726F722827656C656D656E74206E6F7420666F756E642027202B2074797065293B0D0A2020202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(181) := '202072657475726E20656C656D656E743B0D0A2020207D2C0D0A2020205F73657475704472616744726F703A2066756E6374696F6E2829207B0D0A2020202020207661722073656C66203D20746869732C0D0A20202020202020202064726F7041726561';
wwv_flow_api.g_varchar2_table(182) := '203D20746869732E5F66696E6428746869732E5F656C656D656E742C202764726F7027293B0D0A0D0A20202020202064726F70417265612E7374796C652E7769647468203D20746869732E5F6F7074696F6E732E7769647468202B20277078273B0D0A0D';
wwv_flow_api.g_varchar2_table(183) := '0A20202020202076617220647A203D206E65772071712E55706C6F616444726F705A6F6E65287B0D0A202020202020202020656C656D656E743A2064726F70417265612C0D0A2020202020202020206F6E456E7465723A2066756E6374696F6E28652920';
wwv_flow_api.g_varchar2_table(184) := '7B0D0A20202020202020202020202071712E616464436C6173732864726F70417265612C2073656C662E5F636C61737365732E64726F70416374697665293B0D0A202020202020202020202020652E73746F7050726F7061676174696F6E28293B0D0A20';
wwv_flow_api.g_varchar2_table(185) := '20202020202020207D2C0D0A2020202020202020206F6E4C656176653A2066756E6374696F6E286529207B0D0A202020202020202020202020652E73746F7050726F7061676174696F6E28293B0D0A2020202020202020207D2C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(186) := '206F6E4C656176654E6F7444657363656E64616E74733A2066756E6374696F6E286529207B0D0A20202020202020202020202071712E72656D6F7665436C6173732864726F70417265612C2073656C662E5F636C61737365732E64726F70416374697665';
wwv_flow_api.g_varchar2_table(187) := '293B0D0A2020202020202020207D2C0D0A2020202020202020206F6E44726F703A2066756E6374696F6E286529207B0D0A20202020202020202020202064726F70417265612E7374796C652E646973706C6179203D20276E6F6E65273B0D0A2020202020';
wwv_flow_api.g_varchar2_table(188) := '2020202020202071712E72656D6F7665436C6173732864726F70417265612C2073656C662E5F636C61737365732E64726F70416374697665293B0D0A20202020202020202020202073656C662E5F75706C6F616446696C654C69737428652E6461746154';
wwv_flow_api.g_varchar2_table(189) := '72616E736665722E66696C6573293B0D0A2020202020202020207D0D0A2020202020207D293B0D0A0D0A20202020202064726F70417265612E7374796C652E646973706C6179203D20276E6F6E65273B0D0A0D0A20202020202071712E61747461636828';
wwv_flow_api.g_varchar2_table(190) := '646F63756D656E742C202764726167656E746572272C2066756E6374696F6E286529207B0D0A2020202020202020206966202821647A2E5F697356616C696446696C6544726167286529292072657475726E3B0D0A0D0A20202020202020202064726F70';
wwv_flow_api.g_varchar2_table(191) := '417265612E7374796C652E646973706C6179203D2027626C6F636B273B0D0A2020202020207D293B0D0A20202020202071712E61747461636828646F63756D656E742C2027647261676C65617665272C2066756E6374696F6E286529207B0D0A20202020';
wwv_flow_api.g_varchar2_table(192) := '20202020206966202821647A2E5F697356616C696446696C6544726167286529292072657475726E3B0D0A0D0A2020202020202020207661722072656C61746564546172676574203D20646F63756D656E742E656C656D656E7446726F6D506F696E7428';
wwv_flow_api.g_varchar2_table(193) := '652E636C69656E74582C20652E636C69656E7459293B0D0A2020202020202020202F2F206F6E6C792066697265207768656E206C656176696E6720646F63756D656E74206F75740D0A202020202020202020696620282172656C61746564546172676574';
wwv_flow_api.g_varchar2_table(194) := '207C7C2072656C617465645461726765742E6E6F64654E616D65203D3D202248544D4C22207C7C2072656C617465645461726765742E6E6F64654E616D65203D3D2022424F44592229207B202F2F20544F444F0D0A20202020202020202020202064726F';
wwv_flow_api.g_varchar2_table(195) := '70417265612E7374796C652E646973706C6179203D20276E6F6E65273B0D0A2020202020202020207D0D0A2020202020207D293B0D0A2020207D2C0D0A2020205F6F6E5375626D69743A2066756E6374696F6E2869642C2066696C654E616D6529207B0D';
wwv_flow_api.g_varchar2_table(196) := '0A202020202020746869732E5F66696C6555706C6F61644572726F7273203D205B5D3B0D0A20202020202071712E46696C6555706C6F6164657242617369632E70726F746F747970652E5F6F6E5375626D69742E6170706C7928746869732C2061726775';
wwv_flow_api.g_varchar2_table(197) := '6D656E7473293B0D0A202020202020746869732E5F616464546F4C6973742869642C2066696C654E616D65293B0D0A2020207D2C0D0A2020205F6F6E50726F67726573733A2066756E6374696F6E2869642C2066696C654E616D652C206C6F616465642C';
wwv_flow_api.g_varchar2_table(198) := '20746F74616C2C206368756E6B4E756D6265722C206368756E6B546F74616C29207B0D0A0D0A2020202020207661722070696563654D7367203D20746869732E5F6F7074696F6E732E6D657373616765735B27706965636573275D2C0D0A202020202020';
wwv_flow_api.g_varchar2_table(199) := '2020206C6F6164436F6D706C65746564203D20286C6F61646564203D3D3D20746F74616C293B0D0A0D0A2020202020202F2F2073686F7720746865206368756E6B65642075706C6F61642070726F67726573730D0A20202020202066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(200) := '72286E616D652C207265706C6163656D656E7429207B0D0A20202020202020202070696563654D7367203D2070696563654D73672E7265706C616365286E616D652C207265706C6163656D656E74293B0D0A2020202020207D0D0A202020202020696620';
wwv_flow_api.g_varchar2_table(201) := '286368756E6B4E756D626572202626206368756E6B546F74616C29207B0D0A2020202020202020202F2F2073686F7720756E656E636F6465642073697A696E6720746F2061766F696420636F6E667573696F6E20666F722074686520656E642075736572';
wwv_flow_api.g_varchar2_table(202) := '0D0A2020202020202020206C6F61646564203D20746869732E5F756E656E636F64656453697A65286C6F61646564293B0D0A202020202020202020746F74616C203D20746869732E5F756E656E636F64656453697A6528746F74616C293B0D0A20202020';
wwv_flow_api.g_varchar2_table(203) := '20202020207228277B6368756E6B4E756D6265727D272C204D6174682E6D696E286368756E6B4E756D626572207C7C20312C206368756E6B546F74616C207C7C203129293B0D0A2020202020202020207228277B6368756E6B546F74616C7D272C206368';
wwv_flow_api.g_varchar2_table(204) := '756E6B546F74616C207C7C2031293B0D0A20202020202020202070696563654D7367202B3D2027292027202B20746869732E5F666F726D617453697A6528286368756E6B4E756D626572202D203129202A20746869732E5F6F7074696F6E732E6368756E';
wwv_flow_api.g_varchar2_table(205) := '6B53697A65293B0D0A2020202020207D20656C7365207B0D0A20202020202020202070696563654D7367203D2027273B0D0A2020202020207D0D0A0D0A20202020202071712E46696C6555706C6F6164657242617369632E70726F746F747970652E5F6F';
wwv_flow_api.g_varchar2_table(206) := '6E50726F67726573732E6170706C7928746869732C20617267756D656E7473293B0D0A0D0A202020202020766172206974656D203D20746869732E5F6765744974656D427946696C654964286964293B0D0A2020202020207661722073697A65203D2074';
wwv_flow_api.g_varchar2_table(207) := '6869732E5F66696E64286974656D2C202773697A6527293B0D0A20202020202073697A652E7374796C652E646973706C6179203D2027696E6C696E65273B0D0A0D0A20202020202076617220746578743B0D0A20202020202069662028216C6F6164436F';
wwv_flow_api.g_varchar2_table(208) := '6D706C6574656429207B0D0A20202020202020202074657874203D20272827202B204D6174682E726F756E64286C6F61646564202F20746F74616C202A2031303029202B2027252066726F6D2027202B20746869732E5F666F726D617453697A6528746F';
wwv_flow_api.g_varchar2_table(209) := '74616C29202B20272027202B2070696563654D73673B0D0A2020202020207D20656C7365207B0D0A20202020202020202074657874203D202870696563654D736729203F20272827202B20746869732E5F666F726D617453697A6528746F74616C29202B';
wwv_flow_api.g_varchar2_table(210) := '20272027202B2070696563654D7367203A20746869732E5F666F726D617453697A6528746F74616C293B0D0A2020202020207D0D0A0D0A20202020202071712E736574546578742873697A652C2074657874293B0D0A2020207D2C0D0A2020205F6F6E43';
wwv_flow_api.g_varchar2_table(211) := '6F6D706C6574653A2066756E6374696F6E2869642C2066696C654E616D652C20726573756C7429207B0D0A20202020202071712E46696C6555706C6F6164657242617369632E70726F746F747970652E5F6F6E436F6D706C6574652E6170706C79287468';
wwv_flow_api.g_varchar2_table(212) := '69732C20617267756D656E7473293B0D0A0D0A2020202020202F2F206D61726B20636F6D706C657465640D0A202020202020766172206974656D203D20746869732E5F6765744974656D427946696C654964286964292C0D0A2020202020202020202464';
wwv_flow_api.g_varchar2_table(213) := '69616C6F67203D20617065782E6A517565727928222322202B20746869732E5F6F7074696F6E732E6964202B20225F75706C6F61647322293B0D0A20202020202071712E72656D6F766528746869732E5F66696E64286974656D2C202763616E63656C27';
wwv_flow_api.g_varchar2_table(214) := '29293B0D0A20202020202071712E72656D6F766528746869732E5F66696E64286974656D2C20277370696E6E65722729293B0D0A0D0A20202020202069662028726573756C742E7375636365737329207B0D0A20202020202020202071712E616464436C';
wwv_flow_api.g_varchar2_table(215) := '617373286974656D2C20746869732E5F636C61737365732E73756363657373293B0D0A202020202020202020617065782E6A517565727928746869732E5F66696E64286974656D2C202766696C652729292E7772617028273C6120687265663D2227202B';
wwv_flow_api.g_varchar2_table(216) := '20726573756C742E6C696E6B202B202722202F3E27293B0D0A20202020202020202069662028746869732E5F66696C6573496E50726F6772657373203D3D3D203020262620746869732E5F6F7074696F6E732E686964654469616C6F674F6E436F6D706C';
wwv_flow_api.g_varchar2_table(217) := '65746529207B0D0A202020202020202020202020246469616C6F672E6469616C6F672822636C6F736522293B0D0A2020202020202020207D0D0A2020202020207D20656C7365207B0D0A20202020202020202071712E616464436C617373286974656D2C';
wwv_flow_api.g_varchar2_table(218) := '20746869732E5F636C61737365732E6661696C293B0D0A202020202020202020746869732E5F66696C6555706C6F61644572726F72436F756E742B2B3B0D0A202020202020202020746869732E5F66696C6555706C6F61644572726F72732E7075736828';
wwv_flow_api.g_varchar2_table(219) := '7B0D0A20202020202020202020202069643A2069642C0D0A20202020202020202020202066696C654E616D653A2066696C654E616D652C0D0A202020202020202020202020726573756C743A20726573756C740D0A2020202020202020207D293B0D0A20';
wwv_flow_api.g_varchar2_table(220) := '202020202020202069662028726573756C742E6D6573736167652920616C65727428726573756C742E6D657373616765293B0D0A202020202020202020617065782E6A517565727928222322202B20746869732E5F6F7074696F6E732E6964292E747269';
wwv_flow_api.g_varchar2_table(221) := '6767657228276F6E6572726F722E434F4D5F41465F504C5547494E5F4A515F46494C4555504C4F4144272C205B7B0D0A2020202020202020202020207769646765743A20746869732C0D0A2020202020202020202020206469616C6F673A20246469616C';
wwv_flow_api.g_varchar2_table(222) := '6F672C0D0A20202020202020202020202069643A2069642C0D0A20202020202020202020202066696C654E616D653A2066696C654E616D652C0D0A202020202020202020202020726573756C743A20726573756C740D0A2020202020202020207D5D293B';
wwv_flow_api.g_varchar2_table(223) := '0D0A2020202020207D0D0A20202020202069662028746869732E5F66696C6573496E50726F6772657373203D3D3D203029207B0D0A202020202020202020746869732E5F6F6E436F6D706C657465416C6C28246469616C6F67293B0D0A2020202020207D';
wwv_flow_api.g_varchar2_table(224) := '0D0A2020207D2C0D0A2020205F6F6E436F6D706C657465416C6C3A2066756E6374696F6E286469616C6F6729207B0D0A202020202020617065782E6A517565727928222322202B20746869732E5F6F7074696F6E732E6964292E7472696767657228276F';
wwv_flow_api.g_varchar2_table(225) := '6E636F6D706C657465616C6C2E434F4D5F41465F504C5547494E5F4A515F46494C4555504C4F4144272C205B7B0D0A2020202020202020207769646765743A20746869732C0D0A2020202020202020206469616C6F673A206469616C6F670D0A20202020';
wwv_flow_api.g_varchar2_table(226) := '20207D5D293B0D0A20202020202069662028746869732E5F66696C6573496E50726F6772657373203D3D3D203020262620746869732E5F66696C6555706C6F61644572726F72436F756E74203E203029207B0D0A202020202020202020617065782E6A51';
wwv_flow_api.g_varchar2_table(227) := '7565727928222322202B20746869732E5F6F7074696F6E732E6964292E7472696767657228276F6E6572726F72616C6C2E434F4D5F41465F504C5547494E5F4A515F46494C4555504C4F4144272C205B7B0D0A2020202020202020202020207769646765';
wwv_flow_api.g_varchar2_table(228) := '743A20746869732C0D0A2020202020202020202020206469616C6F673A206469616C6F672C0D0A2020202020202020202020206572726F72733A20746869732E5F66696C6555706C6F61644572726F72730D0A2020202020202020207D5D293B0D0A2020';
wwv_flow_api.g_varchar2_table(229) := '202020207D0D0A2020207D2C0D0A2020205F616464546F4C6973743A2066756E6374696F6E2869642C2066696C654E616D6529207B0D0A202020202020766172206974656D203D2071712E746F456C656D656E7428746869732E5F6F7074696F6E732E66';
wwv_flow_api.g_varchar2_table(230) := '696C6554656D706C617465293B0D0A2020202020206974656D2E717146696C654964203D2069643B0D0A0D0A2020202020207661722066696C65456C656D656E74203D20746869732E5F66696E64286974656D2C202766696C6527293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(231) := '2071712E736574546578742866696C65456C656D656E742C20746869732E5F666F726D617446696C654E616D652866696C654E616D6529293B0D0A202020202020746869732E5F66696E64286974656D2C202773697A6527292E7374796C652E64697370';
wwv_flow_api.g_varchar2_table(232) := '6C6179203D20276E6F6E65273B0D0A0D0A202020202020746869732E5F6C697374456C656D656E742E617070656E644368696C64286974656D293B0D0A0D0A2020202020202F2F204E6577206164646969746F6E73204D4A4E0D0A0D0A20202020202076';
wwv_flow_api.g_varchar2_table(233) := '617220704944203D20746869732E5F6F7074696F6E732E69643B0D0A2020202020202F2F63726561746520637573746F6D20636F6E74726F6C20636F6E7461696E65720D0A2020202020207661722075706C6F6164203D20617065782E6A517565727928';
wwv_flow_api.g_varchar2_table(234) := '222322202B20704944202B2022202E637573746F6D66696C6522293B0D0A2020202020202F2F63726561746520637573746F6D20636F6E74726F6C20627574746F6E0D0A2020202020207661722075706C6F6164427574746F6E203D20617065782E6A51';
wwv_flow_api.g_varchar2_table(235) := '7565727928222322202B20704944202B2022202E637573746F6D66696C652D627574746F6E22293B0D0A2020202020202F2F63726561746520637573746F6D20636F6E74726F6C20666565646261636B0D0A2020202020207661722075706C6F61644665';
wwv_flow_api.g_varchar2_table(236) := '65646261636B203D20617065782E6A517565727928222322202B20704944202B2022202E637573746F6D66696C652D666565646261636B22293B0D0A0D0A2020202020207661722066696C65457874203D2027637573746F6D66696C652D6578742D2720';
wwv_flow_api.g_varchar2_table(237) := '2B2066696C654E616D652E73706C697428272E27292E706F7028292E746F4C6F7765724361736528293B0D0A0D0A20202020202075706C6F6164466565646261636B0D0A2020202020202020202E746578742866696C654E616D6529202F2F7365742066';
wwv_flow_api.g_varchar2_table(238) := '6565646261636B207465787420746F2066696C656E616D650D0A2020202020202020202E72656D6F7665436C6173732875706C6F6164466565646261636B2E64617461282766696C654578742729207C7C20272729202F2F72656D6F766520616E792065';
wwv_flow_api.g_varchar2_table(239) := '78697374696E672066696C6520657874656E73696F6E20636C6173730D0A2020202020202020202E616464436C6173732866696C6545787429202F2F6164642066696C6520657874656E73696F6E20636C6173730D0A2020202020202020202E64617461';
wwv_flow_api.g_varchar2_table(240) := '282766696C65457874272C2066696C6545787429202F2F73746F72652066696C6520657874656E73696F6E20666F7220636C6173732072656D6F76616C206F6E206E657874206368616E67650D0A2020202020202020202E616464436C61737328276375';
wwv_flow_api.g_varchar2_table(241) := '73746F6D66696C652D666565646261636B2D706F70756C6174656427293B202F2F61646420636C61737320746F2073686F7720706F70756C617465642073746174650D0A2020202020202F2F6368616E67652074657874206F6620627574746F6E090D0A';
wwv_flow_api.g_varchar2_table(242) := '20202020202075706C6F6164427574746F6E2E7465787428746869732E5F6F7074696F6E732E7472616E736C6174696F6E4C6162656C732E6D6F726542746E4C6162656C293B0D0A0D0A2020207D2C0D0A2020205F6765744974656D427946696C654964';
wwv_flow_api.g_varchar2_table(243) := '3A2066756E6374696F6E28696429207B0D0A202020202020766172206974656D203D20746869732E5F6C697374456C656D656E742E66697273744368696C643B0D0A0D0A2020202020202F2F2074686572652063616E277420626520747874206E6F6465';
wwv_flow_api.g_varchar2_table(244) := '7320696E2064796E616D6963616C6C792063726561746564206C6973740D0A2020202020202F2F20616E642077652063616E2020757365206E6578745369626C696E670D0A2020202020207768696C6520286974656D29207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(245) := '696620286974656D2E717146696C654964203D3D206964292072657475726E206974656D3B0D0A2020202020202020206974656D203D206974656D2E6E6578745369626C696E673B0D0A2020202020207D0D0A2020207D2C0D0A2020202F2A2A0D0A2020';
wwv_flow_api.g_varchar2_table(246) := '20202A2064656C656761746520636C69636B206576656E7420666F722063616E63656C206C696E6B0D0A202020202A2A2F0D0A2020205F62696E6443616E63656C4576656E743A2066756E6374696F6E2829207B0D0A2020202020207661722073656C66';
wwv_flow_api.g_varchar2_table(247) := '203D20746869732C0D0A2020202020202020206C697374203D20746869732E5F6C697374456C656D656E743B0D0A0D0A20202020202071712E617474616368286C6973742C2027636C69636B272C2066756E6374696F6E286529207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(248) := '20202065203D2065207C7C2077696E646F772E6576656E743B0D0A20202020202020202076617220746172676574203D20652E746172676574207C7C20652E737263456C656D656E743B0D0A0D0A2020202020202020206966202871712E686173436C61';
wwv_flow_api.g_varchar2_table(249) := '7373287461726765742C2073656C662E5F636C61737365732E63616E63656C2929207B0D0A20202020202020202020202071712E70726576656E7444656661756C742865293B0D0A0D0A202020202020202020202020766172206974656D203D20746172';
wwv_flow_api.g_varchar2_table(250) := '6765742E706172656E744E6F64653B0D0A20202020202020202020202073656C662E5F68616E646C65722E63616E63656C286974656D2E717146696C654964293B0D0A20202020202020202020202071712E72656D6F7665286974656D293B0D0A202020';
wwv_flow_api.g_varchar2_table(251) := '2020202020207D0D0A2020202020207D293B0D0A2020207D0D0A7D293B0D0A0D0A71712E55706C6F616444726F705A6F6E65203D2066756E6374696F6E286F29207B0D0A202020746869732E5F6F7074696F6E73203D207B0D0A202020202020656C656D';
wwv_flow_api.g_varchar2_table(252) := '656E743A206E756C6C2C0D0A2020202020206F6E456E7465723A2066756E6374696F6E286529207B7D2C0D0A2020202020206F6E4C656176653A2066756E6374696F6E286529207B7D2C0D0A2020202020202F2F206973206E6F74206669726564207768';
wwv_flow_api.g_varchar2_table(253) := '656E206C656176696E6720656C656D656E7420627920686F766572696E672064657363656E64616E74732020200D0A2020202020206F6E4C656176654E6F7444657363656E64616E74733A2066756E6374696F6E286529207B7D2C0D0A2020202020206F';
wwv_flow_api.g_varchar2_table(254) := '6E44726F703A2066756E6374696F6E286529207B7D0D0A2020207D3B0D0A20202071712E657874656E6428746869732E5F6F7074696F6E732C206F293B0D0A0D0A202020746869732E5F656C656D656E74203D20746869732E5F6F7074696F6E732E656C';
wwv_flow_api.g_varchar2_table(255) := '656D656E743B0D0A0D0A202020746869732E5F64697361626C6544726F704F75747369646528293B0D0A202020746869732E5F6174746163684576656E747328293B0D0A7D3B0D0A0D0A71712E55706C6F616444726F705A6F6E652E70726F746F747970';
wwv_flow_api.g_varchar2_table(256) := '65203D207B0D0A2020205F64697361626C6544726F704F7574736964653A2066756E6374696F6E286529207B0D0A2020202020202F2F2072756E206F6E6C79206F6E636520666F7220616C6C20696E7374616E6365730D0A202020202020696620282171';
wwv_flow_api.g_varchar2_table(257) := '712E55706C6F616444726F705A6F6E652E64726F704F75747369646544697361626C656429207B0D0A0D0A20202020202020202071712E61747461636828646F63756D656E742C2027647261676F766572272C2066756E6374696F6E286529207B0D0A20';
wwv_flow_api.g_varchar2_table(258) := '202020202020202020202069662028652E646174615472616E7366657229207B0D0A202020202020202020202020202020652E646174615472616E736665722E64726F70456666656374203D20276E6F6E65273B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(259) := '20652E70726576656E7444656661756C7428293B0D0A2020202020202020202020207D0D0A2020202020202020207D293B0D0A0D0A20202020202020202071712E55706C6F616444726F705A6F6E652E64726F704F75747369646544697361626C656420';
wwv_flow_api.g_varchar2_table(260) := '3D20747275653B0D0A2020202020207D0D0A2020207D2C0D0A2020205F6174746163684576656E74733A2066756E6374696F6E2829207B0D0A2020202020207661722073656C66203D20746869733B0D0A0D0A20202020202071712E6174746163682873';
wwv_flow_api.g_varchar2_table(261) := '656C662E5F656C656D656E742C2027647261676F766572272C2066756E6374696F6E286529207B0D0A202020202020202020696620282173656C662E5F697356616C696446696C6544726167286529292072657475726E3B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(262) := '2076617220656666656374203D20652E646174615472616E736665722E656666656374416C6C6F7765643B0D0A20202020202020202069662028656666656374203D3D20276D6F766527207C7C20656666656374203D3D20276C696E6B4D6F7665272920';
wwv_flow_api.g_varchar2_table(263) := '7B0D0A202020202020202020202020652E646174615472616E736665722E64726F70456666656374203D20276D6F7665273B202F2F20666F7220464620286F6E6C79206D6F766520616C6C6F77656429202020200D0A2020202020202020207D20656C73';
wwv_flow_api.g_varchar2_table(264) := '65207B0D0A202020202020202020202020652E646174615472616E736665722E64726F70456666656374203D2027636F7079273B202F2F20666F72204368726F6D650D0A2020202020202020207D0D0A0D0A202020202020202020652E73746F7050726F';
wwv_flow_api.g_varchar2_table(265) := '7061676174696F6E28293B0D0A202020202020202020652E70726576656E7444656661756C7428293B0D0A2020202020207D293B0D0A0D0A20202020202071712E6174746163682873656C662E5F656C656D656E742C202764726167656E746572272C20';
wwv_flow_api.g_varchar2_table(266) := '66756E6374696F6E286529207B0D0A202020202020202020696620282173656C662E5F697356616C696446696C6544726167286529292072657475726E3B0D0A0D0A20202020202020202073656C662E5F6F7074696F6E732E6F6E456E7465722865293B';
wwv_flow_api.g_varchar2_table(267) := '0D0A2020202020207D293B0D0A0D0A20202020202071712E6174746163682873656C662E5F656C656D656E742C2027647261676C65617665272C2066756E6374696F6E286529207B0D0A202020202020202020696620282173656C662E5F697356616C69';
wwv_flow_api.g_varchar2_table(268) := '6446696C6544726167286529292072657475726E3B0D0A0D0A20202020202020202073656C662E5F6F7074696F6E732E6F6E4C656176652865293B0D0A0D0A2020202020202020207661722072656C61746564546172676574203D20646F63756D656E74';
wwv_flow_api.g_varchar2_table(269) := '2E656C656D656E7446726F6D506F696E7428652E636C69656E74582C20652E636C69656E7459293B0D0A2020202020202020202F2F20646F206E6F742066697265207768656E206D6F76696E672061206D6F757365206F76657220612064657363656E64';
wwv_flow_api.g_varchar2_table(270) := '616E740D0A2020202020202020206966202871712E636F6E7461696E7328746869732C2072656C6174656454617267657429292072657475726E3B0D0A0D0A20202020202020202073656C662E5F6F7074696F6E732E6F6E4C656176654E6F7444657363';
wwv_flow_api.g_varchar2_table(271) := '656E64616E74732865293B0D0A2020202020207D293B0D0A0D0A20202020202071712E6174746163682873656C662E5F656C656D656E742C202764726F70272C2066756E6374696F6E286529207B0D0A202020202020202020696620282173656C662E5F';
wwv_flow_api.g_varchar2_table(272) := '697356616C696446696C6544726167286529292072657475726E3B0D0A0D0A202020202020202020652E70726576656E7444656661756C7428293B0D0A20202020202020202073656C662E5F6F7074696F6E732E6F6E44726F702865293B0D0A20202020';
wwv_flow_api.g_varchar2_table(273) := '20207D293B0D0A2020207D2C0D0A2020205F697356616C696446696C65447261673A2066756E6374696F6E286529207B0D0A202020202020766172206474203D20652E646174615472616E736665722C0D0A2020202020202020202F2F20646F206E6F74';
wwv_flow_api.g_varchar2_table(274) := '20636865636B2064742E74797065732E636F6E7461696E7320696E207765626B69742C206265636175736520697420637261736865732073616661726920342020202020202020202020200D0A20202020202020202069735765626B6974203D206E6176';
wwv_flow_api.g_varchar2_table(275) := '696761746F722E757365724167656E742E696E6465784F6628224170706C655765624B69742229203E202D313B0D0A0D0A2020202020202F2F2064742E656666656374416C6C6F776564206973206E6F6E6520696E2053616661726920350D0A20202020';
wwv_flow_api.g_varchar2_table(276) := '20202F2F2064742E74797065732E636F6E7461696E7320636865636B20697320666F722066697265666F782020202020202020202020200D0A20202020202072657475726E2064742026262064742E656666656374416C6C6F77656420213D20276E6F6E';
wwv_flow_api.g_varchar2_table(277) := '65272026260D0A2020202020202020202864742E66696C6573207C7C20282169735765626B69742026262064742E74797065732E636F6E7461696E732026262064742E74797065732E636F6E7461696E73282746696C6573272929293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(278) := '7D0D0A7D3B0D0A0D0A71712E55706C6F6164427574746F6E203D2066756E6374696F6E286F29207B0D0A202020746869732E5F6F7074696F6E73203D207B0D0A202020202020656C656D656E743A206E756C6C2C0D0A2020202020202F2F206966207365';
wwv_flow_api.g_varchar2_table(279) := '7420746F20747275652061646473206D756C7469706C652061747472696275746520746F2066696C6520696E7075742020202020200D0A2020202020206D756C7469706C653A2066616C73652C0D0A2020202020202F2F206E616D652061747472696275';
wwv_flow_api.g_varchar2_table(280) := '7465206F662066696C6520696E7075740D0A2020202020206E616D653A202766696C65272C0D0A2020202020206F6E4368616E67653A2066756E6374696F6E28696E70757429207B7D2C0D0A202020202020686F766572436C6173733A202771712D7570';
wwv_flow_api.g_varchar2_table(281) := '6C6F61642D627574746F6E2D686F766572272C0D0A202020202020666F637573436C6173733A202771712D75706C6F61642D627574746F6E2D666F637573270D0A2020207D3B0D0A0D0A20202071712E657874656E6428746869732E5F6F7074696F6E73';
wwv_flow_api.g_varchar2_table(282) := '2C206F293B0D0A0D0A202020746869732E5F656C656D656E74203D20746869732E5F6F7074696F6E732E656C656D656E743B0D0A0D0A2020202F2F206D616B6520627574746F6E207375697461626C6520636F6E7461696E657220666F7220696E707574';
wwv_flow_api.g_varchar2_table(283) := '0D0A20202071712E63737328746869732E5F656C656D656E742C207B0D0A202020202020706F736974696F6E3A202772656C6174697665272C0D0A2020202020206F766572666C6F773A202768696464656E272C0D0A2020202020202F2F204D616B6520';
wwv_flow_api.g_varchar2_table(284) := '737572652062726F77736520627574746F6E20697320696E2074686520726967687420736964650D0A2020202020202F2F20696E20496E7465726E6574204578706C6F7265720D0A202020202020646972656374696F6E3A20276C7472270D0A2020207D';
wwv_flow_api.g_varchar2_table(285) := '293B0D0A0D0A202020746869732E5F696E707574203D20746869732E5F637265617465496E70757428293B0D0A7D3B0D0A0D0A71712E55706C6F6164427574746F6E2E70726F746F74797065203D207B0D0A2020202F2A2072657475726E732066696C65';
wwv_flow_api.g_varchar2_table(286) := '20696E70757420656C656D656E74202A2F0D0A202020676574496E7075743A2066756E6374696F6E2829207B0D0A20202020202072657475726E20746869732E5F696E7075743B0D0A2020207D2C0D0A2020202F2A20636C65616E732F72656372656174';
wwv_flow_api.g_varchar2_table(287) := '6573207468652066696C6520696E707574202A2F0D0A20202072657365743A2066756E6374696F6E2829207B0D0A20202020202069662028746869732E5F696E7075742E706172656E744E6F646529207B0D0A20202020202020202071712E72656D6F76';
wwv_flow_api.g_varchar2_table(288) := '6528746869732E5F696E707574293B0D0A2020202020207D0D0A0D0A20202020202071712E72656D6F7665436C61737328746869732E5F656C656D656E742C20746869732E5F6F7074696F6E732E666F637573436C617373293B0D0A2020202020207468';
wwv_flow_api.g_varchar2_table(289) := '69732E5F696E707574203D20746869732E5F637265617465496E70757428293B0D0A2020207D2C0D0A2020205F637265617465496E7075743A2066756E6374696F6E2829207B0D0A20202020202076617220696E707574203D20646F63756D656E742E63';
wwv_flow_api.g_varchar2_table(290) := '7265617465456C656D656E742822696E70757422293B0D0A0D0A20202020202069662028746869732E5F6F7074696F6E732E6D756C7469706C6529207B0D0A202020202020202020696E7075742E73657441747472696275746528226D756C7469706C65';
wwv_flow_api.g_varchar2_table(291) := '222C20226D756C7469706C6522293B0D0A2020202020207D0D0A0D0A202020202020696E7075742E736574417474726962757465282274797065222C202266696C6522293B0D0A202020202020696E7075742E73657441747472696275746528226E616D';
wwv_flow_api.g_varchar2_table(292) := '65222C20746869732E5F6F7074696F6E732E6E616D65293B0D0A0D0A20202020202071712E63737328696E7075742C207B0D0A202020202020202020706F736974696F6E3A20276162736F6C757465272C0D0A2020202020202020202F2F20696E204F70';
wwv_flow_api.g_varchar2_table(293) := '657261206F6E6C79202762726F7773652720627574746F6E0D0A2020202020202020202F2F20697320636C69636B61626C6520616E64206974206973206C6F63617465642061740D0A2020202020202020202F2F20746865207269676874207369646520';
wwv_flow_api.g_varchar2_table(294) := '6F662074686520696E7075740D0A20202020202020202072696768743A20302C0D0A202020202020202020746F703A20302C0D0A202020202020202020666F6E7446616D696C793A2027417269616C272C0D0A2020202020202020202F2F203420706572';
wwv_flow_api.g_varchar2_table(295) := '736F6E73207265706F7274656420746869732C20746865206D61782076616C756573207468617420776F726B656420666F72207468656D2077657265203234332C203233362C203233362C203131380D0A202020202020202020666F6E7453697A653A20';
wwv_flow_api.g_varchar2_table(296) := '273131387078272C0D0A2020202020202020206D617267696E3A20302C0D0A20202020202020202070616464696E673A20302C0D0A202020202020202020637572736F723A2027706F696E746572272C0D0A2020202020202020206F7061636974793A20';
wwv_flow_api.g_varchar2_table(297) := '300D0A2020202020207D293B0D0A0D0A202020202020746869732E5F656C656D656E742E617070656E644368696C6428696E707574293B0D0A0D0A2020202020207661722073656C66203D20746869733B0D0A20202020202071712E6174746163682869';
wwv_flow_api.g_varchar2_table(298) := '6E7075742C20276368616E6765272C2066756E6374696F6E2829207B0D0A20202020202020202073656C662E5F6F7074696F6E732E6F6E4368616E676528696E707574293B0D0A2020202020207D293B0D0A0D0A20202020202071712E61747461636828';
wwv_flow_api.g_varchar2_table(299) := '696E7075742C20276D6F7573656F766572272C2066756E6374696F6E2829207B0D0A20202020202020202071712E616464436C6173732873656C662E5F656C656D656E742C2073656C662E5F6F7074696F6E732E686F766572436C617373293B0D0A2020';
wwv_flow_api.g_varchar2_table(300) := '202020207D293B0D0A20202020202071712E61747461636828696E7075742C20276D6F7573656F7574272C2066756E6374696F6E2829207B0D0A20202020202020202071712E72656D6F7665436C6173732873656C662E5F656C656D656E742C2073656C';
wwv_flow_api.g_varchar2_table(301) := '662E5F6F7074696F6E732E686F766572436C617373293B0D0A2020202020207D293B0D0A20202020202071712E61747461636828696E7075742C2027666F637573272C2066756E6374696F6E2829207B0D0A20202020202020202071712E616464436C61';
wwv_flow_api.g_varchar2_table(302) := '73732873656C662E5F656C656D656E742C2073656C662E5F6F7074696F6E732E666F637573436C617373293B0D0A2020202020207D293B0D0A20202020202071712E61747461636828696E7075742C2027626C7572272C2066756E6374696F6E2829207B';
wwv_flow_api.g_varchar2_table(303) := '0D0A20202020202020202071712E72656D6F7665436C6173732873656C662E5F656C656D656E742C2073656C662E5F6F7074696F6E732E666F637573436C617373293B0D0A2020202020207D293B0D0A0D0A2020202020202F2F20494520616E64204F70';
wwv_flow_api.g_varchar2_table(304) := '6572612C20756E666F7274756E6174656C7920686176652032207461622073746F7073206F6E2066696C6520696E7075740D0A2020202020202F2F20776869636820697320756E61636365707461626C6520696E206F757220636173652C206469736162';
wwv_flow_api.g_varchar2_table(305) := '6C65206B6579626F617264206163636573730D0A2020202020206966202877696E646F772E6174746163684576656E7429207B0D0A2020202020202020202F2F206974206973204945206F72204F706572610D0A202020202020202020696E7075742E73';
wwv_flow_api.g_varchar2_table(306) := '65744174747269627574652827746162496E646578272C20222D3122293B0D0A2020202020207D0D0A2020202020202F2F2074686520696E707574206974656D20697320616464656420616E642072656D6F76656420666F7220656163682066696C6520';
wwv_flow_api.g_varchar2_table(307) := '75706C6F6164206F7065726174696F6E0D0A2020202020202F2F20736F207765206E65656420746F20617474616368206F7572206576656E747320656163682074696D652069742773207265637265617465642E0D0A202020202020617065782E6A5175';
wwv_flow_api.g_varchar2_table(308) := '65727928696E707574292E637573746F6D46696C65496E70757428746869732E5F6F7074696F6E73293B0D0A20202020202072657475726E20696E7075743B0D0A2020207D0D0A7D3B0D0A0D0A2F2A2A0D0A202A20436C61737320666F722075706C6F61';
wwv_flow_api.g_varchar2_table(309) := '64696E672066696C65732C2075706C6F6164696E6720697473656C662069732068616E646C6564206279206368696C6420636C61737365730D0A202A2F0D0A71712E55706C6F616448616E646C65724162737472616374203D2066756E6374696F6E286F';
wwv_flow_api.g_varchar2_table(310) := '29207B0D0A202020746869732E5F6F7074696F6E73203D207B0D0A20202020202064656275673A2066616C73652C0D0A202020202020616374696F6E3A20272F75706C6F61642E706870272C0D0A2020202020202F2F206D6178696D756D206E756D6265';
wwv_flow_api.g_varchar2_table(311) := '72206F6620636F6E63757272656E742075706C6F61647320202020202020200D0A2020202020206D6178436F6E6E656374696F6E733A203939392C0D0A2020202020206F6E50726F67726573733A2066756E6374696F6E2869642C2066696C654E616D65';
wwv_flow_api.g_varchar2_table(312) := '2C206C6F616465642C20746F74616C29207B7D2C0D0A2020202020206F6E436F6D706C6574653A2066756E6374696F6E2869642C2066696C654E616D652C20726573706F6E736529207B7D2C0D0A2020202020206F6E43616E63656C3A2066756E637469';
wwv_flow_api.g_varchar2_table(313) := '6F6E2869642C2066696C654E616D6529207B7D0D0A2020207D3B0D0A20202071712E657874656E6428746869732E5F6F7074696F6E732C206F293B0D0A0D0A202020746869732E5F7175657565203D205B5D3B0D0A2020202F2F20706172616D7320666F';
wwv_flow_api.g_varchar2_table(314) := '722066696C657320696E2071756575650D0A202020746869732E5F706172616D73203D205B5D3B0D0A7D3B0D0A71712E55706C6F616448616E646C657241627374726163742E70726F746F74797065203D207B0D0A2020206C6F673A2066756E6374696F';
wwv_flow_api.g_varchar2_table(315) := '6E2873747229207B0D0A20202020202069662028746869732E5F6F7074696F6E732E64656275672026262077696E646F772E636F6E736F6C652920636F6E736F6C652E6C6F6728275B75706C6F616465725D2027202B20737472293B0D0A2020207D2C0D';
wwv_flow_api.g_varchar2_table(316) := '0A2020202F2A2A0D0A202020202A20416464732066696C65206F722066696C6520696E70757420746F207468652071756575650D0A202020202A204072657475726E732069640D0A202020202A2A2F0D0A2020206164643A2066756E6374696F6E286669';
wwv_flow_api.g_varchar2_table(317) := '6C6529207B7D2C0D0A2020202F2A2A0D0A202020202A2053656E6473207468652066696C65206964656E74696669656420627920696420616E64206164646974696F6E616C20717565727920706172616D7320746F20746865207365727665720D0A2020';
wwv_flow_api.g_varchar2_table(318) := '20202A2F0D0A20202075706C6F61643A2066756E6374696F6E2869642C20706172616D7329207B0D0A202020202020766172206C656E203D20746869732E5F71756575652E70757368286964293B0D0A0D0A20202020202076617220636F7079203D207B';
wwv_flow_api.g_varchar2_table(319) := '7D3B0D0A20202020202071712E657874656E6428636F70792C20706172616D73293B0D0A202020202020746869732E5F706172616D735B69645D203D20636F70793B0D0A0D0A2020202020202F2F20696620746F6F206D616E7920616374697665207570';
wwv_flow_api.g_varchar2_table(320) := '6C6F6164732C20776169742E2E2E0D0A202020202020696620286C656E203C3D20746869732E5F6F7074696F6E732E6D6178436F6E6E656374696F6E7329207B0D0A202020202020202020746869732E5F75706C6F61642869642C20746869732E5F7061';
wwv_flow_api.g_varchar2_table(321) := '72616D735B69645D293B0D0A2020202020207D0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A2043616E63656C732066696C652075706C6F61642062792069640D0A202020202A2F0D0A20202063616E63656C3A2066756E6374696F6E28696429';
wwv_flow_api.g_varchar2_table(322) := '207B0D0A202020202020746869732E5F63616E63656C286964293B0D0A202020202020746869732E5F64657175657565286964293B0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A2043616E63656C6C7320616C6C2075706C6F6164730D0A2020';
wwv_flow_api.g_varchar2_table(323) := '20202A2F0D0A20202063616E63656C416C6C3A2066756E6374696F6E2829207B0D0A202020202020666F7220287661722069203D20303B2069203C20746869732E5F71756575652E6C656E6774683B20692B2B29207B0D0A202020202020202020746869';
wwv_flow_api.g_varchar2_table(324) := '732E5F63616E63656C28746869732E5F71756575655B695D293B0D0A2020202020207D0D0A202020202020746869732E5F7175657565203D205B5D3B0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A2052657475726E73206E616D65206F662074';
wwv_flow_api.g_varchar2_table(325) := '68652066696C65206964656E7469666965642062792069640D0A202020202A2F0D0A2020206765744E616D653A2066756E6374696F6E28696429207B7D2C0D0A2020202F2A2A0D0A202020202A2052657475726E732073697A65206F6620746865206669';
wwv_flow_api.g_varchar2_table(326) := '6C65206964656E7469666965642062792069640D0A202020202A2F0D0A20202067657453697A653A2066756E6374696F6E28696429207B7D2C0D0A2020202F2A2A0D0A202020202A2052657475726E73206964206F662066696C6573206265696E672075';
wwv_flow_api.g_varchar2_table(327) := '706C6F61646564206F720D0A202020202A2077616974696E6720666F72207468656972207475726E0D0A202020202A2F0D0A20202067657451756575653A2066756E6374696F6E2829207B0D0A20202020202072657475726E20746869732E5F71756575';
wwv_flow_api.g_varchar2_table(328) := '653B0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A2041637475616C2075706C6F6164206D6574686F640D0A202020202A2F0D0A2020205F75706C6F61643A2066756E6374696F6E28696429207B7D2C0D0A2020202F2A2A0D0A202020202A2041';
wwv_flow_api.g_varchar2_table(329) := '637475616C2063616E63656C206D6574686F640D0A202020202A2F0D0A2020205F63616E63656C3A2066756E6374696F6E28696429207B7D2C0D0A2020202F2A2A0D0A202020202A2052656D6F76657320656C656D656E742066726F6D2071756575652C';
wwv_flow_api.g_varchar2_table(330) := '207374617274732075706C6F6164206F66206E6578740D0A202020202A2F0D0A2020205F646571756575653A2066756E6374696F6E28696429207B0D0A2020202020207661722069203D2071712E696E6465784F6628746869732E5F71756575652C2069';
wwv_flow_api.g_varchar2_table(331) := '64293B0D0A202020202020746869732E5F71756575652E73706C69636528692C2031293B0D0A0D0A202020202020766172206D6178203D20746869732E5F6F7074696F6E732E6D6178436F6E6E656374696F6E733B0D0A0D0A2020202020206966202874';
wwv_flow_api.g_varchar2_table(332) := '6869732E5F71756575652E6C656E677468203E3D206D617829207B0D0A202020202020202020766172206E6578744964203D20746869732E5F71756575655B6D6178202D20315D3B0D0A202020202020202020746869732E5F75706C6F6164286E657874';
wwv_flow_api.g_varchar2_table(333) := '49642C20746869732E5F706172616D735B6E65787449645D293B0D0A2020202020207D0D0A2020207D0D0A7D3B0D0A0D0A2F2A2A0D0A202A20436C61737320666F722075706C6F6164696E672066696C6573207573696E6720666F726D20616E64206966';
wwv_flow_api.g_varchar2_table(334) := '72616D650D0A202A2040696E6865726974732071712E55706C6F616448616E646C657241627374726163740D0A202A2F0D0A71712E55706C6F616448616E646C6572466F726D203D2066756E6374696F6E286F29207B0D0A20202071712E55706C6F6164';
wwv_flow_api.g_varchar2_table(335) := '48616E646C657241627374726163742E6170706C7928746869732C20617267756D656E7473293B0D0A0D0A202020746869732E5F696E70757473203D207B7D3B0D0A7D3B0D0A2F2F2040696E6865726974732071712E55706C6F616448616E646C657241';
wwv_flow_api.g_varchar2_table(336) := '627374726163740D0A71712E657874656E642871712E55706C6F616448616E646C6572466F726D2E70726F746F747970652C2071712E55706C6F616448616E646C657241627374726163742E70726F746F74797065293B0D0A0D0A71712E657874656E64';
wwv_flow_api.g_varchar2_table(337) := '2871712E55706C6F616448616E646C6572466F726D2E70726F746F747970652C207B0D0A2020206164643A2066756E6374696F6E2866696C65496E70757429207B0D0A20202020202066696C65496E7075742E73657441747472696275746528276E616D';
wwv_flow_api.g_varchar2_table(338) := '65272C2027705F74303327293B0D0A202020202020766172206964203D202771712D75706C6F61642D68616E646C65722D696672616D6527202B2071712E676574556E69717565496428293B0D0A0D0A202020202020746869732E5F696E707574735B69';
wwv_flow_api.g_varchar2_table(339) := '645D203D2066696C65496E7075743B0D0A0D0A2020202020202F2F2072656D6F76652066696C6520696E7075742066726F6D20444F4D0D0A2020202020206966202866696C65496E7075742E706172656E744E6F646529207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(340) := '71712E72656D6F76652866696C65496E707574293B0D0A2020202020207D0D0A0D0A20202020202072657475726E2069643B0D0A2020207D2C0D0A2020206765744E616D653A2066756E6374696F6E28696429207B0D0A2020202020202F2F2067657420';
wwv_flow_api.g_varchar2_table(341) := '696E7075742076616C756520616E642072656D6F7665207061746820746F206E6F726D616C697A650D0A20202020202072657475726E20746869732E5F696E707574735B69645D2E76616C75652E7265706C616365282F2E2A285C2F7C5C5C292F2C2022';
wwv_flow_api.g_varchar2_table(342) := '22293B0D0A2020207D2C0D0A2020205F63616E63656C3A2066756E6374696F6E28696429207B0D0A202020202020746869732E5F6F7074696F6E732E6F6E43616E63656C2869642C20746869732E6765744E616D6528696429293B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(343) := '2064656C65746520746869732E5F696E707574735B69645D3B0D0A0D0A20202020202076617220696672616D65203D20646F63756D656E742E676574456C656D656E7442794964286964293B0D0A20202020202069662028696672616D6529207B0D0A20';
wwv_flow_api.g_varchar2_table(344) := '20202020202020202F2F20746F2063616E63656C2072657175657374207365742073726320746F20736F6D657468696E6720656C73650D0A2020202020202020202F2F20776520757365207372633D226A6176617363726970743A66616C73653B222062';
wwv_flow_api.g_varchar2_table(345) := '65636175736520697420646F65736E27740D0A2020202020202020202F2F2074726967676572206965362070726F6D7074206F6E2068747470730D0A202020202020202020696672616D652E7365744174747269627574652827737263272C20276A6176';
wwv_flow_api.g_varchar2_table(346) := '617363726970743A66616C73653B27293B0D0A0D0A20202020202020202071712E72656D6F766528696672616D65293B0D0A2020202020207D0D0A2020207D2C0D0A2020205F75706C6F61643A2066756E6374696F6E2869642C20706172616D7329207B';
wwv_flow_api.g_varchar2_table(347) := '0D0A20202020202076617220696E707574203D20746869732E5F696E707574735B69645D3B0D0A0D0A2020202020206966202821696E70757429207B0D0A2020202020202020207468726F77206E6577204572726F72282766696C652077697468207061';
wwv_flow_api.g_varchar2_table(348) := '7373656420696420776173206E6F742061646465642C206F7220616C72656164792075706C6F61646564206F722063616E63656C6C656427293B0D0A2020202020207D0D0A0D0A2020202020207661722066696C654E616D65203D20746869732E676574';
wwv_flow_api.g_varchar2_table(349) := '4E616D65286964293B0D0A0D0A20202020202076617220696672616D65203D20746869732E5F637265617465496672616D65286964293B0D0A20202020202076617220666F726D203D20746869732E5F637265617465466F726D28696672616D652C2066';
wwv_flow_api.g_varchar2_table(350) := '696C654E616D652C20706172616D73293B0D0A202020202020666F726D2E617070656E644368696C6428696E707574293B0D0A0D0A2020202020207661722073656C66203D20746869733B0D0A202020202020746869732E5F6174746163684C6F616445';
wwv_flow_api.g_varchar2_table(351) := '76656E7428696672616D652C2066756E6374696F6E2829207B0D0A20202020202020202073656C662E6C6F672827696672616D65206C6F6164656427293B0D0A0D0A20202020202020202076617220726573706F6E7365203D2073656C662E5F67657449';
wwv_flow_api.g_varchar2_table(352) := '6672616D65436F6E74656E744A534F4E28696672616D65293B0D0A0D0A20202020202020202073656C662E5F6F7074696F6E732E6F6E436F6D706C6574652869642C2066696C654E616D652C20726573706F6E7365293B0D0A2020202020202020207365';
wwv_flow_api.g_varchar2_table(353) := '6C662E5F64657175657565286964293B0D0A0D0A20202020202020202064656C6574652073656C662E5F696E707574735B69645D3B0D0A2020202020202020202F2F2074696D656F757420616464656420746F2066697820627573792073746174652069';
wwv_flow_api.g_varchar2_table(354) := '6E204646332E360D0A20202020202020202073657454696D656F75742866756E6374696F6E2829207B0D0A20202020202020202020202071712E72656D6F766528696672616D65293B0D0A2020202020202020207D2C2031293B0D0A2020202020207D29';
wwv_flow_api.g_varchar2_table(355) := '3B0D0A0D0A202020202020666F726D2E7375626D697428293B0D0A20202020202071712E72656D6F766528666F726D293B0D0A0D0A20202020202072657475726E2069643B0D0A2020207D2C0D0A2020205F6174746163684C6F61644576656E743A2066';
wwv_flow_api.g_varchar2_table(356) := '756E6374696F6E28696672616D652C2063616C6C6261636B29207B0D0A20202020202071712E61747461636828696672616D652C20276C6F6164272C2066756E6374696F6E2829207B0D0A2020202020202020202F2F207768656E2077652072656D6F76';
wwv_flow_api.g_varchar2_table(357) := '6520696672616D652066726F6D20646F6D0D0A2020202020202020202F2F2074686520726571756573742073746F70732C2062757420696E204945206C6F61640D0A2020202020202020202F2F206576656E742066697265730D0A202020202020202020';
wwv_flow_api.g_varchar2_table(358) := '6966202821696672616D652E706172656E744E6F646529207B0D0A20202020202020202020202072657475726E3B0D0A2020202020202020207D0D0A0D0A2020202020202020202F2F20666978696E67204F706572612031302E35330D0A202020202020';
wwv_flow_api.g_varchar2_table(359) := '20202069662028696672616D652E636F6E74656E74446F63756D656E7420262620696672616D652E636F6E74656E74446F63756D656E742E626F647920262620696672616D652E636F6E74656E74446F63756D656E742E626F64792E696E6E657248544D';
wwv_flow_api.g_varchar2_table(360) := '4C203D3D202266616C73652229207B0D0A2020202020202020202020202F2F20496E204F70657261206576656E74206973206669726564207365636F6E642074696D650D0A2020202020202020202020202F2F207768656E20626F64792E696E6E657248';
wwv_flow_api.g_varchar2_table(361) := '544D4C206368616E6765642066726F6D2066616C73650D0A2020202020202020202020202F2F20746F2073657276657220726573706F6E736520617070726F782E2061667465722031207365630D0A2020202020202020202020202F2F207768656E2077';
wwv_flow_api.g_varchar2_table(362) := '652075706C6F61642066696C65207769746820696672616D650D0A20202020202020202020202072657475726E3B0D0A2020202020202020207D0D0A0D0A20202020202020202063616C6C6261636B28293B0D0A2020202020207D293B0D0A2020207D2C';
wwv_flow_api.g_varchar2_table(363) := '0D0A2020202F2A2A0D0A202020202A2046726F6D204150455820342E312E31206F6E7761726473207765206E6565642074776F2065787472612068696464656E206669656C64732077697468696E2074686520666F726D0D0A202020202A206275742074';
wwv_flow_api.g_varchar2_table(364) := '6865206F6E6C79207761792077652063616E20676574207468656D2069732062792072657175657374696E6720746865206170657820696672616D652075706C6F616420706167650D0A202020202A20616E64207265706C6163696E67207468656D2077';
wwv_flow_api.g_varchar2_table(365) := '697468696E206F75722073746174696320666F726D2067656E6572617465642077697468696E2074686520706C7567696E20504C53514C0D0A202020202A2F0D0A2020205F6765745365637572697479496E707574733A2066756E6374696F6E2829207B';
wwv_flow_api.g_varchar2_table(366) := '0D0A20202020202076617220756977203D20746869733B0D0A202020202020766172206F7074696F6E73203D207B0D0A20202020202020202022705F666C6F775F6964223A202428222370466C6F77496422292E76616C28292C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(367) := '2022705F666C6F775F737465705F6964223A207569772E5F6F7074696F6E732E696672616D6550616765207C7C20223537353635222C0D0A20202020202020202022705F696E7374616E6365223A202428222370496E7374616E636522292E76616C2829';
wwv_flow_api.g_varchar2_table(368) := '2C0D0A20202020202020202022783031223A204D6174682E72616E646F6D28290D0A2020202020207D3B0D0A202020202020242E616A6178287B0D0A202020202020202020747970653A2022474554222C0D0A20202020202020202075726C3A20227777';
wwv_flow_api.g_varchar2_table(369) := '765F666C6F772E73686F77222C0D0A2020202020202020206173796E633A2066616C73652C0D0A202020202020202020646174613A206F7074696F6E732C0D0A202020202020202020737563636573733A2066756E6374696F6E286F626A29207B0D0A20';
wwv_flow_api.g_varchar2_table(370) := '202020202020202020202076617220696E70757448544D4C2C202470616765203D2024286F626A293B0D0A20202020202020202020202076617220696E70757473203D2024706167652E66696E6428275B6E616D653D22705F706167655F7375626D6973';
wwv_flow_api.g_varchar2_table(371) := '73696F6E5F6964225D2C5B6E616D653D22705F706167655F636865636B73756D225D2729207C7C205B5D3B0D0A202020202020202020202020666F7220287661722069203D20303B2069203C20696E707574732E6C656E6774683B20692B2B29207B0D0A';
wwv_flow_api.g_varchar2_table(372) := '202020202020202020202020202020696E70757448544D4C202B3D20696E707574735B695D2E6F7574657248544D4C3B0D0A2020202020202020202020207D0D0A2020202020202020202020207569772E5F6F7074696F6E732E696672616D65466F726D';
wwv_flow_api.g_varchar2_table(373) := '203D207569772E5F6F7074696F6E732E696672616D65466F726D2E7265706C616365282F235345435552495459232F2C20696E70757448544D4C293B0D0A2020202020202020207D0D0A2020202020207D293B0D0A0D0A2020207D2C0D0A2020202F2A2A';
wwv_flow_api.g_varchar2_table(374) := '0D0A202020202A2052657475726E73206A736F6E206F626A65637420726563656976656420627920696672616D652066726F6D207365727665722E0D0A202020202A2F0D0A2020205F676574496672616D65436F6E74656E744A534F4E3A2066756E6374';
wwv_flow_api.g_varchar2_table(375) := '696F6E28696672616D6529207B0D0A2020202020202F2F20696672616D652E636F6E74656E7457696E646F772E646F63756D656E74202D20666F722049453C370D0A20202020202076617220646F63203D20696672616D652E636F6E74656E74446F6375';
wwv_flow_api.g_varchar2_table(376) := '6D656E74203F20696672616D652E636F6E74656E74446F63756D656E74203A20696672616D652E636F6E74656E7457696E646F772E646F63756D656E742C0D0A202020202020202020726573706F6E73653B0D0A0D0A202020202020746869732E6C6F67';
wwv_flow_api.g_varchar2_table(377) := '2822636F6E76657274696E6720696672616D65277320696E6E657248544D4C20746F204A534F4E22293B0D0A202020202020746869732E6C6F672822696E6E657248544D4C203D2022202B20646F632E626F64792E696E6E657248544D4C2E7265706C61';
wwv_flow_api.g_varchar2_table(378) := '6365282F4C6F636174696F6E2E2A242F2C20272729293B0D0A0D0A202020202020747279207B0D0A202020202020202020726573706F6E7365203D206576616C28222822202B20646F632E626F64792E696E6E657248544D4C2E7265706C616365282F4C';
wwv_flow_api.g_varchar2_table(379) := '6F636174696F6E2E2A242F2C20272729202B20222922293B0D0A2020202020207D206361746368202865727229207B0D0A202020202020202020726573706F6E7365203D207B7D3B0D0A2020202020207D0D0A0D0A20202020202072657475726E207265';
wwv_flow_api.g_varchar2_table(380) := '73706F6E73653B0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A204372656174657320696672616D65207769746820756E69717565206E616D650D0A202020202A2F0D0A2020205F637265617465496672616D653A2066756E6374696F6E286964';
wwv_flow_api.g_varchar2_table(381) := '29207B0D0A2020202020202F2F2057652063616E27742075736520666F6C6C6F77696E6720636F646520617320746865206E616D65206174747269627574650D0A2020202020202F2F20776F6E27742062652070726F7065726C79207265676973746572';
wwv_flow_api.g_varchar2_table(382) := '656420696E204945362C20616E64206E65772077696E646F770D0A2020202020202F2F206F6E20666F726D207375626D69742077696C6C206F70656E0D0A2020202020202F2F2076617220696672616D65203D20646F63756D656E742E63726561746545';
wwv_flow_api.g_varchar2_table(383) := '6C656D656E742827696672616D6527293B0D0A2020202020202F2F20696672616D652E73657441747472696275746528276E616D65272C206964293B0D0A20202020202076617220696672616D65203D2071712E746F456C656D656E7428273C69667261';
wwv_flow_api.g_varchar2_table(384) := '6D65207372633D226A6176617363726970743A66616C73653B22206E616D653D2227202B206964202B202722202F3E27293B0D0A2020202020202F2F207372633D226A6176617363726970743A66616C73653B222072656D6F766573206965362070726F';
wwv_flow_api.g_varchar2_table(385) := '6D7074206F6E2068747470730D0A202020202020696672616D652E73657441747472696275746528276964272C206964293B0D0A0D0A202020202020696672616D652E7374796C652E646973706C6179203D20276E6F6E65273B0D0A202020202020646F';
wwv_flow_api.g_varchar2_table(386) := '63756D656E742E626F64792E617070656E644368696C6428696672616D65293B0D0A0D0A20202020202072657475726E20696672616D653B0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A204372656174657320666F726D2C2074686174207769';
wwv_flow_api.g_varchar2_table(387) := '6C6C206265207375626D697474656420746F20696672616D650D0A202020202A2F0D0A2020205F637265617465466F726D3A2066756E6374696F6E28696672616D652C2066696C654E616D652C20706172616D7329207B0D0A2020202020202F2F206672';
wwv_flow_api.g_varchar2_table(388) := '6F6D204150455820342E312E31206F6E7761726473207765206E656564206E657720736563757269747920696E666F726D6174696F6E2077697468696E2074686520666F726D0D0A202020202020746869732E5F6765745365637572697479496E707574';
wwv_flow_api.g_varchar2_table(389) := '7328293B0D0A2020202020202F2F20576520706173732074686520666F726D20617320616E206F7074696F6E207768656E20696E6974696C61697A696E672074686520706C7567696E0D0A2020202020202F2F207765206E65656420746F207265706C61';
wwv_flow_api.g_varchar2_table(390) := '6365207468652066696C656E616D652077697468696E2074686520666F726D20646566696E6974696F6E0D0A2020202020202F2F207768656E20776520706F73742069742C20696E206F7264657220746F20776F726B206F757420776861742066696C65';
wwv_flow_api.g_varchar2_table(391) := '6E616D65207765206E6565640D0A2020202020202F2F20746F206D6F7665206F7574206F66207777765F666C6F775F66696C65730D0A20202020202076617220666F726D203D2071712E746F456C656D656E7428746869732E5F6F7074696F6E732E6966';
wwv_flow_api.g_varchar2_table(392) := '72616D65466F726D2E7265706C616365282F2346494C454E414D45232F2C2066696C654E616D6529293B0D0A0D0A202020202020766172207175657279537472696E67203D2071712E6F626A3275726C28706172616D732C20746869732E5F6F7074696F';
wwv_flow_api.g_varchar2_table(393) := '6E732E616374696F6E293B0D0A0D0A202020202020666F726D2E7365744174747269627574652827616374696F6E272C207175657279537472696E67293B0D0A202020202020666F726D2E7365744174747269627574652827746172676574272C206966';
wwv_flow_api.g_varchar2_table(394) := '72616D652E6E616D65293B0D0A202020202020666F726D2E7374796C652E646973706C6179203D20276E6F6E65273B0D0A202020202020646F63756D656E742E626F64792E617070656E644368696C6428666F726D293B0D0A0D0A202020202020726574';
wwv_flow_api.g_varchar2_table(395) := '75726E20666F726D3B0D0A2020207D0D0A7D293B0D0A0D0A2F2A2A0D0A202A20436C61737320666F722075706C6F6164696E672066696C6573207573696E67207868720D0A202A2040696E6865726974732071712E55706C6F616448616E646C65724162';
wwv_flow_api.g_varchar2_table(396) := '7374726163740D0A202A2F0D0A71712E55706C6F616448616E646C6572586872203D2066756E6374696F6E286F29207B0D0A20202071712E55706C6F616448616E646C657241627374726163742E6170706C7928746869732C20617267756D656E747329';
wwv_flow_api.g_varchar2_table(397) := '3B0D0A0D0A202020746869732E5F66696C6573203D205B5D3B0D0A202020746869732E5F78687273203D205B5D3B0D0A202020746869732E5F61706578506172616D73203D2022223B0D0A202020746869732E5F7175657279537472696E67203D202222';
wwv_flow_api.g_varchar2_table(398) := '3B0D0A202020746869732E5F74657874203D2022223B0D0A202020746869732E5F61706578506172616D4172726179203D205B5D3B0D0A0D0A2020202F2F2063757272656E74206C6F616465642073697A6520696E20627974657320666F722065616368';
wwv_flow_api.g_varchar2_table(399) := '2066696C65200D0A202020746869732E5F6C6F61646564203D205B5D3B0D0A7D3B0D0A0D0A2F2F20737461746963206D6574686F640D0A71712E55706C6F616448616E646C65725868722E6973537570706F72746564203D2066756E6374696F6E282920';
wwv_flow_api.g_varchar2_table(400) := '7B0D0A20202076617220696E707574203D20646F63756D656E742E637265617465456C656D656E742827696E70757427293B0D0A202020696E7075742E74797065203D202766696C65273B0D0A0D0A20202072657475726E20280D0A202020202020276D';
wwv_flow_api.g_varchar2_table(401) := '756C7469706C652720696E20696E7075742026260D0A202020202020747970656F662077696E646F772E46696C6552656164657220213D2022756E646566696E6564222026260D0A202020202020747970656F662046696C6520213D2022756E64656669';
wwv_flow_api.g_varchar2_table(402) := '6E6564222026260D0A202020202020747970656F66286E657720584D4C48747470526571756573742829292E75706C6F616420213D2022756E646566696E656422293B0D0A7D3B0D0A0D0A2F2F2040696E6865726974732071712E55706C6F616448616E';
wwv_flow_api.g_varchar2_table(403) := '646C657241627374726163740D0A71712E657874656E642871712E55706C6F616448616E646C65725868722E70726F746F747970652C2071712E55706C6F616448616E646C657241627374726163742E70726F746F74797065290D0A0D0A71712E657874';
wwv_flow_api.g_varchar2_table(404) := '656E642871712E55706C6F616448616E646C65725868722E70726F746F747970652C207B0D0A2020202F2A2A0D0A202020202A20416464732066696C6520746F207468652071756575650D0A202020202A2052657475726E7320696420746F2075736520';
wwv_flow_api.g_varchar2_table(405) := '776974682075706C6F61642C2063616E63656C0D0A202020202A2A2F0D0A2020206164643A2066756E6374696F6E2866696C6529207B0D0A20202020202069662028212866696C6520696E7374616E63656F662046696C652929207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(406) := '2020207468726F77206E6577204572726F722827506173736564206F626A20696E206E6F7420612046696C652028696E2071712E55706C6F616448616E646C65725868722927293B0D0A2020202020207D0D0A0D0A20202020202072657475726E207468';
wwv_flow_api.g_varchar2_table(407) := '69732E5F66696C65732E707573682866696C6529202D20313B0D0A2020207D2C0D0A2020206765744E616D653A2066756E6374696F6E28696429207B0D0A2020202020207661722066696C65203D20746869732E5F66696C65735B69645D3B0D0A202020';
wwv_flow_api.g_varchar2_table(408) := '2020202F2F20666978206D697373696E67206E616D6520696E2053616661726920340D0A20202020202072657475726E2066696C652E66696C654E616D6520213D206E756C6C203F2066696C652E66696C654E616D65203A2066696C652E6E616D653B0D';
wwv_flow_api.g_varchar2_table(409) := '0A2020207D2C0D0A202020676574547970653A2066756E6374696F6E28696429207B0D0A2020202020207661722066696C65203D20746869732E5F66696C65735B69645D3B0D0A2020202020202F2F20666978206D697373696E67206E616D6520696E20';
wwv_flow_api.g_varchar2_table(410) := '53616661726920340D0A20202020202072657475726E2066696C652E7479706520213D206E756C6C203F2066696C652E74797065203A2027746578742F68746D6C273B0D0A2020207D2C0D0A20202067657453697A653A2066756E6374696F6E28696429';
wwv_flow_api.g_varchar2_table(411) := '207B0D0A2020202020207661722066696C65203D20746869732E5F66696C65735B69645D3B0D0A20202020202072657475726E2066696C652E66696C6553697A6520213D206E756C6C203F2066696C652E66696C6553697A65203A2066696C652E73697A';
wwv_flow_api.g_varchar2_table(412) := '653B0D0A2020207D2C0D0A2020202F2A2A0D0A202020202A2052657475726E732075706C6F6164656420627974657320666F722066696C65206964656E7469666965642062792069640D0A202020202A2F0D0A2020206765744C6F616465643A2066756E';
wwv_flow_api.g_varchar2_table(413) := '6374696F6E28696429207B0D0A20202020202072657475726E20746869732E5F6C6F616465645B69645D207C7C20303B0D0A2020207D2C0D0A202020617065784573636170653A2066756E6374696F6E2876616C29207B0D0A2020202020202F2F20666F';
wwv_flow_api.g_varchar2_table(414) := '72636520746F206265206120737472696E670D0A20202020202076616C203D2076616C202B2022223B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C252F672C202225323522293B0D0A20202020202076616C203D2076616C2E72';
wwv_flow_api.g_varchar2_table(415) := '65706C616365282F5C2B2F672C202225324222293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C202F672C202225323022293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C2E2F672C20222532452229';
wwv_flow_api.g_varchar2_table(416) := '3B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C2A2F672C202225324122293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C3F2F672C202225334622293B0D0A20202020202076616C203D2076616C2E72';
wwv_flow_api.g_varchar2_table(417) := '65706C616365282F5C5C2F672C202225354322293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C2F2F672C202225324622293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C3E2F672C20222533452229';
wwv_flow_api.g_varchar2_table(418) := '3B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C3C2F672C202225334322293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C7B2F672C202225374222293B0D0A20202020202076616C203D2076616C2E72';
wwv_flow_api.g_varchar2_table(419) := '65706C616365282F5C7D2F672C202225374422293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C7E2F672C202225374522293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C5B2F672C20222535422229';
wwv_flow_api.g_varchar2_table(420) := '3B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C5D2F672C202225354422293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C602F672C202225363022293B0D0A20202020202076616C203D2076616C2E72';
wwv_flow_api.g_varchar2_table(421) := '65706C616365282F5C3B2F672C202225334222293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C3F2F672C202225334622293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C402F672C20222534302229';
wwv_flow_api.g_varchar2_table(422) := '3B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C262F672C202225323622293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C232F672C202225323322293B0D0A20202020202076616C203D2076616C2E72';
wwv_flow_api.g_varchar2_table(423) := '65706C616365282F5C7C2F672C202225374322293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C5E2F672C202225354522293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C3A2F672C20222533412229';
wwv_flow_api.g_varchar2_table(424) := '3B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C3D2F672C202225334422293B0D0A20202020202076616C203D2076616C2E7265706C616365282F5C242F672C202225323422293B0D0A2020202020202F2F76616C203D2076616C';
wwv_flow_api.g_varchar2_table(425) := '2E7265706C616365282F5C222F672C202225323222293B0D0A20202020202072657475726E2076616C3B0D0A2020207D2C0D0A20202073706C6974537472696E673A2066756E6374696F6E286F626A2C20704C656E67746829207B0D0A2020202020206C';
wwv_flow_api.g_varchar2_table(426) := '4172726179203D206F626A2E61706578506172616D41727261793B0D0A202020202020766172206368756E6B73203D204D6174682E6365696C286F626A2E746578742E6C656E677468202F20704C656E677468293B0D0A202020202020696620286F626A';
wwv_flow_api.g_varchar2_table(427) := '2E746578742E6C656E677468203C3D20704C656E67746829207B0D0A2020202020202020206C41727261795B6C41727261792E6C656E6774685D203D206F626A2E746578743B0D0A2020202020207D20656C7365207B0D0A202020202020202020666F72';
wwv_flow_api.g_varchar2_table(428) := '20287661722069203D20303B2069203C206368756E6B73202D20313B20692B2B29207B0D0A2020202020202020202020206C41727261795B6C41727261792E6C656E6774685D203D206F626A2E746578742E7375627374722869202A20704C656E677468';
wwv_flow_api.g_varchar2_table(429) := '2C20704C656E677468293B0D0A2020202020202020207D0D0A2020202020202020206C41727261795B6C41727261792E6C656E6774685D203D206F626A2E746578742E73756273747228286368756E6B73202D203129202A20704C656E6774682C206F62';
wwv_flow_api.g_varchar2_table(430) := '6A2E746578742E6C656E677468293B0D0A2020202020207D0D0A2020207D2C0D0A20202061706578416464506172616D3A2066756E6374696F6E286F626A2C206E616D652C2076616C29207B0D0A202020202020696620286F626A2E6170657850617261';
wwv_flow_api.g_varchar2_table(431) := '6D73203D3D20272729206F626A2E61706578506172616D73203D206E616D65202B20273D27202B202876616C20213D206E756C6C203F20746869732E617065784573636170652876616C29203A202727293B0D0A202020202020656C73650D0A20202020';
wwv_flow_api.g_varchar2_table(432) := '20202020206F626A2E61706578506172616D73203D206F626A2E61706578506172616D73202B20272627202B206E616D65202B20273D27202B202876616C20213D206E756C6C203F20746869732E617065784573636170652876616C29203A202727293B';
wwv_flow_api.g_varchar2_table(433) := '0D0A20202020202072657475726E3B0D0A2020207D2C0D0A2020206170657841646441727261793A2066756E6374696F6E286F626A2C2070466E756D62657229207B0D0A202020202020766172206C464E616D65203D202766273B0D0A20202020202070';
wwv_flow_api.g_varchar2_table(434) := '466E756D626572203D20246E766C2870466E756D6265722C2031293B0D0A2020202020206966202870466E756D626572203C20313029207B0D0A2020202020202020206C464E616D65202B3D20273027202B2070466E756D6265720D0A2020202020207D';
wwv_flow_api.g_varchar2_table(435) := '20656C7365207B0D0A2020202020202020206C464E616D65202B3D2070466E756D6265720D0A2020202020207D3B0D0A202020202020666F7220287661722069203D20302C206C656E203D206F626A2E61706578506172616D41727261792E6C656E6774';
wwv_flow_api.g_varchar2_table(436) := '683B2069203C206C656E3B20692B2B29207B0D0A202020202020202020746869732E61706578416464506172616D286F626A2C206C464E616D652C206F626A2E61706578506172616D41727261795B695D293B0D0A2020202020207D0D0A2020207D2C0D';
wwv_flow_api.g_varchar2_table(437) := '0A20202061706578416464417272617946696C653A2066756E6374696F6E28706172616D732C2066696C652C2070466E756D6265722C2078687229207B0D0A202020202020746869732E5F61706578506172616D73203D2022223B202F2F207265736574';
wwv_flow_api.g_varchar2_table(438) := '206F757220706172616D7320666F722065766572792066696C652075706C6F61640D0A2020202020202F2F206D6F64696669656420746F2073746F70207573696E6720676574417342696E61727920776869636820697320646570726563617465642069';
wwv_flow_api.g_varchar2_table(439) := '6E2046697265666F780D0A2020202020207661722073656C66203D20746869733B0D0A20202020202076617220726561646572203D206E65772046696C6552656164657228293B0D0A2020202020207265616465722E6F6E6C6F6164203D2066756E6374';
wwv_flow_api.g_varchar2_table(440) := '696F6E286529207B0D0A202020202020202020766172206F626A203D207B0D0A202020202020202020202020746578743A2022222C0D0A20202020202020202020202061706578506172616D41727261793A205B5D2C0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(441) := '61706578506172616D733A2022222C0D0A2020202020202020202020207175657279537472696E673A2022220D0A2020202020202020207D3B0D0A2020202020202020202F2F6F626A2E74657874203D2073656C662E626173653634456E636F64652865';
wwv_flow_api.g_varchar2_table(442) := '2E7461726765742E726573756C74293B0D0A2020202020202020206F626A2E74657874203D20652E7461726765742E726573756C743B0D0A2020202020202020202F2F207765206E65656420746F207374726970206F666620746865206C656164696E67';
wwv_flow_api.g_varchar2_table(443) := '206D696D6520696E666F0D0A2020202020202020206F626A2E74657874203D206F626A2E746578742E7265706C616365282F5E2E2A6261736536342C2F2C202222293B0D0A20202020202020202073656C662E73706C6974537472696E67286F626A2C20';
wwv_flow_api.g_varchar2_table(444) := '34303030293B0D0A20202020202020202073656C662E617065784164644172726179286F626A2C2070466E756D626572293B0D0A2020202020202020206F626A2E7175657279537472696E67203D2071712E6F626A3275726C28706172616D732C207365';
wwv_flow_api.g_varchar2_table(445) := '6C662E5F6F7074696F6E732E616374696F6E293B0D0A2020202020202020207868722E6F70656E2822504F5354222C206F626A2E7175657279537472696E672C2074727565293B0D0A2020202020202020207868722E7365745265717565737448656164';
wwv_flow_api.g_varchar2_table(446) := '65722822436F6E74656E742D54797065222C20226170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F64656422293B0D0A2020202020202020207868722E73656E64286F626A2E61706578506172616D73293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(447) := '2020206F626A203D207B7D3B0D0A2020202020207D3B0D0A2020202020202F2F7265616465722E72656164417342696E617279537472696E672866696C65293B0D0A2020202020207265616465722E7265616441734461746155524C2866696C65293B0D';
wwv_flow_api.g_varchar2_table(448) := '0A2020207D2C0D0A2020205F73656E644368756E6B3A2066756E6374696F6E28706172616D732C2066696C652C2070466E756D6265722C2078687229207B0D0A2020202020207661722073656C66203D20746869732C0D0A202020202020202020726561';
wwv_flow_api.g_varchar2_table(449) := '646572203D206E65772046696C6552656164657228292C0D0A2020202020202020206368756E6B53697A65203D2073656C662E5F6F7074696F6E732E6368756E6B53697A652C0D0A2020202020202020207374617274203D206368756E6B53697A65202A';
wwv_flow_api.g_varchar2_table(450) := '20287868722E5F6368756E6B4E756D626572202D2031292C0D0A202020202020202020656E64203D207374617274202B206368756E6B53697A652C0D0A20202020202020202066696C65436F6E74656E74203D2066696C652E736C696365287374617274';
wwv_flow_api.g_varchar2_table(451) := '2C20656E64292C0D0A2020202020202020206C656E677468203D2066696C65436F6E74656E742E73697A653B0D0A0D0A2020202020207265616465722E6F6E6C6F6164203D2066756E6374696F6E286529207B0D0A202020202020202020766172206F62';
wwv_flow_api.g_varchar2_table(452) := '6A203D207B0D0A202020202020202020202020746578743A2022222C0D0A20202020202020202020202061706578506172616D41727261793A205B5D2C0D0A20202020202020202020202061706578506172616D733A2022222C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(453) := '202020207175657279537472696E673A2022220D0A2020202020202020207D3B0D0A2020202020202020206F626A2E74657874203D20652E7461726765742E726573756C743B0D0A0D0A202020202020202020706172616D735B27783034275D203D2078';
wwv_flow_api.g_varchar2_table(454) := '68722E5F6368756E6B4E756D6265723B0D0A202020202020202020706172616D735B27783035275D203D207868722E5F6368756E6B546F74616C3B0D0A0D0A2020202020202020202F2F207765206E65656420746F207374726970206F66662074686520';
wwv_flow_api.g_varchar2_table(455) := '6C656164696E67206D696D6520696E666F0D0A2020202020202020206F626A2E74657874203D206F626A2E746578742E7265706C616365282F5E2E2A6261736536342C2F2C202222293B0D0A20202020202020202073656C662E73706C6974537472696E';
wwv_flow_api.g_varchar2_table(456) := '67286F626A2C2034303030293B0D0A20202020202020202073656C662E617065784164644172726179286F626A2C2070466E756D626572293B0D0A2020202020202020206F626A2E7175657279537472696E67203D2071712E6F626A3275726C28706172';
wwv_flow_api.g_varchar2_table(457) := '616D732C2073656C662E5F6F7074696F6E732E616374696F6E293B0D0A2020202020202020207868722E6F70656E2822504F5354222C206F626A2E7175657279537472696E672C2074727565293B0D0A2020202020202020207868722E73657452657175';
wwv_flow_api.g_varchar2_table(458) := '6573744865616465722822436F6E74656E742D54797065222C20226170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F64656422293B0D0A2020202020202020207868722E73656E64286F626A2E61706578506172616D73293B0D';
wwv_flow_api.g_varchar2_table(459) := '0A2020202020202020206F626A203D207B7D3B0D0A2020202020207D3B0D0A0D0A2020202020202F2F20726561642074686520736C696365206F66207468652066696C650D0A2020202020207265616465722E7265616441734461746155524C2866696C';
wwv_flow_api.g_varchar2_table(460) := '65436F6E74656E74293B0D0A2020207D2C0D0A2020202F2A0D0A202020202A2053656E6473207468652066696C65206964656E74696669656420627920696420616E64206164646974696F6E616C20717565727920706172616D7320746F207468652073';
wwv_flow_api.g_varchar2_table(461) := '65727665720D0A202020202A2040706172616D207B4F626A6563747D20706172616D73206E616D652D76616C756520737472696E672070616972730D0A202020202A2F0D0A2020205F75706C6F61644368756E6B656446696C653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(462) := '2869642C20706172616D7329207B0D0A2020202020207661722073656C66203D20746869732C0D0A20202020202020202066696C65203D20746869732E5F66696C65735B69645D2C0D0A2020202020202020206E616D65203D20746869732E6765744E61';
wwv_flow_api.g_varchar2_table(463) := '6D65286964292C0D0A20202020202020202073697A65203D20746869732E67657453697A65286964292C0D0A20202020202020202074797065203D20746869732E67657454797065286964293B0D0A0D0A202020202020746869732E5F6C6F616465645B';
wwv_flow_api.g_varchar2_table(464) := '69645D203D20303B0D0A0D0A20202020202076617220786872203D20746869732E5F786872735B69645D203D206E657720584D4C487474705265717565737428293B0D0A2020202020207661722073656C66203D20746869733B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(465) := '7868722E5F6368756E6B546F74616C203D204D6174682E6365696C2873697A65202F2073656C662E5F6F7074696F6E732E6368756E6B53697A65293B0D0A2020202020207868722E5F6368756E6B4E756D626572203D20313B0D0A0D0A20202020202078';
wwv_flow_api.g_varchar2_table(466) := '68722E75706C6F61642E6F6E70726F6772657373203D2066756E6374696F6E286529207B0D0A20202020202020202069662028652E6C656E677468436F6D70757461626C6529207B0D0A20202020202020202020202073656C662E5F6C6F616465645B69';
wwv_flow_api.g_varchar2_table(467) := '645D203D20652E6C6F616465643B0D0A20202020202020202020202073656C662E5F6F7074696F6E732E6F6E50726F67726573732869642C206E616D652C20652E6C6F616465642C20652E746F74616C2C207868722E5F6368756E6B4E756D6265722C20';
wwv_flow_api.g_varchar2_table(468) := '7868722E5F6368756E6B546F74616C293B0D0A2020202020202020207D0D0A2020202020207D3B0D0A0D0A2020202020207868722E6F6E726561647973746174656368616E6765203D2066756E6374696F6E2829207B0D0A202020202020202020696620';
wwv_flow_api.g_varchar2_table(469) := '287868722E72656164795374617465203D3D203429207B0D0A2020202020202020202020207868722E5F6368756E6B4E756D626572202B3D20313B0D0A202020202020202020202020696620287868722E5F6368756E6B4E756D626572203E207868722E';
wwv_flow_api.g_varchar2_table(470) := '5F6368756E6B546F74616C29207B0D0A20202020202020202020202020202073656C662E5F6F6E436F6D706C6574652869642C20786872293B0D0A2020202020202020202020207D20656C7365207B0D0A20202020202020202020202020202073656C66';
wwv_flow_api.g_varchar2_table(471) := '2E5F73656E644368756E6B28706172616D732C2066696C652C20312C20786872293B0D0A2020202020202020202020207D0D0A2020202020202020207D0D0A2020202020207D3B0D0A0D0A2020202020202F2F206275696C642071756572792073747269';
wwv_flow_api.g_varchar2_table(472) := '6E670D0A202020202020706172616D73203D20706172616D73207C7C207B7D3B0D0A202020202020706172616D735B27783031275D203D206E616D653B0D0A202020202020706172616D735B27783032275D203D2073697A653B0D0A2020202020207061';
wwv_flow_api.g_varchar2_table(473) := '72616D735B27783033275D203D20747970653B0D0A0D0A202020202020746869732E5F73656E644368756E6B28706172616D732C2066696C652C20312C20786872293B0D0A0D0A2020207D2C0D0A2020202F2A0D0A202020202A2053656E647320746865';
wwv_flow_api.g_varchar2_table(474) := '2066696C65206964656E74696669656420627920696420616E64206164646974696F6E616C20717565727920706172616D7320746F20746865207365727665720D0A202020202A2040706172616D207B4F626A6563747D20706172616D73206E616D652D';
wwv_flow_api.g_varchar2_table(475) := '76616C756520737472696E672070616972730D0A202020202A2F0D0A2020205F75706C6F6164456E7469726546696C653A2066756E6374696F6E2869642C20706172616D7329207B0D0A2020202020207661722066696C65203D20746869732E5F66696C';
wwv_flow_api.g_varchar2_table(476) := '65735B69645D2C0D0A2020202020202020206E616D65203D20746869732E6765744E616D65286964292C0D0A20202020202020202073697A65203D20746869732E67657453697A65286964292C0D0A20202020202020202074797065203D20746869732E';
wwv_flow_api.g_varchar2_table(477) := '67657454797065286964293B0D0A0D0A202020202020746869732E5F6C6F616465645B69645D203D20303B0D0A0D0A20202020202076617220786872203D20746869732E5F786872735B69645D203D206E657720584D4C48747470526571756573742829';
wwv_flow_api.g_varchar2_table(478) := '3B0D0A2020202020207661722073656C66203D20746869733B0D0A0D0A2020202020207868722E75706C6F61642E6F6E70726F6772657373203D2066756E6374696F6E286529207B0D0A20202020202020202069662028652E6C656E677468436F6D7075';
wwv_flow_api.g_varchar2_table(479) := '7461626C6529207B0D0A20202020202020202020202073656C662E5F6C6F616465645B69645D203D20652E6C6F616465643B0D0A20202020202020202020202073656C662E5F6F7074696F6E732E6F6E50726F67726573732869642C206E616D652C2065';
wwv_flow_api.g_varchar2_table(480) := '2E6C6F616465642C20652E746F74616C293B0D0A2020202020202020207D0D0A2020202020207D3B0D0A0D0A2020202020207868722E6F6E726561647973746174656368616E6765203D2066756E6374696F6E2829207B0D0A2020202020202020206966';
wwv_flow_api.g_varchar2_table(481) := '20287868722E72656164795374617465203D3D203429207B0D0A20202020202020202020202073656C662E5F6F6E436F6D706C6574652869642C20786872293B0D0A2020202020202020207D0D0A2020202020207D3B0D0A0D0A2020202020202F2F2062';
wwv_flow_api.g_varchar2_table(482) := '75696C6420717565727920737472696E670D0A202020202020706172616D73203D20706172616D73207C7C207B7D3B0D0A202020202020706172616D735B27783031275D203D206E616D653B0D0A202020202020706172616D735B27783032275D203D20';
wwv_flow_api.g_varchar2_table(483) := '73697A653B0D0A202020202020706172616D735B27783033275D203D20747970653B0D0A0D0A202020202020746869732E61706578416464417272617946696C6528706172616D732C2066696C652C20312C20786872293B0D0A0D0A2020207D2C0D0A20';
wwv_flow_api.g_varchar2_table(484) := '20202F2A0D0A202020202A2053656E6473207468652066696C65206964656E74696669656420627920696420616E64206164646974696F6E616C20717565727920706172616D7320746F20746865207365727665720D0A202020202A2040706172616D20';
wwv_flow_api.g_varchar2_table(485) := '7B4F626A6563747D20706172616D73206E616D652D76616C756520737472696E672070616972730D0A202020202A2F0D0A2020205F75706C6F61643A2066756E6374696F6E2869642C20706172616D7329207B0D0A2020202020207661722073656C6620';
wwv_flow_api.g_varchar2_table(486) := '3D20746869732C0D0A20202020202020202073697A65203D20746869732E67657453697A65286964293B0D0A0D0A2020202020202F2F20636865636B206966207765206E65656420746F20706572666F726D2061206368756E6B65642075706C6F61640D';
wwv_flow_api.g_varchar2_table(487) := '0A2020202020206966202873697A65203C3D2073656C662E5F6F7074696F6E732E6368756E6B53697A6529207B0D0A202020202020202020746869732E5F75706C6F6164456E7469726546696C652869642C20706172616D73293B0D0A2020202020207D';
wwv_flow_api.g_varchar2_table(488) := '20656C7365207B0D0A202020202020202020746869732E5F75706C6F61644368756E6B656446696C652869642C20706172616D73293B0D0A2020202020207D0D0A0D0A2020207D2C0D0A2020205F6F6E436F6D706C6574653A2066756E6374696F6E2869';
wwv_flow_api.g_varchar2_table(489) := '642C2078687229207B0D0A2020202020202F2F207468652072657175657374207761732061626F727465642F63616E63656C6C65640D0A2020202020206966202821746869732E5F66696C65735B69645D292072657475726E3B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(490) := '766172206E616D65203D20746869732E6765744E616D65286964293B0D0A2020202020207661722073697A65203D20746869732E67657453697A65286964293B0D0A0D0A202020202020746869732E5F6F7074696F6E732E6F6E50726F67726573732869';
wwv_flow_api.g_varchar2_table(491) := '642C206E616D652C2073697A652C2073697A65293B0D0A0D0A202020202020696620287868722E737461747573203D3D2032303029207B0D0A202020202020202020746869732E6C6F672822786872202D2073657276657220726573706F6E7365207265';
wwv_flow_api.g_varchar2_table(492) := '63656976656422293B0D0A202020202020202020746869732E6C6F672822726573706F6E736554657874203D2022202B207868722E726573706F6E736554657874293B0D0A0D0A20202020202020202076617220726573706F6E73653B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(493) := '202020202020747279207B0D0A202020202020202020202020726573706F6E7365203D206576616C28222822202B207868722E726573706F6E736554657874202B20222922293B0D0A2020202020202020207D206361746368202865727229207B0D0A20';
wwv_flow_api.g_varchar2_table(494) := '2020202020202020202020726573706F6E7365203D207B7D3B0D0A2020202020202020207D0D0A0D0A202020202020202020746869732E5F6F7074696F6E732E6F6E436F6D706C6574652869642C206E616D652C20726573706F6E7365293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(495) := '20202020207D20656C7365207B0D0A202020202020202020746869732E5F6F7074696F6E732E6F6E436F6D706C6574652869642C206E616D652C207B7D293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F66696C65735B69645D203D20';
wwv_flow_api.g_varchar2_table(496) := '6E756C6C3B0D0A202020202020746869732E5F786872735B69645D203D206E756C6C3B0D0A202020202020746869732E5F64657175657565286964293B0D0A2020207D2C0D0A2020205F63616E63656C3A2066756E6374696F6E28696429207B0D0A2020';
wwv_flow_api.g_varchar2_table(497) := '20202020746869732E5F6F7074696F6E732E6F6E43616E63656C2869642C20746869732E6765744E616D6528696429293B0D0A0D0A202020202020746869732E5F66696C65735B69645D203D206E756C6C3B0D0A0D0A2020202020206966202874686973';
wwv_flow_api.g_varchar2_table(498) := '2E5F786872735B69645D29207B0D0A202020202020202020746869732E5F786872735B69645D2E61626F727428293B0D0A202020202020202020746869732E5F786872735B69645D203D206E756C6C3B0D0A2020202020207D0D0A2020207D0D0A7D293B';
wwv_flow_api.g_varchar2_table(499) := '0D0A2F2A2A0D0A202A202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A202A206A517565727920637573746F6D66696C65';
wwv_flow_api.g_varchar2_table(500) := '696E70757420706C7567696E0D0A202A20417574686F723A2053636F7474204A65686C2C2073636F74744066696C616D656E7467726F75702E636F6D0D0A202A20436F707972696768742028632920323030392046696C616D656E742047726F75700D0A';
wwv_flow_api.g_varchar2_table(501) := '202A206C6963656E73656420756E646572204D4954202866696C616D656E7467726F75702E636F6D2F6578616D706C65732F6D69742D6C6963656E73652E747874290D0A202A202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(502) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A202A2F0D0A2866756E6374696F6E282429207B0D0A202020242E666E2E637573746F6D46696C65496E707574203D2066756E6374696F6E286F7074';
wwv_flow_api.g_varchar2_table(503) := '696F6E7329207B0D0A20202020202072657475726E20242874686973292E656163682866756E6374696F6E2829207B0D0A2020202020202020202F2F6170706C79206576656E747320616E64207374796C657320666F722066696C6520696E7075742065';
wwv_flow_api.g_varchar2_table(504) := '6C656D656E740D0A2020202020202020207661722066696C65496E707574203D20242874686973290D0A2020202020202020202020202E616464436C6173732827637573746F6D66696C652D696E7075742729202F2F61646420636C61737320666F7220';
wwv_flow_api.g_varchar2_table(505) := '4353530D0A2020202020202020202E6D6F7573656F7665722866756E6374696F6E2829207B0D0A20202020202020202020202075706C6F61642E616464436C6173732827637573746F6D66696C652D686F76657227293B0D0A2020202020202020207D29';
wwv_flow_api.g_varchar2_table(506) := '0D0A2020202020202020202020202E6D6F7573656F75742866756E6374696F6E2829207B0D0A20202020202020202020202020202075706C6F61642E72656D6F7665436C6173732827637573746F6D66696C652D686F76657227293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(507) := '2020202020207D290D0A2020202020202020202020202E666F6375732866756E6374696F6E2829207B0D0A20202020202020202020202020202075706C6F61642E616464436C6173732827637573746F6D66696C652D666F63757327293B0D0A20202020';
wwv_flow_api.g_varchar2_table(508) := '202020202020202020202066696C65496E7075742E64617461282776616C272C2066696C65496E7075742E76616C2829293B0D0A2020202020202020202020207D290D0A2020202020202020202020202E626C75722866756E6374696F6E2829207B0D0A';
wwv_flow_api.g_varchar2_table(509) := '20202020202020202020202020202075706C6F61642E72656D6F7665436C6173732827637573746F6D66696C652D666F63757327293B0D0A202020202020202020202020202020242874686973292E747269676765722827636865636B4368616E676527';
wwv_flow_api.g_varchar2_table(510) := '293B0D0A2020202020202020202020207D290D0A2020202020202020202020202E62696E64282764697361626C65272C2066756E6374696F6E2829207B0D0A20202020202020202020202020202066696C65496E7075742E61747472282764697361626C';
wwv_flow_api.g_varchar2_table(511) := '6564272C2074727565293B0D0A20202020202020202020202020202075706C6F61642E616464436C6173732827637573746F6D66696C652D64697361626C656427293B0D0A2020202020202020202020207D290D0A2020202020202020202020202E6269';
wwv_flow_api.g_varchar2_table(512) := '6E642827656E61626C65272C2066756E6374696F6E2829207B0D0A20202020202020202020202020202066696C65496E7075742E72656D6F766541747472282764697361626C656427293B0D0A20202020202020202020202020202075706C6F61642E72';
wwv_flow_api.g_varchar2_table(513) := '656D6F7665436C6173732827637573746F6D66696C652D64697361626C656427293B0D0A2020202020202020202020207D293B0D0A202020202020202020696620282428222322202B206F7074696F6E732E6964202B2022202E637573746F6D66696C65';
wwv_flow_api.g_varchar2_table(514) := '22292E6C656E677468203E203029207B0D0A2020202020202020202020202F2F63726561746520637573746F6D20636F6E74726F6C20636F6E7461696E65720D0A2020202020202020202020207661722075706C6F6164203D202428222322202B206F70';
wwv_flow_api.g_varchar2_table(515) := '74696F6E732E6964202B2022202E637573746F6D66696C6522293B0D0A2020202020202020202020202F2F63726561746520637573746F6D20636F6E74726F6C20627574746F6E0D0A2020202020202020202020207661722075706C6F6164427574746F';
wwv_flow_api.g_varchar2_table(516) := '6E203D202428222322202B206F7074696F6E732E6964202B2022202E637573746F6D66696C652D627574746F6E22293B0D0A2020202020202020202020202F2F63726561746520637573746F6D20636F6E74726F6C20666565646261636B0D0A20202020';
wwv_flow_api.g_varchar2_table(517) := '20202020202020207661722075706C6F6164466565646261636B203D202428222322202B206F7074696F6E732E6964202B2022202E637573746F6D66696C652D666565646261636B22293B0D0A2020202020202020207D20656C7365207B0D0A20202020';
wwv_flow_api.g_varchar2_table(518) := '20202020202020202F2F63726561746520637573746F6D20636F6E74726F6C20636F6E7461696E65720D0A2020202020202020202020207661722075706C6F6164203D202428273C64697620636C6173733D22637573746F6D66696C65223E3C2F646976';
wwv_flow_api.g_varchar2_table(519) := '3E27293B0D0A2020202020202020202020202F2F63726561746520637573746F6D20636F6E74726F6C20627574746F6E0D0A2020202020202020202020207661722075706C6F6164427574746F6E203D202428273C7370616E20636C6173733D22637573';
wwv_flow_api.g_varchar2_table(520) := '746F6D66696C652D627574746F6E2220617269612D68696464656E3D2274727565223E27202B206F7074696F6E732E62726F77736542746E4C6162656C202B20273C2F7370616E3E27292E617070656E64546F2875706C6F6164293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(521) := '2020202020202F2F63726561746520637573746F6D20636F6E74726F6C20666565646261636B0D0A2020202020202020202020207661722075706C6F6164466565646261636B203D202428273C7370616E20636C6173733D22637573746F6D66696C652D';
wwv_flow_api.g_varchar2_table(522) := '666565646261636B2220617269612D68696464656E3D2274727565223E27202B206F7074696F6E732E6E6F66696C654C6162656C202B20273C2F7370616E3E27292E617070656E64546F2875706C6F6164293B0D0A2020202020202020207D0D0A0D0A20';
wwv_flow_api.g_varchar2_table(523) := '20202020202020202F2F6D617463682064697361626C65642073746174650D0A2020202020202020206966202866696C65496E7075742E697328275B64697361626C65645D272929207B0D0A20202020202020202020202066696C65496E7075742E7472';
wwv_flow_api.g_varchar2_table(524) := '6967676572282764697361626C6527293B0D0A2020202020202020207D0D0A2020202020202020202F2F2052656D6F7665642074686520746F702073657474696E67206173206974207761732063617573696E6720612070726F626C656D207769746820';
wwv_flow_api.g_varchar2_table(525) := '7468652066696C6520696E707574206D6F76696E672075702074686520646F6375656D6E74206F6E207363726F6C6C0D0A20202020202020202075706C6F61640D0A2020202020202020202020202E6D6F7573656D6F76652866756E6374696F6E286529';
wwv_flow_api.g_varchar2_table(526) := '207B0D0A20202020202020202020202020202066696C65496E7075742E637373287B0D0A202020202020202020202020202020202020276C656674273A20652E7061676558202D2075706C6F61642E6F666673657428292E6C656674202D2066696C6549';
wwv_flow_api.g_varchar2_table(527) := '6E7075742E6F7574657257696474682829202B203230202F2F706F736974696F6E20726967687420736964652032307078207269676874206F6620637572736F722058290D0A2020202020202020202020202020207D293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(528) := '20207D290D0A2020202020202020202020202E696E7365727441667465722866696C65496E707574293B202F2F696E736572742061667465722074686520696E7075740D0A0D0A20202020202020202066696C65496E7075742E617070656E64546F2875';
wwv_flow_api.g_varchar2_table(529) := '706C6F6164293B0D0A0D0A2020202020207D293B0D0A2020207D0D0A7D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(163142595554670551)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'fileuploader.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202A20436F7079726967687428632920323031362C204150455820467265656C616E6365720A202A204C6963656E736520496E666F3A20687474703A2F2F7777772E74686561706578667265656C616E6365722E636F6D2F617065782F663F703D';
wwv_flow_api.g_varchar2_table(2) := '41504558465245454C414E4345523A46494C455F55504C4F41440A202A0A202A2F0A7661722071713D71717C7C7B7D3B71712E657874656E643D66756E6374696F6E28622C61297B666F7228766172206320696E2061297B625B635D3D615B635D7D7D3B';
wwv_flow_api.g_varchar2_table(3) := '71712E696E6465784F663D66756E6374696F6E28622C632C64297B696628622E696E6465784F66297B72657475726E20622E696E6465784F6628632C64297D643D647C7C303B76617220613D622E6C656E6774683B696628643C30297B642B3D617D666F';
wwv_flow_api.g_varchar2_table(4) := '72283B643C613B642B2B297B6966286420696E20622626625B645D3D3D3D63297B72657475726E20647D7D72657475726E202D317D3B71712E676574556E6971756549643D2866756E6374696F6E28297B76617220613D303B72657475726E2066756E63';
wwv_flow_api.g_varchar2_table(5) := '74696F6E28297B72657475726E20612B2B7D7D2928293B71712E6174746163683D66756E6374696F6E28612C632C62297B696628612E6164644576656E744C697374656E6572297B612E6164644576656E744C697374656E657228632C622C66616C7365';
wwv_flow_api.g_varchar2_table(6) := '297D656C73657B696628612E6174746163684576656E74297B612E6174746163684576656E7428226F6E222B632C62297D7D7D3B71712E6465746163683D66756E6374696F6E28612C632C62297B696628612E72656D6F76654576656E744C697374656E';
wwv_flow_api.g_varchar2_table(7) := '6572297B612E72656D6F76654576656E744C697374656E657228632C622C66616C7365297D656C73657B696628612E6174746163684576656E74297B612E6465746163684576656E7428226F6E222B632C62297D7D7D3B71712E70726576656E74446566';
wwv_flow_api.g_varchar2_table(8) := '61756C743D66756E6374696F6E2861297B696628612E70726576656E7444656661756C74297B612E70726576656E7444656661756C7428297D656C73657B612E72657475726E56616C75653D66616C73657D7D3B71712E696E736572744265666F72653D';
wwv_flow_api.g_varchar2_table(9) := '66756E6374696F6E28642C63297B632E706172656E744E6F64652E696E736572744265666F726528642C63297D3B71712E72656D6F76653D66756E6374696F6E2861297B612E706172656E744E6F64652E72656D6F76654368696C642861297D3B71712E';
wwv_flow_api.g_varchar2_table(10) := '636F6E7461696E733D66756E6374696F6E28622C61297B696628623D3D61297B72657475726E20747275657D696628622E636F6E7461696E73297B72657475726E20622E636F6E7461696E732861297D656C73657B72657475726E20212128612E636F6D';
wwv_flow_api.g_varchar2_table(11) := '70617265446F63756D656E74506F736974696F6E2862292638297D7D3B71712E746F456C656D656E743D2866756E6374696F6E28297B76617220613D646F63756D656E742E637265617465456C656D656E74282264697622293B72657475726E2066756E';
wwv_flow_api.g_varchar2_table(12) := '6374696F6E2863297B612E696E6E657248544D4C3D633B76617220623D612E66697273744368696C643B612E72656D6F76654368696C642862293B72657475726E20627D7D2928293B71712E6373733D66756E6374696F6E28612C62297B696628622E6F';
wwv_flow_api.g_varchar2_table(13) := '706163697479213D6E756C6C297B696628747970656F6620612E7374796C652E6F706163697479213D22737472696E67222626747970656F6628612E66696C7465727329213D22756E646566696E656422297B622E66696C7465723D22616C706861286F';
wwv_flow_api.g_varchar2_table(14) := '7061636974793D222B4D6174682E726F756E64283130302A622E6F706163697479292B2229227D7D71712E657874656E6428612E7374796C652C62297D3B71712E686173436C6173733D66756E6374696F6E28622C61297B76617220633D6E6577205265';
wwv_flow_api.g_varchar2_table(15) := '674578702822285E7C2029222B612B2228207C242922293B72657475726E20632E7465737428622E636C6173734E616D65297D3B71712E616464436C6173733D66756E6374696F6E28622C61297B6966282171712E686173436C61737328622C6129297B';
wwv_flow_api.g_varchar2_table(16) := '622E636C6173734E616D652B3D2220222B617D7D3B71712E72656D6F7665436C6173733D66756E6374696F6E28622C61297B76617220633D6E6577205265674578702822285E7C2029222B612B2228207C242922293B622E636C6173734E616D653D622E';
wwv_flow_api.g_varchar2_table(17) := '636C6173734E616D652E7265706C61636528632C222022292E7265706C616365282F5E5C732B7C5C732B242F672C2222297D3B71712E736574546578743D66756E6374696F6E28612C62297B612E696E6E6572546578743D623B612E74657874436F6E74';
wwv_flow_api.g_varchar2_table(18) := '656E743D627D3B71712E6368696C6472656E3D66756E6374696F6E2862297B76617220613D5B5D2C633D622E66697273744368696C643B7768696C652863297B696628632E6E6F6465547970653D3D31297B612E707573682863297D633D632E6E657874';
wwv_flow_api.g_varchar2_table(19) := '5369626C696E677D72657475726E20617D3B71712E6765744279436C6173733D66756E6374696F6E28642C65297B696628642E717565727953656C6563746F72416C6C297B72657475726E20642E717565727953656C6563746F72416C6C28222E222B65';
wwv_flow_api.g_varchar2_table(20) := '297D76617220623D5B5D3B76617220663D642E676574456C656D656E747342795461674E616D6528222A22293B76617220613D662E6C656E6774683B666F722876617220633D303B633C613B632B2B297B69662871712E686173436C61737328665B635D';
wwv_flow_api.g_varchar2_table(21) := '2C6529297B622E7075736828665B635D297D7D72657475726E20627D3B71712E6F626A3275726C3D66756E6374696F6E28662C622C68297B76617220673D5B5D2C643D2226222C653D66756E6374696F6E286B2C6A297B766172206C3D623F282F5C5B5C';
wwv_flow_api.g_varchar2_table(22) := '5D242F2E74657374286229293F623A622B225B222B6A2B225D223A6A3B696628286C213D22756E646566696E656422292626286A213D22756E646566696E65642229297B672E707573682828747970656F66206B3D3D3D226F626A65637422293F71712E';
wwv_flow_api.g_varchar2_table(23) := '6F626A3275726C286B2C6C2C74727565293A284F626A6563742E70726F746F747970652E746F537472696E672E63616C6C286B293D3D3D225B6F626A6563742046756E6374696F6E5D22293F656E636F6465555249436F6D706F6E656E74286C292B223D';
wwv_flow_api.g_varchar2_table(24) := '222B656E636F6465555249436F6D706F6E656E74286B2829293A656E636F6465555249436F6D706F6E656E74286C292B223D222B656E636F6465555249436F6D706F6E656E74286B29297D7D3B6966282168262662297B643D282F5C3F2F2E7465737428';
wwv_flow_api.g_varchar2_table(25) := '6229293F282F5C3F242F2E74657374286229293F22223A2226223A223F223B672E707573682862293B672E707573682871712E6F626A3275726C286629297D656C73657B696628284F626A6563742E70726F746F747970652E746F537472696E672E6361';
wwv_flow_api.g_varchar2_table(26) := '6C6C2866293D3D3D225B6F626A6563742041727261795D2229262628747970656F662066213D22756E646566696E65642229297B666F722876617220633D302C613D662E6C656E6774683B633C613B2B2B63297B6528665B635D2C63297D7D656C73657B';
wwv_flow_api.g_varchar2_table(27) := '69662828747970656F662066213D22756E646566696E6564222926262866213D3D6E756C6C29262628747970656F6620663D3D3D226F626A6563742229297B666F7228766172206320696E2066297B6528665B635D2C63297D7D656C73657B672E707573';
wwv_flow_api.g_varchar2_table(28) := '6828656E636F6465555249436F6D706F6E656E742862292B223D222B656E636F6465555249436F6D706F6E656E74286629297D7D7D72657475726E20672E6A6F696E2864292E7265706C616365282F5E262F2C2222292E7265706C616365282F2532302F';
wwv_flow_api.g_varchar2_table(29) := '672C222B22297D3B7661722071713D71717C7C7B7D3B71712E46696C6555706C6F6164657242617369633D66756E6374696F6E2861297B746869732E5F6F7074696F6E733D7B69643A22717175706C6F61646572222C64656275673A66616C73652C6163';
wwv_flow_api.g_varchar2_table(30) := '74696F6E3A222F7365727665722F75706C6F6164222C706172616D733A7B7D2C627574746F6E3A6E756C6C2C6D756C7469706C653A747275652C6D6178436F6E6E656374696F6E733A332C6368756E6B53697A653A313034383537362C616C6C6F776564';
wwv_flow_api.g_varchar2_table(31) := '457874656E73696F6E733A5B5D2C73697A654C696D69743A302C6D696E53697A654C696D69743A302C6F6E5375626D69743A66756E6374696F6E28632C62297B7D2C6F6E50726F67726573733A66756E6374696F6E28652C642C622C63297B7D2C6F6E43';
wwv_flow_api.g_varchar2_table(32) := '6F6D706C6574653A66756E6374696F6E28642C632C62297B7D2C6F6E43616E63656C3A66756E6374696F6E28632C62297B7D2C7472616E736C6174696F6E4C6162656C733A7B7D2C6D657373616765733A7B747970654572726F723A227B66696C657D20';
wwv_flow_api.g_varchar2_table(33) := '68617320696E76616C696420657874656E73696F6E2E204F6E6C79207B657874656E73696F6E737D2061726520616C6C6F7765642E222C73697A654572726F723A227B66696C657D20697320746F6F206C617267652C206D6178696D756D2066696C6520';
wwv_flow_api.g_varchar2_table(34) := '73697A65206973207B73697A654C696D69747D2E222C6D696E53697A654572726F723A227B66696C657D20697320746F6F20736D616C6C2C206D696E696D756D2066696C652073697A65206973207B6D696E53697A654C696D69747D2E222C656D707479';
wwv_flow_api.g_varchar2_table(35) := '4572726F723A227B66696C657D20697320656D7074792C20706C656173652073656C6563742066696C657320616761696E20776974686F75742069742E222C6F6E4C656176653A225468652066696C657320617265206265696E672075706C6F61646564';
wwv_flow_api.g_varchar2_table(36) := '2C20696620796F75206C65617665206E6F77207468652075706C6F61642077696C6C2062652063616E63656C6C65642E222C7069656365733A227069656365207B6368756E6B4E756D6265727D206F66207B6368756E6B546F74616C7D227D2C75706C6F';
wwv_flow_api.g_varchar2_table(37) := '6164656446696C65733A22222C73686F774D6573736167653A66756E6374696F6E2862297B616C6572742862297D7D3B71712E657874656E6428746869732E5F6F7074696F6E732C61293B746869732E5F66696C6573496E50726F67726573733D303B74';
wwv_flow_api.g_varchar2_table(38) := '6869732E5F66696C6555706C6F61644572726F72436F756E743D303B746869732E5F66696C6555706C6F61644572726F72733D5B5D3B746869732E5F68616E646C65723D746869732E5F63726561746555706C6F616448616E646C657228293B69662874';
wwv_flow_api.g_varchar2_table(39) := '6869732E5F6F7074696F6E732E627574746F6E297B746869732E5F627574746F6E3D746869732E5F63726561746555706C6F6164427574746F6E28746869732E5F6F7074696F6E732E627574746F6E297D746869732E5F70726576656E744C6561766549';
wwv_flow_api.g_varchar2_table(40) := '6E50726F677265737328297D3B71712E46696C6555706C6F6164657242617369632E70726F746F747970653D7B736574506172616D733A66756E6374696F6E2861297B746869732E5F6F7074696F6E732E706172616D733D617D2C676574496E50726F67';
wwv_flow_api.g_varchar2_table(41) := '726573733A66756E6374696F6E28297B72657475726E20746869732E5F66696C6573496E50726F67726573737D2C5F63726561746555706C6F6164427574746F6E3A66756E6374696F6E2862297B76617220613D746869733B72657475726E206E657720';
wwv_flow_api.g_varchar2_table(42) := '71712E55706C6F6164427574746F6E287B69643A746869732E5F6F7074696F6E732E69642C62726F77736542746E4C6162656C3A746869732E5F6F7074696F6E732E7472616E736C6174696F6E4C6162656C732E62726F77736542746E4C6162656C2C6E';
wwv_flow_api.g_varchar2_table(43) := '6F66696C654C6162656C3A746869732E5F6F7074696F6E732E7472616E736C6174696F6E4C6162656C732E6E6F66696C654C6162656C2C656C656D656E743A622C6D756C7469706C653A746869732E5F6F7074696F6E732E6D756C7469706C6526267171';
wwv_flow_api.g_varchar2_table(44) := '2E55706C6F616448616E646C65725868722E6973537570706F7274656428292626212121746869732E5F6F7074696F6E732E666F726365496672616D6555706C6F61642C6F6E4368616E67653A66756E6374696F6E2863297B612E5F6F6E496E70757443';
wwv_flow_api.g_varchar2_table(45) := '68616E67652863297D7D297D2C5F63726561746555706C6F616448616E646C65723A66756E6374696F6E28297B76617220613D746869732C633B69662871712E55706C6F616448616E646C65725868722E6973537570706F727465642829262621212174';
wwv_flow_api.g_varchar2_table(46) := '6869732E5F6F7074696F6E732E666F726365496672616D6555706C6F6164297B633D2255706C6F616448616E646C6572586872227D656C73657B633D2255706C6F616448616E646C6572466F726D227D76617220623D6E65772071715B635D287B696672';
wwv_flow_api.g_varchar2_table(47) := '616D65466F726D3A746869732E5F6F7074696F6E732E696672616D65466F726D2C696672616D65506167653A746869732E5F6F7074696F6E732E696672616D65506167652C64656275673A746869732E5F6F7074696F6E732E64656275672C616374696F';
wwv_flow_api.g_varchar2_table(48) := '6E3A746869732E5F6F7074696F6E732E616374696F6E2C6D6178436F6E6E656374696F6E733A746869732E5F6F7074696F6E732E6D6178436F6E6E656374696F6E732C6368756E6B53697A653A746869732E5F6F7074696F6E732E6368756E6B53697A65';
wwv_flow_api.g_varchar2_table(49) := '2C6F6E50726F67726573733A66756E6374696F6E28692C682C642C662C652C67297B612E5F6F6E50726F677265737328692C682C642C662C652C67293B612E5F6F7074696F6E732E6F6E50726F677265737328692C682C642C662C652C67297D2C6F6E43';
wwv_flow_api.g_varchar2_table(50) := '6F6D706C6574653A66756E6374696F6E28662C652C64297B612E5F6F6E436F6D706C65746528662C652C64293B612E5F6F7074696F6E732E6F6E436F6D706C65746528662C652C64297D2C6F6E43616E63656C3A66756E6374696F6E28652C64297B612E';
wwv_flow_api.g_varchar2_table(51) := '5F6F6E43616E63656C28652C64293B612E5F6F7074696F6E732E6F6E43616E63656C28652C64297D7D293B72657475726E20627D2C5F70726576656E744C65617665496E50726F67726573733A66756E6374696F6E28297B76617220613D746869733B71';
wwv_flow_api.g_varchar2_table(52) := '712E6174746163682877696E646F772C226265666F7265756E6C6F6164222C66756E6374696F6E2862297B69662821612E5F66696C6573496E50726F6772657373297B72657475726E7D76617220623D627C7C77696E646F772E6576656E743B622E7265';
wwv_flow_api.g_varchar2_table(53) := '7475726E56616C75653D612E5F6F7074696F6E732E6D657373616765732E6F6E4C656176653B72657475726E20612E5F6F7074696F6E732E6D657373616765732E6F6E4C656176657D297D2C5F6F6E5375626D69743A66756E6374696F6E28622C61297B';
wwv_flow_api.g_varchar2_table(54) := '746869732E5F66696C6573496E50726F67726573732B2B7D2C5F6F6E50726F67726573733A66756E6374696F6E28642C632C612C62297B7D2C5F6F6E436F6D706C6574653A66756E6374696F6E28632C622C61297B746869732E5F66696C6573496E5072';
wwv_flow_api.g_varchar2_table(55) := '6F67726573732D2D3B696628612E6572726F72297B746869732E5F6F7074696F6E732E73686F774D65737361676528612E6572726F72297D7D2C5F6F6E43616E63656C3A66756E6374696F6E28622C61297B746869732E5F66696C6573496E50726F6772';
wwv_flow_api.g_varchar2_table(56) := '6573732D2D7D2C5F6F6E496E7075744368616E67653A66756E6374696F6E2862297B76617220613D746869733B696628746869732E5F68616E646C657220696E7374616E63656F662071712E55706C6F616448616E646C6572586872297B746869732E5F';
wwv_flow_api.g_varchar2_table(57) := '75706C6F616446696C654C69737428622E66696C6573297D656C73657B696628746869732E5F76616C696461746546696C65286229297B24282223222B746869732E5F6F7074696F6E732E6964292E7472696767657228226265666F726573746172742E';
wwv_flow_api.g_varchar2_table(58) := '434F4D5F41465F504C5547494E5F4A515F46494C4555504C4F4144222C5B7B7769646765743A612C66696C65733A5B625D7D5D293B746869732E5F75706C6F616446696C652862297D7D746869732E5F627574746F6E2E726573657428297D2C5F75706C';
wwv_flow_api.g_varchar2_table(59) := '6F616446696C654C6973743A66756E6374696F6E2864297B76617220613D746869732C623D5B5D3B666F722876617220633D303B633C642E6C656E6774683B632B2B297B622E7075736828645B635D293B69662821746869732E5F76616C696461746546';
wwv_flow_api.g_varchar2_table(60) := '696C6528645B635D29297B72657475726E7D7D24282223222B746869732E5F6F7074696F6E732E6964292E7472696767657228226265666F726573746172742E434F4D5F41465F504C5547494E5F4A515F46494C4555504C4F4144222C5B7B7769646765';
wwv_flow_api.g_varchar2_table(61) := '743A746869732C66696C65733A627D5D293B666F722876617220633D303B633C622E6C656E6774683B632B2B297B746869732E5F75706C6F616446696C6528625B635D297D7D2C5F75706C6F616446696C653A66756E6374696F6E2861297B7661722063';
wwv_flow_api.g_varchar2_table(62) := '3D746869732E5F68616E646C65722E6164642861293B76617220623D746869732E5F68616E646C65722E6765744E616D652863293B696628746869732E5F6F7074696F6E732E6F6E5375626D697428632C6229213D3D66616C7365297B746869732E5F6F';
wwv_flow_api.g_varchar2_table(63) := '6E5375626D697428632C62293B746869732E5F68616E646C65722E75706C6F616428632C746869732E5F6F7074696F6E732E706172616D73297D7D2C5F76616C696461746546696C653A66756E6374696F6E2863297B76617220612C623B696628632E76';
wwv_flow_api.g_varchar2_table(64) := '616C7565297B613D632E76616C75652E7265706C616365282F2E2A285C2F7C5C5C292F2C2222297D656C73657B613D632E66696C654E616D65213D6E756C6C3F632E66696C654E616D653A632E6E616D653B623D632E66696C6553697A65213D6E756C6C';
wwv_flow_api.g_varchar2_table(65) := '3F632E66696C6553697A653A632E73697A657D69662821746869732E5F6973416C6C6F776564457874656E73696F6E286129297B746869732E5F6572726F722822747970654572726F72222C61293B72657475726E2066616C73657D656C73657B696628';
wwv_flow_api.g_varchar2_table(66) := '623D3D3D30297B746869732E5F6572726F722822656D7074794572726F72222C61293B72657475726E2066616C73657D656C73657B696628622626746869732E5F6F7074696F6E732E73697A654C696D69742626623E746869732E5F6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(67) := '73697A654C696D6974297B746869732E5F6572726F72282273697A654572726F72222C61293B72657475726E2066616C73657D656C73657B696628622626623C746869732E5F6F7074696F6E732E6D696E53697A654C696D6974297B746869732E5F6572';
wwv_flow_api.g_varchar2_table(68) := '726F7228226D696E53697A654572726F72222C61293B72657475726E2066616C73657D7D7D7D72657475726E20747275657D2C5F6572726F723A66756E6374696F6E28632C64297B76617220623D746869732E5F6F7074696F6E732E6D65737361676573';
wwv_flow_api.g_varchar2_table(69) := '5B635D3B66756E6374696F6E206128652C66297B623D622E7265706C61636528652C66297D6128227B66696C657D222C746869732E5F666F726D617446696C654E616D65286429293B6128227B657874656E73696F6E737D222C746869732E5F6F707469';
wwv_flow_api.g_varchar2_table(70) := '6F6E732E616C6C6F776564457874656E73696F6E732E6A6F696E28222C202229293B6128227B73697A654C696D69747D222C746869732E5F666F726D617453697A6528746869732E5F6F7074696F6E732E73697A654C696D697429293B6128227B6D696E';
wwv_flow_api.g_varchar2_table(71) := '53697A654C696D69747D222C746869732E5F666F726D617453697A6528746869732E5F6F7074696F6E732E6D696E53697A654C696D697429293B746869732E5F6F7074696F6E732E73686F774D6573736167652862297D2C5F666F726D617446696C654E';
wwv_flow_api.g_varchar2_table(72) := '616D653A66756E6374696F6E2861297B696628612E6C656E6774683E3333297B613D612E736C69636528302C3139292B222E2E2E222B612E736C696365282D3133297D72657475726E20617D2C5F6973416C6C6F776564457874656E73696F6E3A66756E';
wwv_flow_api.g_varchar2_table(73) := '6374696F6E2864297B76617220623D282D31213D3D642E696E6465784F6628222E2229293F642E7265706C616365282F2E2A5B2E5D2F2C2222292E746F4C6F7765724361736528293A22223B76617220633D746869732E5F6F7074696F6E732E616C6C6F';
wwv_flow_api.g_varchar2_table(74) := '776564457874656E73696F6E733B69662821632E6C656E677468297B72657475726E20747275657D666F722876617220613D303B613C632E6C656E6774683B612B2B297B696628635B615D2E746F4C6F7765724361736528293D3D62297B72657475726E';
wwv_flow_api.g_varchar2_table(75) := '20747275657D7D72657475726E2066616C73657D2C5F666F726D617453697A653A66756E6374696F6E2861297B76617220623D2D313B646F7B613D612F313032343B622B2B7D7768696C6528613E3939293B72657475726E204D6174682E6D617828612C';
wwv_flow_api.g_varchar2_table(76) := '302E31292E746F46697865642831292B5B226B42222C224D42222C224742222C225442222C225042222C224542225D5B625D7D2C5F756E656E636F64656453697A653A66756E6374696F6E2861297B72657475726E204D6174682E6365696C28612F3429';
wwv_flow_api.g_varchar2_table(77) := '2A337D7D3B71712E46696C6555706C6F616465723D66756E6374696F6E2861297B71712E46696C6555706C6F6164657242617369632E6170706C7928746869732C617267756D656E7473293B71712E657874656E6428746869732E5F6F7074696F6E732C';
wwv_flow_api.g_varchar2_table(78) := '7B656C656D656E743A6E756C6C2C6C697374456C656D656E743A6E756C6C2C74656D706C6174653A273C64697620636C6173733D2271712D75706C6F61646572223E3C64697620636C6173733D2271712D75706C6F61642D64726F702D61726561223E3C';
wwv_flow_api.g_varchar2_table(79) := '7370616E3E272B746869732E5F6F7074696F6E732E7472616E736C6174696F6E4C6162656C732E64726F70417265614D73672B273C2F7370616E3E3C2F6469763E3C64697620636C6173733D2271712D75706C6F61642D627574746F6E223E3C2F646976';
wwv_flow_api.g_varchar2_table(80) := '3E3C756C2069643D22272B746869732E5F6F7074696F6E732E69642B275F75706C6F6164732220636C6173733D2271712D75706C6F61642D6C69737422207374796C653D22646973706C61793A6E6F6E653B223E272B746869732E5F6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(81) := '75706C6F6164656446696C65732B223C2F756C3E3C2F6469763E222C66696C6554656D706C6174653A273C6C693E3C7370616E20636C6173733D2271712D75706C6F61642D66696C65223E3C2F7370616E3E3C7370616E20636C6173733D2271712D7570';
wwv_flow_api.g_varchar2_table(82) := '6C6F61642D7370696E6E6572223E3C2F7370616E3E3C7370616E20636C6173733D2271712D75706C6F61642D73697A65223E3C2F7370616E3E3C6120636C6173733D2271712D75706C6F61642D63616E63656C2220687265663D2223223E43616E63656C';
wwv_flow_api.g_varchar2_table(83) := '3C2F613E3C7370616E20636C6173733D2271712D75706C6F61642D6661696C65642D74657874223E4661696C65643C2F7370616E3E3C2F6C693E272C636C61737365733A7B627574746F6E3A2271712D75706C6F61642D627574746F6E222C64726F703A';
wwv_flow_api.g_varchar2_table(84) := '2271712D75706C6F61642D64726F702D61726561222C64726F704163746976653A2271712D75706C6F61642D64726F702D617265612D616374697665222C6C6973743A2271712D75706C6F61642D6C697374222C66696C653A2271712D75706C6F61642D';
wwv_flow_api.g_varchar2_table(85) := '66696C65222C7370696E6E65723A2271712D75706C6F61642D7370696E6E6572222C73697A653A2271712D75706C6F61642D73697A65222C63616E63656C3A2271712D75706C6F61642D63616E63656C222C737563636573733A2271712D75706C6F6164';
wwv_flow_api.g_varchar2_table(86) := '2D73756363657373222C6661696C3A2271712D75706C6F61642D6661696C227D7D293B71712E657874656E6428746869732E5F6F7074696F6E732C61293B746869732E5F656C656D656E743D746869732E5F6F7074696F6E732E656C656D656E743B7468';
wwv_flow_api.g_varchar2_table(87) := '69732E5F656C656D656E742E696E6E657248544D4C3D746869732E5F6F7074696F6E732E74656D706C6174653B746869732E5F6C697374456C656D656E743D746869732E5F6F7074696F6E732E6C697374456C656D656E747C7C746869732E5F66696E64';
wwv_flow_api.g_varchar2_table(88) := '28746869732E5F656C656D656E742C226C69737422293B746869732E5F636C61737365733D746869732E5F6F7074696F6E732E636C61737365733B746869732E5F627574746F6E3D746869732E5F63726561746555706C6F6164427574746F6E28746869';
wwv_flow_api.g_varchar2_table(89) := '732E5F66696E6428746869732E5F656C656D656E742C22627574746F6E2229293B746869732E5F62696E6443616E63656C4576656E7428293B746869732E5F73657475704472616744726F7028297D3B71712E657874656E642871712E46696C6555706C';
wwv_flow_api.g_varchar2_table(90) := '6F616465722E70726F746F747970652C71712E46696C6555706C6F6164657242617369632E70726F746F74797065293B71712E657874656E642871712E46696C6555706C6F616465722E70726F746F747970652C7B5F66696E643A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(91) := '632C62297B76617220613D71712E6765744279436C61737328632C746869732E5F6F7074696F6E732E636C61737365735B625D295B305D3B6966282161297B7468726F77206E6577204572726F722822656C656D656E74206E6F7420666F756E6420222B';
wwv_flow_api.g_varchar2_table(92) := '62297D72657475726E20617D2C5F73657475704472616744726F703A66756E6374696F6E28297B76617220623D746869732C633D746869732E5F66696E6428746869732E5F656C656D656E742C2264726F7022293B632E7374796C652E77696474683D74';
wwv_flow_api.g_varchar2_table(93) := '6869732E5F6F7074696F6E732E77696474682B227078223B76617220613D6E65772071712E55706C6F616444726F705A6F6E65287B656C656D656E743A632C6F6E456E7465723A66756E6374696F6E2864297B71712E616464436C61737328632C622E5F';
wwv_flow_api.g_varchar2_table(94) := '636C61737365732E64726F70416374697665293B642E73746F7050726F7061676174696F6E28297D2C6F6E4C656176653A66756E6374696F6E2864297B642E73746F7050726F7061676174696F6E28297D2C6F6E4C656176654E6F7444657363656E6461';
wwv_flow_api.g_varchar2_table(95) := '6E74733A66756E6374696F6E2864297B71712E72656D6F7665436C61737328632C622E5F636C61737365732E64726F70416374697665297D2C6F6E44726F703A66756E6374696F6E2864297B632E7374796C652E646973706C61793D226E6F6E65223B71';
wwv_flow_api.g_varchar2_table(96) := '712E72656D6F7665436C61737328632C622E5F636C61737365732E64726F70416374697665293B622E5F75706C6F616446696C654C69737428642E646174615472616E736665722E66696C6573297D7D293B632E7374796C652E646973706C61793D226E';
wwv_flow_api.g_varchar2_table(97) := '6F6E65223B71712E61747461636828646F63756D656E742C2264726167656E746572222C66756E6374696F6E2864297B69662821612E5F697356616C696446696C6544726167286429297B72657475726E7D632E7374796C652E646973706C61793D2262';
wwv_flow_api.g_varchar2_table(98) := '6C6F636B227D293B71712E61747461636828646F63756D656E742C22647261676C65617665222C66756E6374696F6E2866297B69662821612E5F697356616C696446696C6544726167286629297B72657475726E7D76617220643D646F63756D656E742E';
wwv_flow_api.g_varchar2_table(99) := '656C656D656E7446726F6D506F696E7428662E636C69656E74582C662E636C69656E7459293B69662821647C7C642E6E6F64654E616D653D3D2248544D4C227C7C642E6E6F64654E616D653D3D22424F445922297B632E7374796C652E646973706C6179';
wwv_flow_api.g_varchar2_table(100) := '3D226E6F6E65227D7D297D2C5F6F6E5375626D69743A66756E6374696F6E28622C61297B746869732E5F66696C6555706C6F61644572726F72733D5B5D3B71712E46696C6555706C6F6164657242617369632E70726F746F747970652E5F6F6E5375626D';
wwv_flow_api.g_varchar2_table(101) := '69742E6170706C7928746869732C617267756D656E7473293B746869732E5F616464546F4C69737428622C61297D2C5F6F6E50726F67726573733A66756E6374696F6E28632C662C672C692C642C68297B76617220623D746869732E5F6F7074696F6E73';
wwv_flow_api.g_varchar2_table(102) := '2E6D657373616765732E7069656365732C653D28673D3D3D69293B66756E6374696F6E2061286D2C6E297B623D622E7265706C616365286D2C6E297D69662864262668297B673D746869732E5F756E656E636F64656453697A652867293B693D74686973';
wwv_flow_api.g_varchar2_table(103) := '2E5F756E656E636F64656453697A652869293B6128227B6368756E6B4E756D6265727D222C4D6174682E6D696E28647C7C312C687C7C3129293B6128227B6368756E6B546F74616C7D222C687C7C31293B622B3D222920222B746869732E5F666F726D61';
wwv_flow_api.g_varchar2_table(104) := '7453697A652828642D31292A746869732E5F6F7074696F6E732E6368756E6B53697A65297D656C73657B623D22227D71712E46696C6555706C6F6164657242617369632E70726F746F747970652E5F6F6E50726F67726573732E6170706C792874686973';
wwv_flow_api.g_varchar2_table(105) := '2C617267756D656E7473293B766172206B3D746869732E5F6765744974656D427946696C6549642863293B766172206C3D746869732E5F66696E64286B2C2273697A6522293B6C2E7374796C652E646973706C61793D22696E6C696E65223B766172206A';
wwv_flow_api.g_varchar2_table(106) := '3B6966282165297B6A3D2228222B4D6174682E726F756E6428672F692A313030292B22252066726F6D20222B746869732E5F666F726D617453697A652869292B2220222B627D656C73657B6A3D2862293F2228222B746869732E5F666F726D617453697A';
wwv_flow_api.g_varchar2_table(107) := '652869292B2220222B623A746869732E5F666F726D617453697A652869297D71712E73657454657874286C2C6A297D2C5F6F6E436F6D706C6574653A66756E6374696F6E28652C642C61297B71712E46696C6555706C6F6164657242617369632E70726F';
wwv_flow_api.g_varchar2_table(108) := '746F747970652E5F6F6E436F6D706C6574652E6170706C7928746869732C617267756D656E7473293B76617220623D746869732E5F6765744974656D427946696C6549642865292C633D617065782E6A5175657279282223222B746869732E5F6F707469';
wwv_flow_api.g_varchar2_table(109) := '6F6E732E69642B225F75706C6F61647322293B71712E72656D6F766528746869732E5F66696E6428622C2263616E63656C2229293B71712E72656D6F766528746869732E5F66696E6428622C227370696E6E65722229293B696628612E73756363657373';
wwv_flow_api.g_varchar2_table(110) := '297B71712E616464436C61737328622C746869732E5F636C61737365732E73756363657373293B617065782E6A517565727928746869732E5F66696E6428622C2266696C652229292E7772617028273C6120687265663D22272B612E6C696E6B2B272220';
wwv_flow_api.g_varchar2_table(111) := '2F3E27293B696628746869732E5F66696C6573496E50726F67726573733D3D3D302626746869732E5F6F7074696F6E732E686964654469616C6F674F6E436F6D706C657465297B632E6469616C6F672822636C6F736522297D7D656C73657B71712E6164';
wwv_flow_api.g_varchar2_table(112) := '64436C61737328622C746869732E5F636C61737365732E6661696C293B746869732E5F66696C6555706C6F61644572726F72436F756E742B2B3B746869732E5F66696C6555706C6F61644572726F72732E70757368287B69643A652C66696C654E616D65';
wwv_flow_api.g_varchar2_table(113) := '3A642C726573756C743A617D293B696628612E6D657373616765297B616C65727428612E6D657373616765297D617065782E6A5175657279282223222B746869732E5F6F7074696F6E732E6964292E7472696767657228226F6E6572726F722E434F4D5F';
wwv_flow_api.g_varchar2_table(114) := '41465F504C5547494E5F4A515F46494C4555504C4F4144222C5B7B7769646765743A746869732C6469616C6F673A632C69643A652C66696C654E616D653A642C726573756C743A617D5D297D696628746869732E5F66696C6573496E50726F6772657373';
wwv_flow_api.g_varchar2_table(115) := '3D3D3D30297B746869732E5F6F6E436F6D706C657465416C6C2863297D7D2C5F6F6E436F6D706C657465416C6C3A66756E6374696F6E2861297B617065782E6A5175657279282223222B746869732E5F6F7074696F6E732E6964292E7472696767657228';
wwv_flow_api.g_varchar2_table(116) := '226F6E636F6D706C657465616C6C2E434F4D5F41465F504C5547494E5F4A515F46494C4555504C4F4144222C5B7B7769646765743A746869732C6469616C6F673A617D5D293B696628746869732E5F66696C6573496E50726F67726573733D3D3D302626';
wwv_flow_api.g_varchar2_table(117) := '746869732E5F66696C6555706C6F61644572726F72436F756E743E30297B617065782E6A5175657279282223222B746869732E5F6F7074696F6E732E6964292E7472696767657228226F6E6572726F72616C6C2E434F4D5F41465F504C5547494E5F4A51';
wwv_flow_api.g_varchar2_table(118) := '5F46494C4555504C4F4144222C5B7B7769646765743A746869732C6469616C6F673A612C6572726F72733A746869732E5F66696C6555706C6F61644572726F72737D5D297D7D2C5F616464546F4C6973743A66756E6374696F6E28612C63297B76617220';
wwv_flow_api.g_varchar2_table(119) := '653D71712E746F456C656D656E7428746869732E5F6F7074696F6E732E66696C6554656D706C617465293B652E717146696C6549643D613B76617220623D746869732E5F66696E6428652C2266696C6522293B71712E7365745465787428622C74686973';
wwv_flow_api.g_varchar2_table(120) := '2E5F666F726D617446696C654E616D65286329293B746869732E5F66696E6428652C2273697A6522292E7374796C652E646973706C61793D226E6F6E65223B746869732E5F6C697374456C656D656E742E617070656E644368696C642865293B76617220';
wwv_flow_api.g_varchar2_table(121) := '683D746869732E5F6F7074696F6E732E69643B76617220693D617065782E6A5175657279282223222B682B22202E637573746F6D66696C6522293B76617220663D617065782E6A5175657279282223222B682B22202E637573746F6D66696C652D627574';
wwv_flow_api.g_varchar2_table(122) := '746F6E22293B76617220643D617065782E6A5175657279282223222B682B22202E637573746F6D66696C652D666565646261636B22293B76617220673D22637573746F6D66696C652D6578742D222B632E73706C697428222E22292E706F7028292E746F';
wwv_flow_api.g_varchar2_table(123) := '4C6F7765724361736528293B642E746578742863292E72656D6F7665436C61737328642E64617461282266696C6545787422297C7C2222292E616464436C6173732867292E64617461282266696C65457874222C67292E616464436C6173732822637573';
wwv_flow_api.g_varchar2_table(124) := '746F6D66696C652D666565646261636B2D706F70756C6174656422293B662E7465787428746869732E5F6F7074696F6E732E7472616E736C6174696F6E4C6162656C732E6D6F726542746E4C6162656C297D2C5F6765744974656D427946696C6549643A';
wwv_flow_api.g_varchar2_table(125) := '66756E6374696F6E2862297B76617220613D746869732E5F6C697374456C656D656E742E66697273744368696C643B7768696C652861297B696628612E717146696C6549643D3D62297B72657475726E20617D613D612E6E6578745369626C696E677D7D';
wwv_flow_api.g_varchar2_table(126) := '2C5F62696E6443616E63656C4576656E743A66756E6374696F6E28297B76617220613D746869732C623D746869732E5F6C697374456C656D656E743B71712E61747461636828622C22636C69636B222C66756E6374696F6E2866297B663D667C7C77696E';
wwv_flow_api.g_varchar2_table(127) := '646F772E6576656E743B76617220643D662E7461726765747C7C662E737263456C656D656E743B69662871712E686173436C61737328642C612E5F636C61737365732E63616E63656C29297B71712E70726576656E7444656661756C742866293B766172';
wwv_flow_api.g_varchar2_table(128) := '20633D642E706172656E744E6F64653B612E5F68616E646C65722E63616E63656C28632E717146696C654964293B71712E72656D6F76652863297D7D297D7D293B71712E55706C6F616444726F705A6F6E653D66756E6374696F6E2861297B746869732E';
wwv_flow_api.g_varchar2_table(129) := '5F6F7074696F6E733D7B656C656D656E743A6E756C6C2C6F6E456E7465723A66756E6374696F6E2862297B7D2C6F6E4C656176653A66756E6374696F6E2862297B7D2C6F6E4C656176654E6F7444657363656E64616E74733A66756E6374696F6E286229';
wwv_flow_api.g_varchar2_table(130) := '7B7D2C6F6E44726F703A66756E6374696F6E2862297B7D7D3B71712E657874656E6428746869732E5F6F7074696F6E732C61293B746869732E5F656C656D656E743D746869732E5F6F7074696F6E732E656C656D656E743B746869732E5F64697361626C';
wwv_flow_api.g_varchar2_table(131) := '6544726F704F75747369646528293B746869732E5F6174746163684576656E747328297D3B71712E55706C6F616444726F705A6F6E652E70726F746F747970653D7B5F64697361626C6544726F704F7574736964653A66756E6374696F6E2861297B6966';
wwv_flow_api.g_varchar2_table(132) := '282171712E55706C6F616444726F705A6F6E652E64726F704F75747369646544697361626C6564297B71712E61747461636828646F63756D656E742C22647261676F766572222C66756E6374696F6E2862297B696628622E646174615472616E73666572';
wwv_flow_api.g_varchar2_table(133) := '297B622E646174615472616E736665722E64726F704566666563743D226E6F6E65223B622E70726576656E7444656661756C7428297D7D293B71712E55706C6F616444726F705A6F6E652E64726F704F75747369646544697361626C65643D747275657D';
wwv_flow_api.g_varchar2_table(134) := '7D2C5F6174746163684576656E74733A66756E6374696F6E28297B76617220613D746869733B71712E61747461636828612E5F656C656D656E742C22647261676F766572222C66756E6374696F6E2863297B69662821612E5F697356616C696446696C65';
wwv_flow_api.g_varchar2_table(135) := '44726167286329297B72657475726E7D76617220623D632E646174615472616E736665722E656666656374416C6C6F7765643B696628623D3D226D6F7665227C7C623D3D226C696E6B4D6F766522297B632E646174615472616E736665722E64726F7045';
wwv_flow_api.g_varchar2_table(136) := '66666563743D226D6F7665227D656C73657B632E646174615472616E736665722E64726F704566666563743D22636F7079227D632E73746F7050726F7061676174696F6E28293B632E70726576656E7444656661756C7428297D293B71712E6174746163';
wwv_flow_api.g_varchar2_table(137) := '6828612E5F656C656D656E742C2264726167656E746572222C66756E6374696F6E2862297B69662821612E5F697356616C696446696C6544726167286229297B72657475726E7D612E5F6F7074696F6E732E6F6E456E7465722862297D293B71712E6174';
wwv_flow_api.g_varchar2_table(138) := '7461636828612E5F656C656D656E742C22647261676C65617665222C66756E6374696F6E2863297B69662821612E5F697356616C696446696C6544726167286329297B72657475726E7D612E5F6F7074696F6E732E6F6E4C656176652863293B76617220';
wwv_flow_api.g_varchar2_table(139) := '623D646F63756D656E742E656C656D656E7446726F6D506F696E7428632E636C69656E74582C632E636C69656E7459293B69662871712E636F6E7461696E7328746869732C6229297B72657475726E7D612E5F6F7074696F6E732E6F6E4C656176654E6F';
wwv_flow_api.g_varchar2_table(140) := '7444657363656E64616E74732863297D293B71712E61747461636828612E5F656C656D656E742C2264726F70222C66756E6374696F6E2862297B69662821612E5F697356616C696446696C6544726167286229297B72657475726E7D622E70726576656E';
wwv_flow_api.g_varchar2_table(141) := '7444656661756C7428293B612E5F6F7074696F6E732E6F6E44726F702862297D297D2C5F697356616C696446696C65447261673A66756E6374696F6E2863297B76617220623D632E646174615472616E736665722C613D6E6176696761746F722E757365';
wwv_flow_api.g_varchar2_table(142) := '724167656E742E696E6465784F6628224170706C655765624B697422293E2D313B72657475726E20622626622E656666656374416C6C6F776564213D226E6F6E6522262628622E66696C65737C7C2821612626622E74797065732E636F6E7461696E7326';
wwv_flow_api.g_varchar2_table(143) := '26622E74797065732E636F6E7461696E73282246696C6573222929297D7D3B71712E55706C6F6164427574746F6E3D66756E6374696F6E2861297B746869732E5F6F7074696F6E733D7B656C656D656E743A6E756C6C2C6D756C7469706C653A66616C73';
wwv_flow_api.g_varchar2_table(144) := '652C6E616D653A2266696C65222C6F6E4368616E67653A66756E6374696F6E2862297B7D2C686F766572436C6173733A2271712D75706C6F61642D627574746F6E2D686F766572222C666F637573436C6173733A2271712D75706C6F61642D627574746F';
wwv_flow_api.g_varchar2_table(145) := '6E2D666F637573227D3B71712E657874656E6428746869732E5F6F7074696F6E732C61293B746869732E5F656C656D656E743D746869732E5F6F7074696F6E732E656C656D656E743B71712E63737328746869732E5F656C656D656E742C7B706F736974';
wwv_flow_api.g_varchar2_table(146) := '696F6E3A2272656C6174697665222C6F766572666C6F773A2268696464656E222C646972656374696F6E3A226C7472227D293B746869732E5F696E7075743D746869732E5F637265617465496E70757428297D3B71712E55706C6F6164427574746F6E2E';
wwv_flow_api.g_varchar2_table(147) := '70726F746F747970653D7B676574496E7075743A66756E6374696F6E28297B72657475726E20746869732E5F696E7075747D2C72657365743A66756E6374696F6E28297B696628746869732E5F696E7075742E706172656E744E6F6465297B71712E7265';
wwv_flow_api.g_varchar2_table(148) := '6D6F766528746869732E5F696E707574297D71712E72656D6F7665436C61737328746869732E5F656C656D656E742C746869732E5F6F7074696F6E732E666F637573436C617373293B746869732E5F696E7075743D746869732E5F637265617465496E70';
wwv_flow_api.g_varchar2_table(149) := '757428297D2C5F637265617465496E7075743A66756E6374696F6E28297B76617220623D646F63756D656E742E637265617465456C656D656E742822696E70757422293B696628746869732E5F6F7074696F6E732E6D756C7469706C65297B622E736574';
wwv_flow_api.g_varchar2_table(150) := '41747472696275746528226D756C7469706C65222C226D756C7469706C6522297D622E736574417474726962757465282274797065222C2266696C6522293B622E73657441747472696275746528226E616D65222C746869732E5F6F7074696F6E732E6E';
wwv_flow_api.g_varchar2_table(151) := '616D65293B71712E63737328622C7B706F736974696F6E3A226162736F6C757465222C72696768743A302C746F703A302C666F6E7446616D696C793A22417269616C222C666F6E7453697A653A223131387078222C6D617267696E3A302C70616464696E';
wwv_flow_api.g_varchar2_table(152) := '673A302C637572736F723A22706F696E746572222C6F7061636974793A307D293B746869732E5F656C656D656E742E617070656E644368696C642862293B76617220613D746869733B71712E61747461636828622C226368616E6765222C66756E637469';
wwv_flow_api.g_varchar2_table(153) := '6F6E28297B612E5F6F7074696F6E732E6F6E4368616E67652862297D293B71712E61747461636828622C226D6F7573656F766572222C66756E6374696F6E28297B71712E616464436C61737328612E5F656C656D656E742C612E5F6F7074696F6E732E68';
wwv_flow_api.g_varchar2_table(154) := '6F766572436C617373297D293B71712E61747461636828622C226D6F7573656F7574222C66756E6374696F6E28297B71712E72656D6F7665436C61737328612E5F656C656D656E742C612E5F6F7074696F6E732E686F766572436C617373297D293B7171';
wwv_flow_api.g_varchar2_table(155) := '2E61747461636828622C22666F637573222C66756E6374696F6E28297B71712E616464436C61737328612E5F656C656D656E742C612E5F6F7074696F6E732E666F637573436C617373297D293B71712E61747461636828622C22626C7572222C66756E63';
wwv_flow_api.g_varchar2_table(156) := '74696F6E28297B71712E72656D6F7665436C61737328612E5F656C656D656E742C612E5F6F7074696F6E732E666F637573436C617373297D293B69662877696E646F772E6174746163684576656E74297B622E7365744174747269627574652822746162';
wwv_flow_api.g_varchar2_table(157) := '496E646578222C222D3122297D617065782E6A51756572792862292E637573746F6D46696C65496E70757428746869732E5F6F7074696F6E73293B72657475726E20627D7D3B71712E55706C6F616448616E646C657241627374726163743D66756E6374';
wwv_flow_api.g_varchar2_table(158) := '696F6E2861297B746869732E5F6F7074696F6E733D7B64656275673A66616C73652C616374696F6E3A222F75706C6F61642E706870222C6D6178436F6E6E656374696F6E733A3939392C6F6E50726F67726573733A66756E6374696F6E28652C642C622C';
wwv_flow_api.g_varchar2_table(159) := '63297B7D2C6F6E436F6D706C6574653A66756E6374696F6E28642C632C62297B7D2C6F6E43616E63656C3A66756E6374696F6E28632C62297B7D7D3B71712E657874656E6428746869732E5F6F7074696F6E732C61293B746869732E5F71756575653D5B';
wwv_flow_api.g_varchar2_table(160) := '5D3B746869732E5F706172616D733D5B5D7D3B71712E55706C6F616448616E646C657241627374726163742E70726F746F747970653D7B6C6F673A66756E6374696F6E2861297B696628746869732E5F6F7074696F6E732E6465627567262677696E646F';
wwv_flow_api.g_varchar2_table(161) := '772E636F6E736F6C65297B636F6E736F6C652E6C6F6728225B75706C6F616465725D20222B61297D7D2C6164643A66756E6374696F6E2861297B7D2C75706C6F61643A66756E6374696F6E28642C62297B76617220613D746869732E5F71756575652E70';
wwv_flow_api.g_varchar2_table(162) := '7573682864293B76617220633D7B7D3B71712E657874656E6428632C62293B746869732E5F706172616D735B645D3D633B696628613C3D746869732E5F6F7074696F6E732E6D6178436F6E6E656374696F6E73297B746869732E5F75706C6F616428642C';
wwv_flow_api.g_varchar2_table(163) := '746869732E5F706172616D735B645D297D7D2C63616E63656C3A66756E6374696F6E2861297B746869732E5F63616E63656C2861293B746869732E5F646571756575652861297D2C63616E63656C416C6C3A66756E6374696F6E28297B666F7228766172';
wwv_flow_api.g_varchar2_table(164) := '20613D303B613C746869732E5F71756575652E6C656E6774683B612B2B297B746869732E5F63616E63656C28746869732E5F71756575655B615D297D746869732E5F71756575653D5B5D7D2C6765744E616D653A66756E6374696F6E2861297B7D2C6765';
wwv_flow_api.g_varchar2_table(165) := '7453697A653A66756E6374696F6E2861297B7D2C67657451756575653A66756E6374696F6E28297B72657475726E20746869732E5F71756575657D2C5F75706C6F61643A66756E6374696F6E2861297B7D2C5F63616E63656C3A66756E6374696F6E2861';
wwv_flow_api.g_varchar2_table(166) := '297B7D2C5F646571756575653A66756E6374696F6E2864297B76617220623D71712E696E6465784F6628746869732E5F71756575652C64293B746869732E5F71756575652E73706C69636528622C31293B76617220613D746869732E5F6F7074696F6E73';
wwv_flow_api.g_varchar2_table(167) := '2E6D6178436F6E6E656374696F6E733B696628746869732E5F71756575652E6C656E6774683E3D61297B76617220633D746869732E5F71756575655B612D315D3B746869732E5F75706C6F616428632C746869732E5F706172616D735B635D297D7D7D3B';
wwv_flow_api.g_varchar2_table(168) := '71712E55706C6F616448616E646C6572466F726D3D66756E6374696F6E2861297B71712E55706C6F616448616E646C657241627374726163742E6170706C7928746869732C617267756D656E7473293B746869732E5F696E707574733D7B7D7D3B71712E';
wwv_flow_api.g_varchar2_table(169) := '657874656E642871712E55706C6F616448616E646C6572466F726D2E70726F746F747970652C71712E55706C6F616448616E646C657241627374726163742E70726F746F74797065293B71712E657874656E642871712E55706C6F616448616E646C6572';
wwv_flow_api.g_varchar2_table(170) := '466F726D2E70726F746F747970652C7B6164643A66756E6374696F6E2861297B612E73657441747472696275746528226E616D65222C22705F74303322293B76617220623D2271712D75706C6F61642D68616E646C65722D696672616D65222B71712E67';
wwv_flow_api.g_varchar2_table(171) := '6574556E69717565496428293B746869732E5F696E707574735B625D3D613B696628612E706172656E744E6F6465297B71712E72656D6F76652861297D72657475726E20627D2C6765744E616D653A66756E6374696F6E2861297B72657475726E207468';
wwv_flow_api.g_varchar2_table(172) := '69732E5F696E707574735B615D2E76616C75652E7265706C616365282F2E2A285C2F7C5C5C292F2C2222297D2C5F63616E63656C3A66756E6374696F6E2862297B746869732E5F6F7074696F6E732E6F6E43616E63656C28622C746869732E6765744E61';
wwv_flow_api.g_varchar2_table(173) := '6D65286229293B64656C65746520746869732E5F696E707574735B625D3B76617220613D646F63756D656E742E676574456C656D656E74427949642862293B69662861297B612E7365744174747269627574652822737263222C226A6176617363726970';
wwv_flow_api.g_varchar2_table(174) := '743A66616C73653B22293B71712E72656D6F76652861297D7D2C5F75706C6F61643A66756E6374696F6E28672C65297B76617220623D746869732E5F696E707574735B675D3B6966282162297B7468726F77206E6577204572726F72282266696C652077';
wwv_flow_api.g_varchar2_table(175) := '6974682070617373656420696420776173206E6F742061646465642C206F7220616C72656164792075706C6F61646564206F722063616E63656C6C656422297D76617220663D746869732E6765744E616D652867293B76617220633D746869732E5F6372';
wwv_flow_api.g_varchar2_table(176) := '65617465496672616D652867293B76617220643D746869732E5F637265617465466F726D28632C662C65293B642E617070656E644368696C642862293B76617220613D746869733B746869732E5F6174746163684C6F61644576656E7428632C66756E63';
wwv_flow_api.g_varchar2_table(177) := '74696F6E28297B612E6C6F672822696672616D65206C6F6164656422293B76617220683D612E5F676574496672616D65436F6E74656E744A534F4E2863293B612E5F6F7074696F6E732E6F6E436F6D706C65746528672C662C68293B612E5F6465717565';
wwv_flow_api.g_varchar2_table(178) := '75652867293B64656C65746520612E5F696E707574735B675D3B73657454696D656F75742866756E6374696F6E28297B71712E72656D6F76652863297D2C31297D293B642E7375626D697428293B71712E72656D6F76652864293B72657475726E20677D';
wwv_flow_api.g_varchar2_table(179) := '2C5F6174746163684C6F61644576656E743A66756E6374696F6E28612C62297B71712E61747461636828612C226C6F6164222C66756E6374696F6E28297B69662821612E706172656E744E6F6465297B72657475726E7D696628612E636F6E74656E7444';
wwv_flow_api.g_varchar2_table(180) := '6F63756D656E742626612E636F6E74656E74446F63756D656E742E626F64792626612E636F6E74656E74446F63756D656E742E626F64792E696E6E657248544D4C3D3D2266616C736522297B72657475726E7D6228297D297D2C5F676574536563757269';
wwv_flow_api.g_varchar2_table(181) := '7479496E707574733A66756E6374696F6E28297B76617220623D746869733B76617220613D7B705F666C6F775F69643A2428222370466C6F77496422292E76616C28292C705F666C6F775F737465705F69643A622E5F6F7074696F6E732E696672616D65';
wwv_flow_api.g_varchar2_table(182) := '506167657C7C223537353635222C705F696E7374616E63653A2428222370496E7374616E636522292E76616C28292C7830313A4D6174682E72616E646F6D28297D3B242E616A6178287B747970653A22474554222C75726C3A227777765F666C6F772E73';
wwv_flow_api.g_varchar2_table(183) := '686F77222C6173796E633A66616C73652C646174613A612C737563636573733A66756E6374696F6E2867297B76617220642C653D242867293B76617220633D652E66696E6428275B6E616D653D22705F706167655F7375626D697373696F6E5F6964225D';
wwv_flow_api.g_varchar2_table(184) := '2C5B6E616D653D22705F706167655F636865636B73756D225D27297C7C5B5D3B666F722876617220663D303B663C632E6C656E6774683B662B2B297B642B3D635B665D2E6F7574657248544D4C7D622E5F6F7074696F6E732E696672616D65466F726D3D';
wwv_flow_api.g_varchar2_table(185) := '622E5F6F7074696F6E732E696672616D65466F726D2E7265706C616365282F235345435552495459232F2C64297D7D297D2C5F676574496672616D65436F6E74656E744A534F4E3A66756E6374696F6E28696672616D65297B76617220646F633D696672';
wwv_flow_api.g_varchar2_table(186) := '616D652E636F6E74656E74446F63756D656E743F696672616D652E636F6E74656E74446F63756D656E743A696672616D652E636F6E74656E7457696E646F772E646F63756D656E742C726573706F6E73653B746869732E6C6F672822636F6E7665727469';
wwv_flow_api.g_varchar2_table(187) := '6E6720696672616D65277320696E6E657248544D4C20746F204A534F4E22293B746869732E6C6F672822696E6E657248544D4C203D20222B646F632E626F64792E696E6E657248544D4C2E7265706C616365282F4C6F636174696F6E2E2A242F2C222229';
wwv_flow_api.g_varchar2_table(188) := '293B7472797B726573706F6E73653D6576616C282228222B646F632E626F64792E696E6E657248544D4C2E7265706C616365282F4C6F636174696F6E2E2A242F2C2222292B222922297D636174636828657272297B726573706F6E73653D7B7D7D726574';
wwv_flow_api.g_varchar2_table(189) := '75726E20726573706F6E73657D2C5F637265617465496672616D653A66756E6374696F6E2862297B76617220613D71712E746F456C656D656E7428273C696672616D65207372633D226A6176617363726970743A66616C73653B22206E616D653D22272B';
wwv_flow_api.g_varchar2_table(190) := '622B2722202F3E27293B612E73657441747472696275746528226964222C62293B612E7374796C652E646973706C61793D226E6F6E65223B646F63756D656E742E626F64792E617070656E644368696C642861293B72657475726E20617D2C5F63726561';
wwv_flow_api.g_varchar2_table(191) := '7465466F726D3A66756E6374696F6E28612C652C63297B746869732E5F6765745365637572697479496E7075747328293B76617220623D71712E746F456C656D656E7428746869732E5F6F7074696F6E732E696672616D65466F726D2E7265706C616365';
wwv_flow_api.g_varchar2_table(192) := '282F2346494C454E414D45232F2C6529293B76617220643D71712E6F626A3275726C28632C746869732E5F6F7074696F6E732E616374696F6E293B622E7365744174747269627574652822616374696F6E222C64293B622E736574417474726962757465';
wwv_flow_api.g_varchar2_table(193) := '2822746172676574222C612E6E616D65293B622E7374796C652E646973706C61793D226E6F6E65223B646F63756D656E742E626F64792E617070656E644368696C642862293B72657475726E20627D7D293B71712E55706C6F616448616E646C65725868';
wwv_flow_api.g_varchar2_table(194) := '723D66756E6374696F6E2861297B71712E55706C6F616448616E646C657241627374726163742E6170706C7928746869732C617267756D656E7473293B746869732E5F66696C65733D5B5D3B746869732E5F786872733D5B5D3B746869732E5F61706578';
wwv_flow_api.g_varchar2_table(195) := '506172616D733D22223B746869732E5F7175657279537472696E673D22223B746869732E5F746578743D22223B746869732E5F61706578506172616D41727261793D5B5D3B746869732E5F6C6F616465643D5B5D7D3B71712E55706C6F616448616E646C';
wwv_flow_api.g_varchar2_table(196) := '65725868722E6973537570706F727465643D66756E6374696F6E28297B76617220613D646F63756D656E742E637265617465456C656D656E742822696E70757422293B612E747970653D2266696C65223B72657475726E28226D756C7469706C65222069';
wwv_flow_api.g_varchar2_table(197) := '6E20612626747970656F662077696E646F772E46696C65526561646572213D22756E646566696E6564222626747970656F662046696C65213D22756E646566696E6564222626747970656F66286E657720584D4C48747470526571756573742829292E75';
wwv_flow_api.g_varchar2_table(198) := '706C6F6164213D22756E646566696E656422297D3B71712E657874656E642871712E55706C6F616448616E646C65725868722E70726F746F747970652C71712E55706C6F616448616E646C657241627374726163742E70726F746F74797065293B71712E';
wwv_flow_api.g_varchar2_table(199) := '657874656E642871712E55706C6F616448616E646C65725868722E70726F746F747970652C7B6164643A66756E6374696F6E2861297B69662821286120696E7374616E63656F662046696C6529297B7468726F77206E6577204572726F72282250617373';
wwv_flow_api.g_varchar2_table(200) := '6564206F626A20696E206E6F7420612046696C652028696E2071712E55706C6F616448616E646C65725868722922297D72657475726E20746869732E5F66696C65732E707573682861292D317D2C6765744E616D653A66756E6374696F6E2862297B7661';
wwv_flow_api.g_varchar2_table(201) := '7220613D746869732E5F66696C65735B625D3B72657475726E20612E66696C654E616D65213D6E756C6C3F612E66696C654E616D653A612E6E616D657D2C676574547970653A66756E6374696F6E2862297B76617220613D746869732E5F66696C65735B';
wwv_flow_api.g_varchar2_table(202) := '625D3B72657475726E20612E74797065213D6E756C6C3F612E747970653A22746578742F68746D6C227D2C67657453697A653A66756E6374696F6E2862297B76617220613D746869732E5F66696C65735B625D3B72657475726E20612E66696C6553697A';
wwv_flow_api.g_varchar2_table(203) := '65213D6E756C6C3F612E66696C6553697A653A612E73697A657D2C6765744C6F616465643A66756E6374696F6E2861297B72657475726E20746869732E5F6C6F616465645B615D7C7C307D2C617065784573636170653A66756E6374696F6E2861297B61';
wwv_flow_api.g_varchar2_table(204) := '3D612B22223B613D612E7265706C616365282F5C252F672C2225323522293B613D612E7265706C616365282F5C2B2F672C2225324222293B613D612E7265706C616365282F5C202F672C2225323022293B613D612E7265706C616365282F5C2E2F672C22';
wwv_flow_api.g_varchar2_table(205) := '25324522293B613D612E7265706C616365282F5C2A2F672C2225324122293B613D612E7265706C616365282F5C3F2F672C2225334622293B613D612E7265706C616365282F5C5C2F672C2225354322293B613D612E7265706C616365282F5C2F2F672C22';
wwv_flow_api.g_varchar2_table(206) := '25324622293B613D612E7265706C616365282F5C3E2F672C2225334522293B613D612E7265706C616365282F5C3C2F672C2225334322293B613D612E7265706C616365282F5C7B2F672C2225374222293B613D612E7265706C616365282F5C7D2F672C22';
wwv_flow_api.g_varchar2_table(207) := '25374422293B613D612E7265706C616365282F5C7E2F672C2225374522293B613D612E7265706C616365282F5C5B2F672C2225354222293B613D612E7265706C616365282F5C5D2F672C2225354422293B613D612E7265706C616365282F5C602F672C22';
wwv_flow_api.g_varchar2_table(208) := '25363022293B613D612E7265706C616365282F5C3B2F672C2225334222293B613D612E7265706C616365282F5C3F2F672C2225334622293B613D612E7265706C616365282F5C402F672C2225343022293B613D612E7265706C616365282F5C262F672C22';
wwv_flow_api.g_varchar2_table(209) := '25323622293B613D612E7265706C616365282F5C232F672C2225323322293B613D612E7265706C616365282F5C7C2F672C2225374322293B613D612E7265706C616365282F5C5E2F672C2225354522293B613D612E7265706C616365282F5C3A2F672C22';
wwv_flow_api.g_varchar2_table(210) := '25334122293B613D612E7265706C616365282F5C3D2F672C2225334422293B613D612E7265706C616365282F5C242F672C2225323422293B72657475726E20617D2C73706C6974537472696E673A66756E6374696F6E28632C61297B6C41727261793D63';
wwv_flow_api.g_varchar2_table(211) := '2E61706578506172616D41727261793B76617220643D4D6174682E6365696C28632E746578742E6C656E6774682F61293B696628632E746578742E6C656E6774683C3D61297B6C41727261795B6C41727261792E6C656E6774685D3D632E746578747D65';
wwv_flow_api.g_varchar2_table(212) := '6C73657B666F722876617220623D303B623C642D313B622B2B297B6C41727261795B6C41727261792E6C656E6774685D3D632E746578742E73756273747228622A612C61297D6C41727261795B6C41727261792E6C656E6774685D3D632E746578742E73';
wwv_flow_api.g_varchar2_table(213) := '75627374722828642D31292A612C632E746578742E6C656E677468297D7D2C61706578416464506172616D3A66756E6374696F6E28622C612C63297B696628622E61706578506172616D733D3D2222297B622E61706578506172616D733D612B223D222B';
wwv_flow_api.g_varchar2_table(214) := '2863213D6E756C6C3F746869732E617065784573636170652863293A2222297D656C73657B622E61706578506172616D733D622E61706578506172616D732B2226222B612B223D222B2863213D6E756C6C3F746869732E61706578457363617065286329';
wwv_flow_api.g_varchar2_table(215) := '3A2222297D72657475726E7D2C6170657841646441727261793A66756E6374696F6E28652C64297B76617220633D2266223B643D246E766C28642C31293B696628643C3130297B632B3D2230222B647D656C73657B632B3D647D666F722876617220623D';
wwv_flow_api.g_varchar2_table(216) := '302C613D652E61706578506172616D41727261792E6C656E6774683B623C613B622B2B297B746869732E61706578416464506172616D28652C632C652E61706578506172616D41727261795B625D297D7D2C61706578416464417272617946696C653A66';
wwv_flow_api.g_varchar2_table(217) := '756E6374696F6E28662C632C642C65297B746869732E5F61706578506172616D733D22223B76617220623D746869733B76617220613D6E65772046696C6552656164657228293B612E6F6E6C6F61643D66756E6374696F6E2868297B76617220673D7B74';
wwv_flow_api.g_varchar2_table(218) := '6578743A22222C61706578506172616D41727261793A5B5D2C61706578506172616D733A22222C7175657279537472696E673A22227D3B672E746578743D682E7461726765742E726573756C743B672E746578743D672E746578742E7265706C61636528';
wwv_flow_api.g_varchar2_table(219) := '2F5E2E2A6261736536342C2F2C2222293B622E73706C6974537472696E6728672C34303030293B622E61706578416464417272617928672C64293B672E7175657279537472696E673D71712E6F626A3275726C28662C622E5F6F7074696F6E732E616374';
wwv_flow_api.g_varchar2_table(220) := '696F6E293B652E6F70656E2822504F5354222C672E7175657279537472696E672C74727565293B652E736574526571756573744865616465722822436F6E74656E742D54797065222C226170706C69636174696F6E2F782D7777772D666F726D2D75726C';
wwv_flow_api.g_varchar2_table(221) := '656E636F64656422293B652E73656E6428672E61706578506172616D73293B673D7B7D7D3B612E7265616441734461746155524C2863297D2C5F73656E644368756E6B3A66756E6374696F6E28682C642C632C6A297B766172206B3D746869732C693D6E';
wwv_flow_api.g_varchar2_table(222) := '65772046696C6552656164657228292C663D6B2E5F6F7074696F6E732E6368756E6B53697A652C613D662A286A2E5F6368756E6B4E756D6265722D31292C673D612B662C653D642E736C69636528612C67292C623D652E73697A653B692E6F6E6C6F6164';
wwv_flow_api.g_varchar2_table(223) := '3D66756E6374696F6E286D297B766172206C3D7B746578743A22222C61706578506172616D41727261793A5B5D2C61706578506172616D733A22222C7175657279537472696E673A22227D3B6C2E746578743D6D2E7461726765742E726573756C743B68';
wwv_flow_api.g_varchar2_table(224) := '2E7830343D6A2E5F6368756E6B4E756D6265723B682E7830353D6A2E5F6368756E6B546F74616C3B6C2E746578743D6C2E746578742E7265706C616365282F5E2E2A6261736536342C2F2C2222293B6B2E73706C6974537472696E67286C2C3430303029';
wwv_flow_api.g_varchar2_table(225) := '3B6B2E617065784164644172726179286C2C63293B6C2E7175657279537472696E673D71712E6F626A3275726C28682C6B2E5F6F7074696F6E732E616374696F6E293B6A2E6F70656E2822504F5354222C6C2E7175657279537472696E672C7472756529';
wwv_flow_api.g_varchar2_table(226) := '3B6A2E736574526571756573744865616465722822436F6E74656E742D54797065222C226170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F64656422293B6A2E73656E64286C2E61706578506172616D73293B6C3D7B7D7D3B69';
wwv_flow_api.g_varchar2_table(227) := '2E7265616441734461746155524C2865297D2C5F75706C6F61644368756E6B656446696C653A66756E6374696F6E28682C67297B76617220613D746869732C643D746869732E5F66696C65735B685D2C623D746869732E6765744E616D652868292C633D';
wwv_flow_api.g_varchar2_table(228) := '746869732E67657453697A652868292C653D746869732E676574547970652868293B746869732E5F6C6F616465645B685D3D303B76617220663D746869732E5F786872735B685D3D6E657720584D4C487474705265717565737428293B76617220613D74';
wwv_flow_api.g_varchar2_table(229) := '6869733B662E5F6368756E6B546F74616C3D4D6174682E6365696C28632F612E5F6F7074696F6E732E6368756E6B53697A65293B662E5F6368756E6B4E756D6265723D313B662E75706C6F61642E6F6E70726F67726573733D66756E6374696F6E286929';
wwv_flow_api.g_varchar2_table(230) := '7B696628692E6C656E677468436F6D70757461626C65297B612E5F6C6F616465645B685D3D692E6C6F616465643B612E5F6F7074696F6E732E6F6E50726F677265737328682C622C692E6C6F616465642C692E746F74616C2C662E5F6368756E6B4E756D';
wwv_flow_api.g_varchar2_table(231) := '6265722C662E5F6368756E6B546F74616C297D7D3B662E6F6E726561647973746174656368616E67653D66756E6374696F6E28297B696628662E726561647953746174653D3D34297B662E5F6368756E6B4E756D6265722B3D313B696628662E5F636875';
wwv_flow_api.g_varchar2_table(232) := '6E6B4E756D6265723E662E5F6368756E6B546F74616C297B612E5F6F6E436F6D706C65746528682C66297D656C73657B612E5F73656E644368756E6B28672C642C312C66297D7D7D3B673D677C7C7B7D3B672E7830313D623B672E7830323D633B672E78';
wwv_flow_api.g_varchar2_table(233) := '30333D653B746869732E5F73656E644368756E6B28672C642C312C66297D2C5F75706C6F6164456E7469726546696C653A66756E6374696F6E28682C67297B76617220643D746869732E5F66696C65735B685D2C623D746869732E6765744E616D652868';
wwv_flow_api.g_varchar2_table(234) := '292C633D746869732E67657453697A652868292C653D746869732E676574547970652868293B746869732E5F6C6F616465645B685D3D303B76617220663D746869732E5F786872735B685D3D6E657720584D4C487474705265717565737428293B766172';
wwv_flow_api.g_varchar2_table(235) := '20613D746869733B662E75706C6F61642E6F6E70726F67726573733D66756E6374696F6E2869297B696628692E6C656E677468436F6D70757461626C65297B612E5F6C6F616465645B685D3D692E6C6F616465643B612E5F6F7074696F6E732E6F6E5072';
wwv_flow_api.g_varchar2_table(236) := '6F677265737328682C622C692E6C6F616465642C692E746F74616C297D7D3B662E6F6E726561647973746174656368616E67653D66756E6374696F6E28297B696628662E726561647953746174653D3D34297B612E5F6F6E436F6D706C65746528682C66';
wwv_flow_api.g_varchar2_table(237) := '297D7D3B673D677C7C7B7D3B672E7830313D623B672E7830323D633B672E7830333D653B746869732E61706578416464417272617946696C6528672C642C312C66297D2C5F75706C6F61643A66756E6374696F6E28642C63297B76617220613D74686973';
wwv_flow_api.g_varchar2_table(238) := '2C623D746869732E67657453697A652864293B696628623C3D612E5F6F7074696F6E732E6368756E6B53697A65297B746869732E5F75706C6F6164456E7469726546696C6528642C63297D656C73657B746869732E5F75706C6F61644368756E6B656446';
wwv_flow_api.g_varchar2_table(239) := '696C6528642C63297D7D2C5F6F6E436F6D706C6574653A66756E6374696F6E2869642C786872297B69662821746869732E5F66696C65735B69645D297B72657475726E7D766172206E616D653D746869732E6765744E616D65286964293B766172207369';
wwv_flow_api.g_varchar2_table(240) := '7A653D746869732E67657453697A65286964293B746869732E5F6F7074696F6E732E6F6E50726F67726573732869642C6E616D652C73697A652C73697A65293B6966287868722E7374617475733D3D323030297B746869732E6C6F672822786872202D20';
wwv_flow_api.g_varchar2_table(241) := '73657276657220726573706F6E736520726563656976656422293B746869732E6C6F672822726573706F6E736554657874203D20222B7868722E726573706F6E736554657874293B76617220726573706F6E73653B7472797B726573706F6E73653D6576';
wwv_flow_api.g_varchar2_table(242) := '616C282228222B7868722E726573706F6E7365546578742B222922297D636174636828657272297B726573706F6E73653D7B7D7D746869732E5F6F7074696F6E732E6F6E436F6D706C6574652869642C6E616D652C726573706F6E7365297D656C73657B';
wwv_flow_api.g_varchar2_table(243) := '746869732E5F6F7074696F6E732E6F6E436F6D706C6574652869642C6E616D652C7B7D297D746869732E5F66696C65735B69645D3D6E756C6C3B746869732E5F786872735B69645D3D6E756C6C3B746869732E5F64657175657565286964297D2C5F6361';
wwv_flow_api.g_varchar2_table(244) := '6E63656C3A66756E6374696F6E2861297B746869732E5F6F7074696F6E732E6F6E43616E63656C28612C746869732E6765744E616D65286129293B746869732E5F66696C65735B615D3D6E756C6C3B696628746869732E5F786872735B615D297B746869';
wwv_flow_api.g_varchar2_table(245) := '732E5F786872735B615D2E61626F727428293B746869732E5F786872735B615D3D6E756C6C7D7D7D293B2866756E6374696F6E2861297B612E666E2E637573746F6D46696C65496E7075743D66756E6374696F6E2862297B72657475726E206128746869';
wwv_flow_api.g_varchar2_table(246) := '73292E656163682866756E6374696F6E28297B76617220653D612874686973292E616464436C6173732822637573746F6D66696C652D696E70757422292E6D6F7573656F7665722866756E6374696F6E28297B642E616464436C6173732822637573746F';
wwv_flow_api.g_varchar2_table(247) := '6D66696C652D686F76657222297D292E6D6F7573656F75742866756E6374696F6E28297B642E72656D6F7665436C6173732822637573746F6D66696C652D686F76657222297D292E666F6375732866756E6374696F6E28297B642E616464436C61737328';
wwv_flow_api.g_varchar2_table(248) := '22637573746F6D66696C652D666F63757322293B652E64617461282276616C222C652E76616C2829297D292E626C75722866756E6374696F6E28297B642E72656D6F7665436C6173732822637573746F6D66696C652D666F63757322293B612874686973';
wwv_flow_api.g_varchar2_table(249) := '292E747269676765722822636865636B4368616E676522297D292E62696E64282264697361626C65222C66756E6374696F6E28297B652E61747472282264697361626C6564222C74727565293B642E616464436C6173732822637573746F6D66696C652D';
wwv_flow_api.g_varchar2_table(250) := '64697361626C656422297D292E62696E642822656E61626C65222C66756E6374696F6E28297B652E72656D6F766541747472282264697361626C656422293B642E72656D6F7665436C6173732822637573746F6D66696C652D64697361626C656422297D';
wwv_flow_api.g_varchar2_table(251) := '293B69662861282223222B622E69642B22202E637573746F6D66696C6522292E6C656E6774683E30297B76617220643D61282223222B622E69642B22202E637573746F6D66696C6522293B76617220633D61282223222B622E69642B22202E637573746F';
wwv_flow_api.g_varchar2_table(252) := '6D66696C652D627574746F6E22293B76617220663D61282223222B622E69642B22202E637573746F6D66696C652D666565646261636B22297D656C73657B76617220643D6128273C64697620636C6173733D22637573746F6D66696C65223E3C2F646976';
wwv_flow_api.g_varchar2_table(253) := '3E27293B76617220633D6128273C7370616E20636C6173733D22637573746F6D66696C652D627574746F6E2220617269612D68696464656E3D2274727565223E272B622E62726F77736542746E4C6162656C2B223C2F7370616E3E22292E617070656E64';
wwv_flow_api.g_varchar2_table(254) := '546F2864293B76617220663D6128273C7370616E20636C6173733D22637573746F6D66696C652D666565646261636B2220617269612D68696464656E3D2274727565223E272B622E6E6F66696C654C6162656C2B223C2F7370616E3E22292E617070656E';
wwv_flow_api.g_varchar2_table(255) := '64546F2864297D696628652E697328225B64697361626C65645D2229297B652E74726967676572282264697361626C6522297D642E6D6F7573656D6F76652866756E6374696F6E2867297B652E637373287B6C6566743A672E70616765582D642E6F6666';
wwv_flow_api.g_varchar2_table(256) := '73657428292E6C6566742D652E6F75746572576964746828292B32307D297D292E696E7365727441667465722865293B652E617070656E64546F2864297D297D7D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(163159517970675328)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'fileuploader.min.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E71712D75706C6F61642D64726F702D61726561207B0D0A20202020706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B2077696474683A313030253B206865696768743A313030253B206D696E2D6865696768743A2037';
wwv_flow_api.g_varchar2_table(2) := '3070783B207A2D696E6465783A323B0D0A202020206261636B67726F756E643A234646393739373B20746578742D616C69676E3A63656E7465723B200D0A7D0D0A2E71712D75706C6F61642D64726F702D61726561207370616E207B0D0A202020206469';
wwv_flow_api.g_varchar2_table(3) := '73706C61793A626C6F636B3B20706F736974696F6E3A6162736F6C7574653B20746F703A203530253B2077696474683A313030253B206D617267696E2D746F703A2D3870783B20666F6E742D73697A653A313670783B636F6C6F723A236666663B0D0A7D';
wwv_flow_api.g_varchar2_table(4) := '0D0A2E71712D75706C6F61642D64726F702D617265612D616374697665207B6261636B67726F756E643A234646373137313B7D0D0A0D0A2E71712D75706C6F61642D6C697374207B70616464696E673A357078203020303B206C6973742D7374796C653A';
wwv_flow_api.g_varchar2_table(5) := '646973633B7D0D0A2E71712D75706C6F61642D6C697374206C69207B206D617267696E2D6C6566743A323570783B2070616464696E673A303B206C696E652D6865696768743A313570783B20666F6E742D73697A653A313270783B7D0D0A2E71712D7570';
wwv_flow_api.g_varchar2_table(6) := '6C6F61642D66696C652C202E71712D75706C6F61642D7370696E6E65722C202E71712D75706C6F61642D73697A652C202E71712D75706C6F61642D63616E63656C2C202E71712D75706C6F61642D6661696C65642D74657874207B0D0A202020206D6172';
wwv_flow_api.g_varchar2_table(7) := '67696E2D72696768743A203770783B0D0A7D0D0A0D0A2E71712D75706C6F61642D7370696E6E6572207B646973706C61793A696E6C696E652D626C6F636B3B206261636B67726F756E643A2075726C286C6F6164696E672E676966293B2077696474683A';
wwv_flow_api.g_varchar2_table(8) := '313570783B206865696768743A313570783B20766572746963616C2D616C69676E3A746578742D626F74746F6D3B7D0D0A2E71712D75706C6F61642D73697A652C2E71712D75706C6F61642D63616E63656C207B666F6E742D73697A653A313170783B7D';
wwv_flow_api.g_varchar2_table(9) := '0D0A0D0A2E71712D75706C6F61642D6661696C65642D74657874207B646973706C61793A6E6F6E653B7D0D0A2E71712D75706C6F61642D6661696C202E71712D75706C6F61642D6661696C65642D74657874207B646973706C61793A696E6C696E653B7D';
wwv_flow_api.g_varchar2_table(10) := '0D0A0D0A2F2A2046696C6520496E707574202620427574746F6E205374796C696E67202A2F0D0A696E7075742E66696C65207B206261636B67726F756E643A20236161612075726C2862672D62746E2E706E672920626F74746F6D207265706561742D78';
wwv_flow_api.g_varchar2_table(11) := '3B2070616464696E673A202E34656D20312E32656D3B626F726465723A2031707820736F6C696420236161613B20636F6C6F723A20233232323B20666F6E742D73697A653A20312E32656D3B20666F6E742D7765696768743A20626F6C643B202D6D6F7A';
wwv_flow_api.g_varchar2_table(12) := '2D626F726465722D7261646975733A203370783B202D7765626B69742D626F726465722D7261646975733A203370783B20626F726465722D7261646975733A203370783B20637572736F723A20706F696E7465723B206D617267696E3A2032656D20303B';
wwv_flow_api.g_varchar2_table(13) := '207D0D0A696E7075742E66696C653A686F766572207B206261636B67726F756E643A20236565653B20636F6C6F723A20233131313B20626F726465722D636F6C6F723A233737373B207D0D0A0D0A0D0A2F2A637573746F6D2075706C6F616420656C656D';
wwv_flow_api.g_varchar2_table(14) := '656E74732A2F0D0A2E637573746F6D66696C652D696E707574207B20706F736974696F6E3A206162736F6C7574653B206865696768743A2031303070783B20637572736F723A20706F696E7465723B206261636B67726F756E643A207472616E73706172';
wwv_flow_api.g_varchar2_table(15) := '656E743B20626F726465723A20303B206F7061636974793A20303B202D6D6F7A2D6F7061636974793A20303B2066696C7465723A70726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861286F7061636974793D';
wwv_flow_api.g_varchar2_table(16) := '30293B207A2D696E6465783A203939393B20207D0D0A2E637573746F6D66696C652C2E71712D75706C6F61642D64726F702D61726561207B2077696474683A2034303070783B206261636B67726F756E643A20233636363B20637572736F723A20706F69';
wwv_flow_api.g_varchar2_table(17) := '6E7465723B206F766572666C6F773A2068696464656E3B2070616464696E673A203270783B20626F726465723A2031707820736F6C696420233434343B202D6D6F7A2D626F726465722D7261646975733A3370783B202D7765626B69742D626F72646572';
wwv_flow_api.g_varchar2_table(18) := '2D7261646975733A3370783B20626F726465722D7261646975733A3370783B2020706F736974696F6E3A2072656C61746976653B207D0D0A2E637573746F6D66696C652D64697361626C6564207B206F7061636974793A202E353B2066696C7465723A70';
wwv_flow_api.g_varchar2_table(19) := '726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861286F7061636974793D30293B20637572736F723A2064656661756C743B20207D0D0A2E637573746F6D66696C652D666565646261636B207B20646973706C';
wwv_flow_api.g_varchar2_table(20) := '61793A20626C6F636B3B206D617267696E3A203170782031707820317078203570783B20666F6E742D73697A653A20312E32656D3B20636F6C6F723A20236666663B20666F6E742D7374796C653A206974616C69633B2070616464696E673A202E33656D';
wwv_flow_api.g_varchar2_table(21) := '202E36656D3B207D0D0A2E637573746F6D66696C652D666565646261636B2D706F70756C61746564207B20636F6C6F723A20236666663B20666F6E742D7374796C653A206E6F726D616C3B20666F6E742D7765696768743A20626F6C643B207061646469';
wwv_flow_api.g_varchar2_table(22) := '6E672D6C6566743A20323070783B206261636B67726F756E643A2075726C2869636F6E2D67656E657269632E67696629206C65667420347078206E6F2D7265706561743B207D0D0A2E637573746F6D66696C652D627574746F6E207B20626F726465723A';
wwv_flow_api.g_varchar2_table(23) := '2031707820736F6C696420233939393B206261636B67726F756E643A20233333332075726C2862672D7375626D69742E6769662920626F74746F6D207265706561742D783B2020636F6C6F723A20236666663B20666F6E742D7765696768743A20626F6C';
wwv_flow_api.g_varchar2_table(24) := '643B20666C6F61743A2072696768743B2070616464696E673A202E33656D202E36656D3B2020746578742D616C69676E3A2063656E7465723B20746578742D6465636F726174696F6E3A206E6F6E653B2020666F6E742D73697A653A20312E32656D3B20';
wwv_flow_api.g_varchar2_table(25) := '2D6D6F7A2D626F726465722D7261646975733A3370783B202D7765626B69742D626F726465722D7261646975733A3370783B20626F726465722D7261646975733A3370783B2077686974652D73706163653A6E6F777261703B207D0D0A2E637573746F6D';
wwv_flow_api.g_varchar2_table(26) := '66696C652D686F766572202E637573746F6D66696C652D627574746F6E2C202E637573746F6D66696C652D666F637573202E637573746F6D66696C652D627574746F6E20207B20636F6C6F723A233131313B206261636B67726F756E643A202361616120';
wwv_flow_api.g_varchar2_table(27) := '75726C2862672D62746E2E706E672920626F74746F6D207265706561742D783B20626F726465722D636F6C6F723A236161613B202070616464696E673A202E33656D202E36656D3B20207D0D0A2E637573746F6D66696C652D666F637573202E63757374';
wwv_flow_api.g_varchar2_table(28) := '6F6D66696C652D627574746F6E207B206F75746C696E653A2031707820646F7474656420236363633B20207D0D0A0D0A2F2A66696C6520747970652069636F6E732A2F0D0A2E637573746F6D66696C652D6578742D6A70672C202E637573746F6D66696C';
wwv_flow_api.g_varchar2_table(29) := '652D6578742D6769662C202E637573746F6D66696C652D6578742D706E672C202E637573746F6D66696C652D6578742D6A7065672C202E637573746F6D66696C652D6578742D626D70207B206261636B67726F756E642D696D6167653A2075726C286963';
wwv_flow_api.g_varchar2_table(30) := '6F6E2D696D6167652E676966293B7D0D0A2E637573746F6D66696C652D6578742D6D70332C202E637573746F6D66696C652D6578742D6D70342C202E637573746F6D66696C652D6578742D6D6F762C202E637573746F6D66696C652D6578742D7377662C';
wwv_flow_api.g_varchar2_table(31) := '202E637573746F6D66696C652D6578742D7761762C202E637573746F6D66696C652D6578742D6D3476207B206261636B67726F756E642D696D6167653A2075726C2869636F6E2D6D656469612E676966293B7D0D0A2E637573746F6D66696C652D657874';
wwv_flow_api.g_varchar2_table(32) := '2D7A69702C202E637573746F6D66696C652D6578742D7461722C202E637573746F6D66696C652D6578742D736974207B206261636B67726F756E642D696D6167653A2075726C2869636F6E2D7A69702E676966293B7D0D0A0D0A2F2A6164646974696F6E';
wwv_flow_api.g_varchar2_table(33) := '732A2F0D0A2E637573746F6D66696C652D666C656674207B20666C6F61743A206C6566743B207D0D0A2E637573746F6D66696C652D75706C6F616473207B206D617267696E2D746F703A3370783B207D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(163198916602767126)
,p_plugin_id=>wwv_flow_api.id(150164544068776339)
,p_file_name=>'fileuploader.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(18209337556379279)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>24
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_global_page_id=>0
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'0'
,p_page_mode=>'NORMAL'
,p_step_title=>'0'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130505212957'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11440345464013970)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63540353407630500)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(11439328148008973)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(23446539073255703)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'112,100,102'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Task Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Przesyłki do doręczenia'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130506095739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11457014042411750)
,p_plug_name=>'Przesyłki do doręczenia'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ITEM.ID as ID,',
'    ITEM.CODE as CODE,',
'    ITEM.PACKAGE_TYPE_ID as PACKAGE_TYPE_ID,',
'    ITEM.FROM_ADDRESS_ID as FROM_ADDRESS_ID,',
'    ITEM.TO_ADDRESS_ID as TO_ADDRESS_ID,',
'    ITEM.FROM_CUSTOMER_ID as FROM_CUSTOMER_ID,',
'    ITEM.TO_CUSTOMER_ID as TO_CUSTOMER_ID,',
'    ITEM.DESCRIPTION as DESCRIPTION,',
'    ITEM.CREATION_USER as CREATION_USER,',
'    ITEM.CREATION_DATE as CREATION_DATE,',
'    ITEM.MODIFICATION_USER as MODIFICATION_USER,',
'    ITEM.MODIFICATION_DATE as MODIFICATION_DATE ',
' from ITEM ITEM'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11457118822411750)
,p_name=>'Przesyłki do doręczenia'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>9602505045012405
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457315287411756)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457444114411758)
,p_db_column_name=>'CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457532989411758)
,p_db_column_name=>'PACKAGE_TYPE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Package Type Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PACKAGE_TYPE_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457645054411758)
,p_db_column_name=>'FROM_ADDRESS_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'From Address Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FROM_ADDRESS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457742653411758)
,p_db_column_name=>'TO_ADDRESS_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'To Address Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TO_ADDRESS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457819088411758)
,p_db_column_name=>'FROM_CUSTOMER_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'From Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FROM_CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11457931613411758)
,p_db_column_name=>'TO_CUSTOMER_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'To Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TO_CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11458033549411759)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11458117228411759)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Creation User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11458228175411759)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11458336989411759)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Modification User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11458434932411759)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Modification Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11458514734411887)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:CODE:PACKAGE_TYPE_ID:FROM_ADDRESS_ID:TO_ADDRESS_ID:FROM_CUSTOMER_ID:TO_CUSTOMER_ID:DESCRIPTION:CREATION_USER:CREATION_DATE:MODIFICATION_USER:MODIFICATION_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23448938362361158)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Curiers Tasks'
,p_page_mode=>'NORMAL'
,p_step_title=>'Curiers Tasks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130425122505'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18172458380301448)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"TYPE_ID",',
'"STATUS_ID",',
'"PRIORITY",',
'"USER_LOGIN",',
'"VEHICLE_NO",',
'"DESCRIPTION",',
'"PARTNER_NAME",',
'"ADDRESS_ID",',
'SCHEDULED_DATE,',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."TASK" ',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18172647230301450)
,p_name=>'Curiers Tasks'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>6155820197259060
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18172750703301451)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18172845363301452)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'TYPE_ID'
,p_rpt_named_lov=>wwv_flow_api.id(26872353318741490)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18172934625301453)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS_ID'
,p_rpt_named_lov=>wwv_flow_api.id(26872578945748839)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173145324301453)
,p_db_column_name=>'USER_LOGIN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Courier'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USER_LOGIN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173249257301453)
,p_db_column_name=>'VEHICLE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Vehicle'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'VEHICLE_NO'
,p_rpt_named_lov=>wwv_flow_api.id(18364434530618033)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173347470301453)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173444007301453)
,p_db_column_name=>'PARTNER_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Partner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTNER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173547654301454)
,p_db_column_name=>'ADDRESS_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS_ID'
,p_rpt_named_lov=>wwv_flow_api.id(18178332590353101)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173653914301454)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Creation User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173738506301454)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173829336301454)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Modification User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18173951568301454)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Modyfication Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18970659237101204)
,p_db_column_name=>'SCHEDULED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Scheduled Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SCHEDULED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11430925521861731)
,p_db_column_name=>'PRIORITY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIORITY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18175051197301702)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'61583'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TYPE_ID:STATUS_ID:USER_LOGIN:VEHICLE_NO:DESCRIPTION:PARTNER_NAME:ADDRESS_ID:CREATION_USER:CREATION_DATE:SCHEDULED_DATE:PRIORITY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18174451925301455)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18174149755301454)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18172458380301448)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Form on Curier Task'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Curier Task'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130425122903'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18167342755301418)
,p_plug_name=>'Form on Curier Task'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18174730653301455)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18337755137662393)
,p_name=>'Task Items'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"TASK_ID",',
'"VALUE",',
'"PAYMENT_TYPE_ID",',
'"ITEM_SERVICE_ID",',
'"NOTIFICATION_CHANNEL_ID",',
'"NOTIFICATION_CONTACT",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."TASK_ITEM"',
'where task_id = :P3_ID'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18342650475662405)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338050632662394)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>11
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338152147662394)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338229050662394)
,p_query_column_id=>4
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Task'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>'P3_ID'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'TASK_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338532170662394)
,p_query_column_id=>5
,p_column_alias=>'VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'10'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338656074662394)
,p_query_column_id=>6
,p_column_alias=>'PAYMENT_TYPE_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Payment Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(18379543568175397)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'PAYMENT_TYPE_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338753458662394)
,p_query_column_id=>7
,p_column_alias=>'ITEM_SERVICE_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Services'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'RADIOGROUP_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(18398953169171614)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'ITEM_SERVICE_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338848718662394)
,p_query_column_id=>8
,p_column_alias=>'NOTIFICATION_CHANNEL_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Notification Channel'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(18392456886765892)
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'NOTIFICATION_CHANNEL_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18338948340662394)
,p_query_column_id=>9
,p_column_alias=>'NOTIFICATION_CONTACT'
,p_column_display_sequence=>7
,p_column_heading=>'Notification Contact'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'NOTIFICATION_CONTACT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18339432599662394)
,p_query_column_id=>10
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>8
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18339533320662394)
,p_query_column_id=>11
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18339654287662395)
,p_query_column_id=>12
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>10
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18339748651662395)
,p_query_column_id=>13
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_ITEM'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417127664682226)
,p_column_sequence=>1
,p_query_column_name=>'ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417238672682231)
,p_column_sequence=>2
,p_query_column_name=>'ID_DISPLAY'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417332777682231)
,p_column_sequence=>3
,p_query_column_name=>'TASK_ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417643616682231)
,p_column_sequence=>4
,p_query_column_name=>'VALUE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417756597682231)
,p_column_sequence=>5
,p_query_column_name=>'PAYMENT_TYPE_ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417855695682231)
,p_column_sequence=>6
,p_query_column_name=>'ITEM_SERVICE_ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18417950307682231)
,p_column_sequence=>7
,p_query_column_name=>'NOTIFICATION_CHANNEL_ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18418048469682232)
,p_column_sequence=>8
,p_query_column_name=>'NOTIFICATION_CONTACT'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18418542593682232)
,p_column_sequence=>9
,p_query_column_name=>'CREATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18418631399682232)
,p_column_sequence=>10
,p_query_column_name=>'CREATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18418757854682232)
,p_column_sequence=>11
,p_query_column_name=>'MODIFICATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18418844487682232)
,p_column_sequence=>12
,p_query_column_name=>'MODIFICATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18333035173590353)
,p_button_sequence=>25
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'P3_NEW_TASK_TYPE'
,p_button_static_id=>'P3_NEW_TASK_TYPE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3650149127220869)
,p_button_image_alt=>'New'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/add-small.png'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18346453993282336)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'P3_NEW_TASK_STATUS'
,p_button_static_id=>'P3_NEW_TASK_STATUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3650149127220869)
,p_button_image_alt=>'New'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/add-small.png'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18359835058503823)
,p_button_sequence=>55
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'P3_NEW_USER'
,p_button_static_id=>'P3_NEW_USER'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3650149127220869)
,p_button_image_alt=>'New User'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=ADM:9:&SESSION.'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/add-small.png'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18360145538605266)
,p_button_sequence=>63
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'P3_NEW_VEHICLE'
,p_button_static_id=>'P3_NEW_VEHICLE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3650149127220869)
,p_button_image_alt=>'New Vehicle'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=PAR:10:&SESSION.'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/add-small.png'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18351227849355157)
,p_button_sequence=>67
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'P3_NEW_ADDRESS'
,p_button_static_id=>'P3_NEW_ADDRESS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3650149127220869)
,p_button_image_alt=>'New Address'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/add-small.png'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18340155268662395)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18337755137662393)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18167645709301418)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18339943710662395)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18337755137662393)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18167959023301419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18339837790662395)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18337755137662393)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18167531014301418)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18167747952301418)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18167342755301418)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18340059421662395)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18337755137662393)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18168537325301419)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18167747952301418)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18342746283662405)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18168747956301420)
,p_name=>'P3_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18168932371301425)
,p_name=>'P3_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TASK_TYPE_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NAME d, ID r',
'from TASK_TYPE',
'order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18169131804301426)
,p_name=>'P3_STATUS_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TASK_STATUS_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NAME d, ID r',
'from TASK_STATUS',
'order by 2'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18169338184301426)
,p_name=>'P3_PRIORITY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18169543884301426)
,p_name=>'P3_USER_LOGIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_source=>'USER_LOGIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18169731320301427)
,p_name=>'P3_VEHICLE_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicle No'
,p_source=>'VEHICLE_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_VEHICLE_NUM_ALL'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NUM display_value, ID return_value ',
'from  k00.vehicle',
'order by 1'))
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18169932050301427)
,p_name=>'P3_DESCRIPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18170129961301427)
,p_name=>'P3_PARTNER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client Name'
,p_source=>'PARTNER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18170351308301427)
,p_name=>'P3_ADDRESS_ID'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ADDRESS_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  POSTAL_CODE || '' ''||  CITY || '' ''||',
'  STREET || '' ''|| "NUMBER" as d,',
'  ID as r',
'FROM k00.ADDRESS'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:180px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18170535093301427)
,p_name=>'P3_CREATION_USER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation User'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18170745792301427)
,p_name=>'P3_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18170933960301427)
,p_name=>'P3_MODIFICATION_USER'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification User'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18171130431301432)
,p_name=>'P3_MODIFICATION_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification Date'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18970838305126122)
,p_name=>'P3_SCHEDULED_DATE'
,p_is_required=>true
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(18167342755301418)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scheduled Date'
,p_format_mask=>'YYYY-MM-DD hh24:mi:ss'
,p_source=>'SCHEDULED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18340949222662396)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'PACKAGE_TYPE_ID must be numeric'
,p_validation_sequence=>50
,p_validation=>'PACKAGE_TYPE_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PACKAGE_TYPE_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18341128928662396)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'VALUE must be numeric'
,p_validation_sequence=>60
,p_validation=>'VALUE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18341331713662396)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'PAYMENT_TYPE_ID must be numeric'
,p_validation_sequence=>70
,p_validation=>'PAYMENT_TYPE_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PAYMENT_TYPE_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18341537100662403)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'ITEM_SERVICE_ID must be numeric'
,p_validation_sequence=>80
,p_validation=>'ITEM_SERVICE_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ITEM_SERVICE_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18341749427662403)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'NOTIFICATION_CHANNEL_ID must be numeric'
,p_validation_sequence=>90
,p_validation=>'NOTIFICATION_CHANNEL_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NOTIFICATION_CHANNEL_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18341934420662404)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'FROM_ADDRESS_ID must be numeric'
,p_validation_sequence=>110
,p_validation=>'FROM_ADDRESS_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FROM_ADDRESS_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18342153278662404)
,p_tabular_form_region_id=>wwv_flow_api.id(18337755137662393)
,p_validation_name=>'TO_ADDRESS_ID must be numeric'
,p_validation_sequence=>120
,p_validation=>'TO_ADDRESS_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18339943710662395)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'TO_ADDRESS_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18171532283301434)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TASK'
,p_attribute_02=>'TASK'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_process_when=>'P3_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18342234490662404)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18337755137662393)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TASK_ITEM'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18339943710662395)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18342458043662405)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18337755137662393)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TASK_ITEM'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18171730292301434)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TASK'
,p_attribute_02=>'TASK'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P3_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18171952677301434)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18167747952301418)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Agenda Calendar'
,p_page_mode=>'NORMAL'
,p_step_title=>'Agenda Calendar'
,p_step_sub_title=>'Agenda Calendar'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130425125111'
);
wwv_flow_api.create_calendar(
 p_id=>wwv_flow_api.id(19100732761247273)
,p_plug_name=>'Agenda Calendar'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'c.*,',
' decode(c.status, ''NOW'', ''<p style="color:''|| type_colour||'';font-size: 14px;font-weight: bold;">'' || c.task_type_name ||''</p>'' || c.DESCRIPTION ,',
'    ''<p style="color: ''||type_colour||'';font-size: 14px;font-weight: bold; text-decoration:line-through">'' || c.task_type_name || ''</p>'' || c.DESCRIPTION) as INFO',
'from (',
'select TASK.ID,',
'    TASK.DESCRIPTION,',
'    T.NAME as task_type_name,',
'    decode(t.code,''ODB'',''green'',''blue'') type_colour,',
'    S.CODE as status,',
'    TASK.PARTNER_NAME,',
'    TASK.SCHEDULED_DATE ',
' from TASK TASK, TASK_TYPE T, TASK_STATUS S',
'where TASK.TYPE_ID = T.ID',
'and TASK.status_id = s.id',
') c'))
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_template=>wwv_flow_api.id(63542159610630505)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'ABOVE'
,p_cal_id=>wwv_flow_api.id(19101237034247293)
,p_begin_at_start_of_interval=>'Y'
,p_date_item=>'P4_CALENDAR_DATE'
,p_display_as=>'M'
,p_display_item=>'P4_CALENDAR_DISPLAY'
,p_display_type=>'COL'
,p_date_column=>'SCHEDULED_DATE'
,p_display_column=>'INFO'
,p_start_of_week=>19721106
,p_item_link=>'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.:3:P3_ID,P3_SCHEDULED_DATE:#PRIMARY_KEY_VALUE#,#DATE_VALUE#'
,p_start_time=>0
,p_end_time=>23
,p_time_format=>'24HOUR'
,p_week_start_day=>19721106
,p_week_end_day=>19721105
,p_date_type_column=>'P4_CALENDAR_TYPE'
,p_end_date_item=>'P4_CALENDAR_END_DATE'
,p_include_custom_cal=>'Y'
,p_custom_cal_days=>3
,p_primary_key_column=>'ID'
,p_drag_drop_process_id=>wwv_flow_api.id(19105931432350970)
,p_item_link_primary_key_item=>'P3_ID'
,p_item_link_date_item=>'P3_SCHEDULED_DATE'
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'Y'
,p_agenda_cal_days_type=>'CUSTOM'
,p_agenda_cal_days=>1
,p_calendar_type=>'A'
,p_template_id=>wwv_flow_api.id(63555848894630546)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19103737110247323)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19103440886247319)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'P4_CUSTOM_CALENDAR'
,p_button_static_id=>'P4_CUSTOM_CALENDAR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Reload'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''C'',''same''); void(0);'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated by Calendar wizard on 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19102057199247312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'MONTHLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Monthly'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''M'',''same''); void(0);'
,p_button_condition=>'NVL(:P4_CALENDAR_TYPE, ''M'') <> ''M'''
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19102228478247317)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'WEEKLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Weekly'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''W'',''same''); void(0);'
,p_button_condition=>'P4_CALENDAR_TYPE'
,p_button_condition2=>'W'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19102447439247317)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'DAILY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Daily'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''D'',''same''); void(0);'
,p_button_condition=>'P4_CALENDAR_TYPE'
,p_button_condition2=>'D'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19102647176247317)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'LISTVIEW'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'List'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''A'',''same''); void(0);'
,p_button_condition=>'P4_CALENDAR_TYPE'
,p_button_condition2=>'A'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19102837205247317)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'< Previous'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''previous''); void(0);'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19103051134247319)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'TODAY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Today'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''today''); void(0);'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19103259774247319)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(19100732761247273)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Next >'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''next''); void(0);'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 01/03/2013'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19101551271247304)
,p_name=>'P4_CALENDAR_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19100732761247273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P4_CALENDAR_DISPLAY'
,p_source=>'P4_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/03/2013'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19101755798247311)
,p_name=>'P4_CALENDAR_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19100732761247273)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate;'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Start Date'
,p_source=>'P4_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_item_comment=>'Generated by Calendar wizard on 01/03/2013'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19101946764247311)
,p_name=>'P4_CALENDAR_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19100732761247273)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate+3;'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'End Date'
,p_source=>'P4_CALENDAR_END_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_item_comment=>'Generated by Calendar wizard on 01/03/2013'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21973233354336251)
,p_name=>'test'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.uButton'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21973549991336256)
,p_event_id=>wwv_flow_api.id(21973233354336251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(19100732761247273)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19105931432350970)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update calendar date'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_date_value        varchar2(32767) := apex_application.g_x01;',
'  l_primary_key_value varchar2(32767) := apex_application.g_x02;',
'begin',
'',
'    update task',
'       set SCHEDULED_DATE = to_date(l_date_value, ''YYYYMMDD HH24MISS'')',
'     where ID = l_primary_key_value;',
'end;'))
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Message Template Form'
,p_page_mode=>'NORMAL'
,p_step_title=>'Message Template Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130112161148'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20854047472373145)
,p_name=>'Message Template Form'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"MESSAGE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."MESSAGE_TEMPLATE"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20856536200373293)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854354768373202)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854456061373206)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854529113373207)
,p_query_column_id=>4
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>4
,p_column_heading=>'Message'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'NO'
,p_column_width=>22
,p_column_height=>2
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'MESSAGE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854649695373207)
,p_query_column_id=>5
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>5
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854750240373207)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854835759373207)
,p_query_column_id=>7
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20854950587373207)
,p_query_column_id=>8
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'MESSAGE_TEMPLATE'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20856948725373315)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20855346147373239)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(20854047472373145)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20855154495373239)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(20854047472373145)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20855030930373239)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20854047472373145)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20855227356373239)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(20854047472373145)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(20856642415373296)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20856053921373264)
,p_tabular_form_region_id=>wwv_flow_api.id(20854047472373145)
,p_validation_name=>'MESSAGE not null'
,p_validation_sequence=>30
,p_validation=>'MESSAGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(20855154495373239)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MESSAGE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20856142196373271)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(20854047472373145)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'MESSAGE_TEMPLATE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20855154495373239)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20856355242373281)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(20854047472373145)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'MESSAGE_TEMPLATE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Task Type Form'
,p_page_mode=>'NORMAL'
,p_step_title=>'Task Type Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20121212091751'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18333634945613140)
,p_name=>'Task Type Form'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"CODE",',
'"NAME",',
'"ACTIVE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."TASK_TYPE"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18336842042613153)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18333946222613146)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334053150613147)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334156960613147)
,p_query_column_id=>4
,p_column_alias=>'CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334230407613147)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334358403613147)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>6
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''Y'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'ACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334435761613147)
,p_query_column_id=>7
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334547430613147)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334627093613148)
,p_query_column_id=>9
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18334744846613148)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_TYPE'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345051442237887)
,p_column_sequence=>1
,p_query_column_name=>'ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345159519237892)
,p_column_sequence=>2
,p_query_column_name=>'ID_DISPLAY'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345251198237892)
,p_column_sequence=>3
,p_query_column_name=>'CODE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345348436237892)
,p_column_sequence=>4
,p_query_column_name=>'NAME'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345437430237892)
,p_column_sequence=>5
,p_query_column_name=>'ACTIVE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345538629237892)
,p_column_sequence=>6
,p_query_column_name=>'CREATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345639047237892)
,p_column_sequence=>7
,p_query_column_name=>'CREATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345759793237892)
,p_column_sequence=>8
,p_query_column_name=>'MODIFICATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(18345846905237892)
,p_column_sequence=>9
,p_query_column_name=>'MODIFICATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18337250474613154)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18335131044613150)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18333634945613140)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18334958593613150)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18333634945613140)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18334832938613150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18333634945613140)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18335034547613150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18333634945613140)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18336935227613153)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18335950579613152)
,p_tabular_form_region_id=>wwv_flow_api.id(18333634945613140)
,p_validation_name=>'CODE not null'
,p_validation_sequence=>30
,p_validation=>'CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18334958593613150)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18336144717613152)
,p_tabular_form_region_id=>wwv_flow_api.id(18333634945613140)
,p_validation_name=>'NAME not null'
,p_validation_sequence=>40
,p_validation=>'NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18334958593613150)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18336334091613152)
,p_tabular_form_region_id=>wwv_flow_api.id(18333634945613140)
,p_validation_name=>'ACTIVE not null'
,p_validation_sequence=>50
,p_validation=>'ACTIVE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18334958593613150)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ACTIVE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18336458747613152)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18333634945613140)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TASK_TYPE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18334958593613150)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18336640046613152)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18333634945613140)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TASK_TYPE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Task Status Form'
,p_page_mode=>'NORMAL'
,p_step_title=>'Task Status Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20121212092822'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18346928719322637)
,p_name=>'Task Status Form'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"CODE",',
'"NAME",',
'"ACTIVE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."TASK_STATUS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18350154309322684)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347233314322649)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347339345322653)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347438894322653)
,p_query_column_id=>4
,p_column_alias=>'CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347559257322653)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347631738322653)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>6
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''Y'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'ACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347737790322653)
,p_query_column_id=>7
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347858842322653)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18347932594322653)
,p_query_column_id=>9
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18348035124322653)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'TASK_STATUS'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18350551731322691)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18348452773322658)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18346928719322637)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18348229964322658)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18346928719322637)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18348156062322658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18346928719322637)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18348335270322658)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18346928719322637)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18350244136322685)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18349231019322670)
,p_tabular_form_region_id=>wwv_flow_api.id(18346928719322637)
,p_validation_name=>'CODE not null'
,p_validation_sequence=>30
,p_validation=>'CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18348229964322658)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18349436405322675)
,p_tabular_form_region_id=>wwv_flow_api.id(18346928719322637)
,p_validation_name=>'NAME not null'
,p_validation_sequence=>40
,p_validation=>'NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18348229964322658)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18349647173322676)
,p_tabular_form_region_id=>wwv_flow_api.id(18346928719322637)
,p_validation_name=>'ACTIVE not null'
,p_validation_sequence=>50
,p_validation=>'ACTIVE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18348229964322658)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ACTIVE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18349734336322676)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18346928719322637)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TASK_STATUS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18348229964322658)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18349949308322682)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18346928719322637)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TASK_STATUS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Report on Address'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report on Address'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130108174444'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18356236045369114)
,p_plug_name=>'Report on Address'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"POSTAL_CODE",',
'"STREET",',
'"NUMBER",',
'"CITY",',
'"NIP",',
'"TEL",',
'"EMAIL",',
'"DESCRIPTION",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."ADDRESS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18356441963369115)
,p_name=>'Report on Address'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::::P9_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>6339614930326725
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18356542468369127)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18356642426369133)
,p_db_column_name=>'POSTAL_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Postal Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'POSTAL_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18356742651369133)
,p_db_column_name=>'STREET'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Street'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STREET'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18356837144369134)
,p_db_column_name=>'NUMBER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18356945267369134)
,p_db_column_name=>'CITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'City'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18357037109369135)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18357149969369135)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Creation User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18357249900369135)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18357339055369135)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Modification User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18357437932369136)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Modification Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19123435606508550)
,p_db_column_name=>'TEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Tel'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19123543808508561)
,p_db_column_name=>'EMAIL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19127034198423159)
,p_db_column_name=>'NIP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Nip'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NIP'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18358537625369410)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'63418'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:POSTAL_CODE:STREET:NUMBER:CITY:DESCRIPTION:CREATION_USER:CREATION_DATE:MODIFICATION_USER:MODIFICATION_DATE:NIP'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18357936284369136)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18357635115369136)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18356236045369114)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Form on Address'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Address'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130110082304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18351749340369086)
,p_plug_name=>'Form on Address'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18358254396369137)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18352055891369089)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18351749340369086)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18352327970369089)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18351749340369086)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18351945975369088)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18351749340369086)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18352150650369089)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18351749340369086)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18352952508369091)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18353147816369092)
,p_name=>'P9_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18353347248369098)
,p_name=>'P9_POSTAL_CODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18353539925369098)
,p_name=>'P9_STREET'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street'
,p_source=>'STREET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18353737665369098)
,p_name=>'P9_NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Number'
,p_source=>'NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18353943973369098)
,p_name=>'P9_CITY'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18354146503369099)
,p_name=>'P9_DESCRIPTION'
,p_item_sequence=>69
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18354328271369099)
,p_name=>'P9_CREATION_USER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation User'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18354540857369099)
,p_name=>'P9_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18354730866369099)
,p_name=>'P9_MODIFICATION_USER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification User'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18354950795369099)
,p_name=>'P9_MODIFICATION_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification Date'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19061927332252381)
,p_name=>'P9_LOCATION_LAT'
,p_is_required=>true
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loc Lat'
,p_source=>'LOCATION_LAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19062729174373022)
,p_name=>'P9_LOCATION_LON'
,p_is_required=>true
,p_item_sequence=>67
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loc Lon'
,p_source=>'LOCATION_LON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19122634336478737)
,p_name=>'P9_EMAIL'
,p_is_required=>true
,p_item_sequence=>62
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19122830886480378)
,p_name=>'P9_TEL'
,p_is_required=>true
,p_item_sequence=>63
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tel'
,p_source=>'TEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19126651451415203)
,p_name=>'P9_NIP'
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_api.id(18351749340369086)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NIP'
,p_source=>'NIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18355336391369100)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from ADDRESS'
,p_attribute_02=>'ADDRESS'
,p_attribute_03=>'P9_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18355547578369101)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of ADDRESS'
,p_attribute_02=>'ADDRESS'
,p_attribute_03=>'P9_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18355742826369101)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18352150650369089)
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Package Type Form '
,p_page_mode=>'NORMAL'
,p_step_title=>'Package Type Form '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20121212112845'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18369257375895421)
,p_name=>'Package Type Form '
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"CODE",',
'"NAME",',
'"FOREIGN",',
'"ACTIVE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."PACKAGE_TYPE"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18372729348895435)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18369552732895431)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18369627665895431)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18369742794895431)
,p_query_column_id=>4
,p_column_alias=>'CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18369842125895433)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18369931973895433)
,p_query_column_id=>6
,p_column_alias=>'FOREIGN'
,p_column_display_sequence=>6
,p_column_heading=>'Foreign'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''N'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'FOREIGN'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18370034930895433)
,p_query_column_id=>7
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>7
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''Y'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'ACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18370137473895433)
,p_query_column_id=>8
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>8
,p_column_heading=>'Creation User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18370238967895433)
,p_query_column_id=>9
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18370337293895433)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>10
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18370433837895433)
,p_query_column_id=>11
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PACKAGE_TYPE'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18373150367895435)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18370847810895434)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18369257375895421)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18370629910895434)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18369257375895421)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18370538554895434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18369257375895421)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18370743041895434)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18369257375895421)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18372844507895435)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18371637978895434)
,p_tabular_form_region_id=>wwv_flow_api.id(18369257375895421)
,p_validation_name=>'CODE not null'
,p_validation_sequence=>30
,p_validation=>'CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18370629910895434)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18371857609895435)
,p_tabular_form_region_id=>wwv_flow_api.id(18369257375895421)
,p_validation_name=>'NAME not null'
,p_validation_sequence=>40
,p_validation=>'NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18370629910895434)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18372041586895435)
,p_tabular_form_region_id=>wwv_flow_api.id(18369257375895421)
,p_validation_name=>'FOREIGN not null'
,p_validation_sequence=>50
,p_validation=>'FOREIGN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18370629910895434)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FOREIGN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18372233895895435)
,p_tabular_form_region_id=>wwv_flow_api.id(18369257375895421)
,p_validation_name=>'ACTIVE not null'
,p_validation_sequence=>60
,p_validation=>'ACTIVE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18370629910895434)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ACTIVE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18372358790895435)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18369257375895421)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'PACKAGE_TYPE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18370629910895434)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18372538665895435)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18369257375895421)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'PACKAGE_TYPE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Payment Type Form'
,p_page_mode=>'NORMAL'
,p_step_title=>'Payment Type Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20121220141910'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18374849805126689)
,p_name=>'Payment Type Form'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"CODE",',
'"NAME",',
'"ACTIVE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."PAYMENT_TYPE"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18378051749126694)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375139881126691)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375254515126691)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375344334126691)
,p_query_column_id=>4
,p_column_alias=>'CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375449703126691)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375547886126691)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>6
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''Y'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'ACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375636905126691)
,p_query_column_id=>7
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375751543126691)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Creation Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>7
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375836454126691)
,p_query_column_id=>9
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Modification User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18375947373126691)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Modification Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>7
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'PAYMENT_TYPE'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18378459742126695)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18376357738126692)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18374849805126689)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18376138567126692)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18374849805126689)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18376057801126692)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18374849805126689)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18376233541126692)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18374849805126689)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18378149321126694)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18377135534126693)
,p_tabular_form_region_id=>wwv_flow_api.id(18374849805126689)
,p_validation_name=>'CODE not null'
,p_validation_sequence=>30
,p_validation=>'CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18376138567126692)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18377351507126693)
,p_tabular_form_region_id=>wwv_flow_api.id(18374849805126689)
,p_validation_name=>'NAME not null'
,p_validation_sequence=>40
,p_validation=>'NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18376138567126692)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18377539777126693)
,p_tabular_form_region_id=>wwv_flow_api.id(18374849805126689)
,p_validation_name=>'ACTIVE not null'
,p_validation_sequence=>50
,p_validation=>'ACTIVE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18376138567126692)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ACTIVE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18377633010126693)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18374849805126689)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'PAYMENT_TYPE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18376138567126692)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18377838352126694)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18374849805126689)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'PAYMENT_TYPE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Form on Notification Channel'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Notification Channel'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20121212132636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18384950716225501)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18387442847298164)
,p_name=>'Form on Notification Channel'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"CODE",',
'"NAME",',
'"ACTIVE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."NOTIFICATION_CHANNEL"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18390647528298167)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18387759266298165)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18387843877298165)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18387946094298165)
,p_query_column_id=>4
,p_column_alias=>'CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18388052680298165)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18388149703298165)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>6
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''Y'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'ACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18388254827298165)
,p_query_column_id=>7
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18388349528298165)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18388454358298165)
,p_query_column_id=>9
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18388559761298165)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'NOTIFICATION_CHANNEL'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18388937291298166)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18387442847298164)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18388754638298166)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18387442847298164)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18388649721298166)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18387442847298164)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18388859664298166)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18387442847298164)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18384658850225497)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18390737633298167)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18389730579298166)
,p_tabular_form_region_id=>wwv_flow_api.id(18387442847298164)
,p_validation_name=>'CODE not null'
,p_validation_sequence=>30
,p_validation=>'CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18388754638298166)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18389958320298166)
,p_tabular_form_region_id=>wwv_flow_api.id(18387442847298164)
,p_validation_name=>'NAME not null'
,p_validation_sequence=>40
,p_validation=>'NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18388754638298166)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18390153812298166)
,p_tabular_form_region_id=>wwv_flow_api.id(18387442847298164)
,p_validation_name=>'ACTIVE not null'
,p_validation_sequence=>50
,p_validation=>'ACTIVE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18388754638298166)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ACTIVE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18390246932298166)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18387442847298164)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NOTIFICATION_CHANNEL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18388754638298166)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18390427816298167)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18387442847298164)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NOTIFICATION_CHANNEL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Form on Service'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Service'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20121212134848'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18394743470884700)
,p_name=>'Form on Service'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"CODE",',
'"NAME",',
'"ACTIVE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."SERVICE"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18397958239884713)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395033015884707)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395146428884707)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395230045884707)
,p_query_column_id=>4
,p_column_alias=>'CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395338611884707)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395438564884707)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>6
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_column_width=>12
,p_column_default=>'''Y'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'ACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395531405884707)
,p_query_column_id=>7
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Creation User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395630403884707)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Creation Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395752050884707)
,p_query_column_id=>9
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Modification User'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18395850586884708)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Modification Date'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'CUR'
,p_ref_table_name=>'SERVICE'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18398352448884714)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18396259505884708)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18394743470884700)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18396047096884708)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18394743470884700)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18395927337884708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18394743470884700)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18396138964884708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18394743470884700)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18398030891884713)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18397053426884710)
,p_tabular_form_region_id=>wwv_flow_api.id(18394743470884700)
,p_validation_name=>'CODE not null'
,p_validation_sequence=>30
,p_validation=>'CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18396047096884708)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18397230236884711)
,p_tabular_form_region_id=>wwv_flow_api.id(18394743470884700)
,p_validation_name=>'NAME not null'
,p_validation_sequence=>40
,p_validation=>'NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18396047096884708)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18397457129884711)
,p_tabular_form_region_id=>wwv_flow_api.id(18394743470884700)
,p_validation_name=>'ACTIVE not null'
,p_validation_sequence=>50
,p_validation=>'ACTIVE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(18396047096884708)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ACTIVE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18397549812884711)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18394743470884700)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'SERVICE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18396047096884708)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18397735462884713)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18394743470884700)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'SERVICE'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Terminal Mobilny'
,p_alias=>'TERMINAL_MOBILNY'
,p_page_mode=>'NORMAL'
,p_step_title=>'Terminal Mobilny'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130506095605'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11468437553912843)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11508325235410643)
,p_plug_name=>'test'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'select 1 from dual'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11508427523410643)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>9653813746011298
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11508644151410645)
,p_db_column_name=>'1'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'1'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11508827313411276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96543'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'1'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Wgranie nowej wersji'
,p_alias=>'MULTIPLE_FILE_UPLOAD'
,p_page_mode=>'NORMAL'
,p_step_title=>'Wgranie nowej wersji'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ISG'
,p_last_upd_yyyymmddhh24miss=>'20160405115453'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11633035176659724)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11633325554662815)
,p_plug_name=>'Nowa wersja aplikacji'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63542159610630505)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11635743702753218)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11633325554662815)
,p_button_name=>'P15_SET_VERSION'
,p_button_static_id=>'P15_SET_VERSION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ustaw'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11633729457711744)
,p_name=>'P15_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11633325554662815)
,p_prompt=>'1. Pliki'
,p_display_as=>'PLUGIN_COM.AF.PLUGIN.JQ.FILEUPLOAD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'APP_SOURCE'
,p_attribute_02=>'NAME'
,p_attribute_03=>'CONTENT_TYPE'
,p_attribute_04=>'CONTENT_SIZE'
,p_attribute_05=>'CONTENT'
,p_attribute_06=>'ID'
,p_attribute_09=>'102400'
,p_attribute_11=>'TABLE'
,p_attribute_12=>'N'
,p_attribute_13=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11635341941736290)
,p_name=>'P15_NEW_VERSION_NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11633325554662815)
,p_prompt=>'2. Nowa wersja'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(11635523394744941)
,p_computation_sequence=>10
,p_computation_item=>'P15_NEW_VERSION_NUMBER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select nvl(max(version),0) +1 from APP_SOURCE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11636028380767749)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set new version'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'update APP_SOURCE set version = :P15_NEW_VERSION_NUMBER where version is null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11635743702753218)
,p_process_success_message=>'Wersja zasobów ustawiona na &P15_NEW_VERSION_NUMBER.'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Zasoby Aplikacji'
,p_page_mode=>'NORMAL'
,p_step_title=>'Zasoby Aplikacji'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130503191329'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11473619928952743)
,p_plug_name=>'Zasoby Aplikacji'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"NAME",',
'"CONTENT_TYPE",',
'dbms_lob.getlength("CONTENT") "CONTENT",',
'"VERSION",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."APP_SOURCE" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11473818032952743)
,p_name=>'Zasoby Aplikacji'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>9619204255553398
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11473927696952747)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474017381952748)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwa Pliku'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474145764952748)
,p_db_column_name=>'CONTENT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Typ'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CONTENT_TYPE'
,p_rpt_named_lov=>wwv_flow_api.id(11512617055117798)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474222914952748)
,p_db_column_name=>'CONTENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Plik'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_format_mask=>'DOWNLOAD:APP_SOURCE:CONTENT:ID::CONTENT_TYPE:NAME:::Attachment:pobierz'
,p_tz_dependent=>'N'
,p_static_id=>'CONTENT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474324688952748)
,p_db_column_name=>'VERSION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Wersja'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'VERSION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474428636952748)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Utworzyl'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474528593952748)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Data Utworzenia'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474617205952748)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Zmodyfikowal'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11474738516952749)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Data Modyfikacji'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11475822373952893)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96213'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NAME:CONTENT_TYPE:CONTENT:VERSION:CREATION_USER:CREATION_DATE:MODIFICATION_USER:MODIFICATION_DATE:'
,p_sort_column_1=>'CREATION_DATE'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11475240885952750)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11474938662952750)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11473619928952743)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Edycja Zasobu Aplikacji'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edycja Zasobu Aplikacji'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130506154403'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11469341017952719)
,p_plug_name=>'Edycja Zasobu Aplikacji'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11475514941952750)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11469640970952721)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11469341017952719)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Zapisz'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11469936720952722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11469341017952719)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11469520125952721)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11469341017952719)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11469738493952721)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11469341017952719)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Usun'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11470544629952723)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11470715169952724)
,p_name=>'P17_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11470914454952730)
,p_name=>'P17_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nazwa'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11471121768952731)
,p_name=>'P17_CONTENT_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Content Type'
,p_source=>'CONTENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11471335300952731)
,p_name=>'P17_CONTENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plik'
,p_source=>'CONTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CONTENT_TYPE'
,p_attribute_03=>'NAME'
,p_attribute_05=>'MODIFICATION_DATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11471515149952732)
,p_name=>'P17_VERSION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wersja'
,p_source=>'VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11471745285952732)
,p_name=>'P17_CREATION_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Utworzyl'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11471931626952732)
,p_name=>'P17_CREATION_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Utworzenia'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11472115289952732)
,p_name=>'P17_MODIFICATION_USER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zmodyfikowal'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11472321500952732)
,p_name=>'P17_MODIFICATION_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11469341017952719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Modyfikacji'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11472715027952734)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from APP_SOURCE'
,p_attribute_02=>'APP_SOURCE'
,p_attribute_03=>'P17_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11472930700952734)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of APP_SOURCE'
,p_attribute_02=>'APP_SOURCE'
,p_attribute_03=>'P17_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11473123736952736)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11469738493952721)
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Task Item Detail'
,p_page_mode=>'NORMAL'
,p_step_title=>'Task Item Detail'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'[if lt IE 9]/c/libraries/signature/flashcanvas.js',
'/c/libraries/signature/jquery.min.js',
'/c/libraries/signature/jquery.signaturepad.min.js'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'  var sig = $(''#P18_SIGNATURE'').val();',
'  $(''.sigPad'').signaturePad({displayOnly:true}).regenerate(sig);',
'});'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/c/libraries/signature/jquery.signaturepad.css',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130425123039'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19012245216310910)
,p_plug_name=>'Task Item Detail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19017831203310916)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19051440083055275)
,p_plug_name=>'Podpis'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538836694630499)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sigPad signed">',
'  <div class="sigWrapper">',
'    <canvas class="pad" width="598" height="80"></canvas>',
'  </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19057640054528325)
,p_plug_name=>'podpis data'
,p_parent_plug_id=>wwv_flow_api.id(19051440083055275)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63535536924630480)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19052846363085489)
,p_plug_name=>'Uslugi dodatkowe'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538836694630499)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19072330203909828)
,p_plug_name=>'files'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'ID,',
'FILE_NAME,',
'apex_util.get_blob_file_src(''P20_FILE_BODY'',id) detail_img_no_style,',
'''<img style=border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px; ''||''src=''|| apex_util.get_blob_file_src(''P20_FILE_BODY'',id)||'' height=75 width=75 alt=Product Image title=Product Image />'' detail_img,',
'CREATION_USER,',
'CREATION_DATE,',
'MODIFICATION_USER,',
'MODIFICATION_DATE',
'from task_doc where item_id = :P18_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19072453811909828)
,p_name=>'files'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_enabled_yn=>'Y'
,p_icon_view_link_column=>'ID'
,p_icon_view_img_src_column=>'DETAIL_IMG'
,p_icon_view_label_column=>'FILE_NAME'
,p_icon_view_columns_per_row=>5
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>7055626778867438
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19072849439909896)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19073156978909897)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19073231610909897)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19073355347909897)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Modification User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19073444266909898)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Modification Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19074457860968676)
,p_db_column_name=>'DETAIL_IMG_NO_STYLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Detail Img No Style'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL_IMG_NO_STYLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19079243578036127)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Img'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL_IMG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19107552109545104)
,p_db_column_name=>'ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Id'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19073531242910083)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'70568'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'DETAIL_IMG:FILE_NAME:ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19012549046310910)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19012245216310910)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19012828391310911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19012245216310910)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19012446462310910)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19012245216310910)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19012645696310910)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19012245216310910)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19013457623310911)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19013646059310911)
,p_name=>'P18_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19013851607310912)
,p_name=>'P18_TASK_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Id'
,p_source=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19014040560310913)
,p_name=>'P18_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19014240492310913)
,p_name=>'P18_PACKAGE_TYPE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Package Type'
,p_source=>'PACKAGE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_PACKAGE_TYPE_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.PACKAGE_TYPE',
'where Foreign = ''N'''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19014446049310913)
,p_name=>'P18_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Value'
,p_source=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19014642526310913)
,p_name=>'P18_PAYMENT_TYPE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Type'
,p_source=>'PAYMENT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_PAYMENT_TYPE_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.PAYMENT_TYPE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19014856665310913)
,p_name=>'P18_ITEM_SERVICES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(19052846363085489)
,p_prompt=>'Additional Services'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name, id from service',
''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px; height:240px" '
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19015051488310913)
,p_name=>'P18_NOTIFICATION_CHANNEL_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Channel'
,p_source=>'NOTIFICATION_CHANNEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_NOTYFICATION_CHANNEL_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  name as d,',
'  ID as r',
'FROM k00.NOTIFICATION_CHANNEL'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19015248333310914)
,p_name=>'P18_NOTIFICATION_CONTACT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Contact'
,p_source=>'NOTIFICATION_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19015457017310914)
,p_name=>'P18_FROM_ADDRESS_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Address'
,p_source=>'FROM_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ADDRESS_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  POSTAL_CODE || '' ''||  CITY || '' ''||',
'  STREET || '' ''|| "NUMBER" as d,',
'  ID as r',
'FROM k00.ADDRESS'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19015646356310914)
,p_name=>'P18_TO_ADDRESS_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To Address'
,p_source=>'TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ADDRESS_NAME'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  POSTAL_CODE || '' ''||  CITY || '' ''||',
'  STREET || '' ''|| "NUMBER" as d,',
'  ID as r',
'FROM k00.ADDRESS'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19015835316310914)
,p_name=>'P18_FROM_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Name'
,p_source=>'FROM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19016056376310914)
,p_name=>'P18_TO_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To Name'
,p_source=>'TO_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19016227979310914)
,p_name=>'P18_CREATION_USER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation User'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19016450172310915)
,p_name=>'P18_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19016649873310915)
,p_name=>'P18_MODIFICATION_USER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification User'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19016850349310915)
,p_name=>'P18_MODIFICATION_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification Date'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19024658952450824)
,p_name=>'P18_DONE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zakonczony'
,p_source=>'DONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px;"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>'Tak'
,p_attribute_04=>'N'
,p_attribute_05=>'Nie'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19031149405264069)
,p_name=>'P18_SIGNATURE'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Podpis'
,p_source=>'SIGNATURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19040538417317439)
,p_name=>'P18_DESCRIPTION'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Opis'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px; height:60px" '
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19041134954334307)
,p_name=>'P18_BROKEN'
,p_item_sequence=>133
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''N'''
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Uszkodzenie'
,p_source=>'BROKEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Y,N'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19052048085072079)
,p_name=>'P18_SIGNATURE_NAME'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(19057640054528325)
,p_use_cache_before_default=>'NO'
,p_source=>'SIGNATURE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19052243340074217)
,p_name=>'P18_SIGNATURE_DATE'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(19057640054528325)
,p_use_cache_before_default=>'NO'
,p_source=>'SIGNATURE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width:220px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19056459545294594)
,p_name=>'P18_DONE_DATE'
,p_item_sequence=>132
,p_item_plug_id=>wwv_flow_api.id(19012245216310910)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Zakonczenia'
,p_source=>'DONE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width:230px;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19030743805993169)
,p_computation_sequence=>10
,p_computation_item=>'P18_ITEM_SERVICES'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  vcServicesList apex_application_global.vc_arr2;',
'  n  NUMBER :=1;',
'BEGIN',
'  FOR r IN',
'  (SELECT s.SERVICE_ID FROM TASK_ITEM_SERVICE s WHERE s.TASK_ITEM_ID = :P18_ID',
'  )',
'  LOOP',
'    vcServicesList(n) := r.SERVICE_ID;',
'    n              := n + 1;',
'  END LOOP;',
'  RETURN APEX_UTIL.TABLE_TO_STRING(vcServicesList,'':'');',
'END;'))
,p_compute_when=>'P18_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19017246638310916)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TASK_ITEM'
,p_attribute_02=>'TASK_ITEM'
,p_attribute_03=>'P18_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19030054868932859)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete all item service'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'delete from task_item_service',
'where task_item_id = :P18_ID ;                  ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST in (''DELETE'',''SAVE'',''APPLY'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19017437250310916)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TASK_ITEM'
,p_attribute_02=>'TASK_ITEM'
,p_attribute_03=>'P18_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19030340716957162)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add task item service'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  vc_arr2 apex_application_global.vc_arr2;',
'BEGIN',
'  vc_arr2    := apex_util.string_to_table (:P18_ITEM_SERVICES);',
'  IF :P18_ID IS NOT NULL THEN',
'    FOR i IN 1 .. vc_arr2.COUNT',
'    LOOP',
'      INSERT',
'      INTO TASK_ITEM_SERVICE',
'        (',
'          TASK_ITEM_ID,',
'          SERVICE_ID',
'        )',
'        VALUES',
'        (',
'          :P18_ID,',
'          vc_arr2(i)',
'        );',
'    END LOOP;',
'  END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST in (''SAVE'',''CREATE'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19017649982310916)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19012645696310910)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Form on TASK_DOC'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on TASK_DOC'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.display_image {',
'width: 500px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130104222422'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19074931738005400)
,p_plug_name=>'Form on TASK_DOC'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19108437356450775)
,p_plug_name=>'Image'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63542159610630505)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'begin',
'  if :P20_ID is not null then',
'    for c1 in (select nvl(dbms_lob.getlength(FILE_BODY),0) l',
'               from K00.TASK_DOC',
'               where id = :P20_ID )',
'    loop',
'      if c1.l > 0 then',
'        return true;',
'      end if;',
'    end loop;',
'  end if;',
'  return false;',
'end;'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19075256574005404)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19074931738005400)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19075550582005407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19074931738005400)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19075135486005403)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19074931738005400)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19075342885005404)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19074931738005400)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19076148480005419)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(19075342885005404)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19076342939005428)
,p_name=>'P20_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19076553209005448)
,p_name=>'P20_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Id'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19076735609005451)
,p_name=>'P20_FILE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19076957247005451)
,p_name=>'P20_FILE_BODY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Body'
,p_source=>'FILE_BODY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_03=>'FILE_NAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19077138275005451)
,p_name=>'P20_CONTENT_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Content Type'
,p_source=>'CONTENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19077355330005451)
,p_name=>'P20_CREATION_USER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation User'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19077531091005452)
,p_name=>'P20_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19077749773005452)
,p_name=>'P20_MODIFICATION_USER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification User'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19077935544005452)
,p_name=>'P20_MODIFICATION_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(19074931738005400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modification Date'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19109053343474103)
,p_name=>'P20_FILE_BODY_DISP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(19108437356450775)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FILE_BODY',
'  from K00.TASK_DOC',
' where id = :P20_ID'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19078328207005457)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TASK_DOC'
,p_attribute_02=>'TASK_DOC'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19078536299005467)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TASK_DOC'
,p_attribute_02=>'TASK_DOC'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19078758590005469)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19075342885005404)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Ustawienia Aplikacji'
,p_page_mode=>'NORMAL'
,p_step_title=>'Ustawienia Aplikacji'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130516221754'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11477046349034724)
,p_name=>'Ustawienia Aplikacji'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"NAME",',
'"VALUE",',
'"USER_LOGIN",',
'"VERSION",',
'"TYPE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."APP_SETTING"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11480334097034739)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Zaznacz'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11477325373034726)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11477434566034727)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11477533114034727)
,p_query_column_id=>4
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11477633064034727)
,p_query_column_id=>5
,p_column_alias=>'VALUE'
,p_column_display_sequence=>6
,p_column_heading=>'Wartosc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>44
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11579240213004980)
,p_query_column_id=>6
,p_column_alias=>'USER_LOGIN'
,p_column_display_sequence=>8
,p_column_heading=>'Login'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'USER_LOGIN'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11477831868034727)
,p_query_column_id=>7
,p_column_alias=>'VERSION'
,p_column_display_sequence=>7
,p_column_heading=>'Wersja'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'VERSION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11657721838744488)
,p_query_column_id=>8
,p_column_alias=>'TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Typ'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'APP,FRAME'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11477936305034732)
,p_query_column_id=>9
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Utworzyl'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11478029830034732)
,p_query_column_id=>10
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Data Utworzenia'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11478128920034732)
,p_query_column_id=>11
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>11
,p_column_heading=>'Zmodyfikowal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11478237086034732)
,p_query_column_id=>12
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Data Modyfikacji'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'APP_SETTING'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578242942004978)
,p_column_sequence=>1
,p_query_column_name=>'ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578336213004979)
,p_column_sequence=>2
,p_query_column_name=>'ID_DISPLAY'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578438447004979)
,p_column_sequence=>3
,p_query_column_name=>'NAME'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578543194004979)
,p_column_sequence=>4
,p_query_column_name=>'VALUE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578645146004979)
,p_column_sequence=>5
,p_query_column_name=>'USER_LOGIN'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578731453004979)
,p_column_sequence=>6
,p_query_column_name=>'VERSION'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11657241999744476)
,p_column_sequence=>7
,p_query_column_name=>'TYPE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578841533004979)
,p_column_sequence=>8
,p_query_column_name=>'CREATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11578942834004979)
,p_column_sequence=>9
,p_query_column_name=>'CREATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11579029789004979)
,p_column_sequence=>10
,p_query_column_name=>'MODIFICATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11579132746004979)
,p_column_sequence=>11
,p_query_column_name=>'MODIFICATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11480734522034739)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11482818778642494)
,p_plug_name=>'Info'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63543651783630505)
,p_plug_display_sequence=>100025
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<b>CONNECTION-QUALITY posiada trzy możliwe wartości:</b><br> ',
'WIFI<br> ',
'NETWORK_HIGH_SPEED<br> ',
'NETWORK_LOW_SPEED<br> <br> ',
'',
'<b>GPS-INTERWAL</b><br> ',
'gdzie 0 to wyłączone śledzenie<br> <br>',
'',
'<b>Metoda hashowania</b><br> ',
'SHA1<br> ',
'MD5<br> ',
'Brak<br> ',
''))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11478638719034733)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11477046349034724)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11478444155034733)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11477046349034724)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Zapisz'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11478326633034733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11477046349034724)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11478522312034733)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11477046349034724)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Usun'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11480427582034739)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11479437637034735)
,p_tabular_form_region_id=>wwv_flow_api.id(11477046349034724)
,p_validation_name=>'VERSION must be numeric'
,p_validation_sequence=>60
,p_validation=>'VERSION'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11478444155034733)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'VERSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11479637636034738)
,p_tabular_form_region_id=>wwv_flow_api.id(11477046349034724)
,p_validation_name=>'CREATION_DATE must be a valid date'
,p_validation_sequence=>80
,p_validation=>'CREATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11478444155034733)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CREATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11479820179034738)
,p_tabular_form_region_id=>wwv_flow_api.id(11477046349034724)
,p_validation_name=>'MODIFICATION_DATE must be a valid date'
,p_validation_sequence=>100
,p_validation=>'MODIFICATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11478444155034733)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MODIFICATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11479939713034738)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11477046349034724)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'APP_SETTING'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11478444155034733)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11480131120034738)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11477046349034724)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'APP_SETTING'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Statusy Obecnosci'
,p_page_mode=>'NORMAL'
,p_step_title=>'Statusy Obecnosci'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130504104734'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11483737211722449)
,p_name=>'Statusy Obecnosci'
,p_template=>wwv_flow_api.id(63542159610630505)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"VERSION",',
'"NAME",',
'"DESCRIPTION_REQUIRED",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."APP_PRESENCE_STATUS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(63553150984630534)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11487144025722454)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484035794722451)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484143446722451)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484245004722451)
,p_query_column_id=>4
,p_column_alias=>'VERSION'
,p_column_display_sequence=>4
,p_column_heading=>'Wersja'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'VERSION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484315718722451)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Nazwa'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484445227722451)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION_REQUIRED'
,p_column_display_sequence=>6
,p_column_heading=>'Wymagany Opis'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(11488135672741966)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'DESCRIPTION_REQUIRED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484526660722451)
,p_query_column_id=>7
,p_column_alias=>'CREATION_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Utworzyl'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'CREATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484627852722451)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Data Utworzenia'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'CREATION_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484724129722451)
,p_query_column_id=>9
,p_column_alias=>'MODIFICATION_USER'
,p_column_display_sequence=>9
,p_column_heading=>'Zmodyfikowal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'MODIFICATION_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11484831878722451)
,p_query_column_id=>10
,p_column_alias=>'MODIFICATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Data Modyfikacji'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'K00'
,p_ref_table_name=>'PRESENCE_STATUS'
,p_ref_column_name=>'MODIFICATION_DATE'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549116512246675)
,p_column_sequence=>1
,p_query_column_name=>'ID'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549226000246675)
,p_column_sequence=>2
,p_query_column_name=>'ID_DISPLAY'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549314193246675)
,p_column_sequence=>3
,p_query_column_name=>'VERSION'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549437624246675)
,p_column_sequence=>4
,p_query_column_name=>'NAME'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549525503246675)
,p_column_sequence=>5
,p_query_column_name=>'DESCRIPTION_REQUIRED'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549643594246675)
,p_column_sequence=>6
,p_query_column_name=>'CREATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549746196246675)
,p_column_sequence=>7
,p_query_column_name=>'CREATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549831737246675)
,p_column_sequence=>8
,p_query_column_name=>'MODIFICATION_USER'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_region_rpt_cols(
 p_id=>wwv_flow_api.id(11549943409246675)
,p_column_sequence=>9
,p_query_column_name=>'MODIFICATION_DATE'
,p_display_as=>'TEXT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11487527741722456)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11485231220722452)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11483737211722449)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11485041660722452)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11483737211722449)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Zapisz'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11484939892722452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11483737211722449)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11485133175722452)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11483737211722449)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Usun'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11487225577722455)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11486024777722453)
,p_tabular_form_region_id=>wwv_flow_api.id(11483737211722449)
,p_validation_name=>'VERSION must be numeric'
,p_validation_sequence=>30
,p_validation=>'VERSION'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11485041660722452)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'VERSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11486217557722453)
,p_tabular_form_region_id=>wwv_flow_api.id(11483737211722449)
,p_validation_name=>'DESCRIPTION_REQUIRED must be numeric'
,p_validation_sequence=>50
,p_validation=>'DESCRIPTION_REQUIRED'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11485041660722452)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'DESCRIPTION_REQUIRED'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11486428021722453)
,p_tabular_form_region_id=>wwv_flow_api.id(11483737211722449)
,p_validation_name=>'CREATION_DATE must be a valid date'
,p_validation_sequence=>70
,p_validation=>'CREATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11485041660722452)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CREATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11486620071722453)
,p_tabular_form_region_id=>wwv_flow_api.id(11483737211722449)
,p_validation_name=>'MODIFICATION_DATE must be a valid date'
,p_validation_sequence=>90
,p_validation=>'MODIFICATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11485041660722452)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MODIFICATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11486729394722453)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11483737211722449)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'PRESENCE_STATUS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11485041660722452)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11486922284722454)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11483737211722449)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'PRESENCE_STATUS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Pozycje GPS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pozycje GPS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130611231042'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11496142475271357)
,p_plug_name=>'Pozycje GPS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"LAT",',
'"LON",',
'"LAT"||'',''||"LON" MAP_LINK,',
'"MOB_CREATION_USER",',
'"MOB_CREATION_DATE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE"',
'from "#OWNER#"."USER_LOCATION" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11496339472271357)
,p_name=>'Lokacje Uzytkownika'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_csv_output_separator=>','
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>9641725694872012
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11496416048271359)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11496530971271359)
,p_db_column_name=>'LAT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Szerokosc Geograficzna'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11496628302271360)
,p_db_column_name=>'LON'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dlugosc Geograficzna'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11496724491271360)
,p_db_column_name=>'MOB_CREATION_USER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mob Utworzyl'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOB_CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11496840933271360)
,p_db_column_name=>'MOB_CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mob Data Utworzenia'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOB_CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11496932224271360)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Utworzyl'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11497026726271360)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Data Utworzenia'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11497115570271360)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Zmodyfikowal'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11497222703271361)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Data Modyfikacji'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11556042115164150)
,p_db_column_name=>'MAP_LINK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mapa'
,p_column_link=>'https://maps.google.com/maps?q=#MAP_LINK#'
,p_column_linktext=>'<img src="#APP_IMAGES#icon-map-marker18.png" alt="pokaz na mapie">'
,p_column_link_attr=>'target="_blank"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAP_LINK'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11498335045271543)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96438'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:LAT:LON:MOB_CREATION_USER:MOB_CREATION_DATE:CREATION_USER:CREATION_DATE:MODIFICATION_USER:MODIFICATION_DATE:MAP_LINK'
,p_sort_column_1=>'CREATION_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ID'
,p_sort_direction_2=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11497725286271361)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11497428387271361)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11496142475271357)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24::'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Edycja Pozycji GPS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edycja Pozycji GPS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130505201432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11491828042271339)
,p_plug_name=>'Edycja Pozycji GPS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11498024110271361)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11492119064271341)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11491828042271339)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Zapisz'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11492418406271341)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11491828042271339)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11492021755271341)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11491828042271339)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11492238454271341)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11491828042271339)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Usun'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11493031748271342)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11493235418271344)
,p_name=>'P24_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11493415336271349)
,p_name=>'P24_LAT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Szerokosc Geograficzna'
,p_source=>'LAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11493645218271350)
,p_name=>'P24_LON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dlugosc Geograficzna'
,p_source=>'LON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11493840471271350)
,p_name=>'P24_MOB_CREATION_USER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mob Utworzyl'
,p_source=>'MOB_CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11494037396271351)
,p_name=>'P24_MOB_CREATION_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mob Data Utworzenia'
,p_source=>'MOB_CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11494222704271351)
,p_name=>'P24_CREATION_USER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Utworzyl'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11494434239271351)
,p_name=>'P24_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Utworzenia'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11494618718271351)
,p_name=>'P24_MODIFICATION_USER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zmodyfikowal'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11494825183271351)
,p_name=>'P24_MODIFICATION_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11491828042271339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Modyfikacji'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11495223840271352)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from USER_LOCATION'
,p_attribute_02=>'USER_LOCATION'
,p_attribute_03=>'P24_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11495418559271353)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of USER_LOCATION'
,p_attribute_02=>'USER_LOCATION'
,p_attribute_03=>'P24_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11495645976271353)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11492238454271341)
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Odebrane Pliki'
,p_page_mode=>'NORMAL'
,p_step_title=>'Odebrane Pliki'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130511145057'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11503525755313961)
,p_plug_name=>'Odebrane Pliki'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'substr(FILE_NAME,0,length(FILE_NAME)-4) FILE_NAME,',
'''f?p=''||:app_id||'':26:''||:app_session||''::::P26_ID:''||id icon_link,',
'dbms_lob.getlength("FILE_BODY") "FILE_BODY",',
'decode(nvl(dbms_lob.getlength(FILE_BODY),0),0,null,',
'    ''<img style=border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px; ''||',
'    ''src=''||',
'    apex_util.get_blob_file_src(''P26_FILE_BODY'',id)||',
'    '' height=39 width=85 alt=Image title=Image />'')',
'    detail_img,',
'decode(nvl(dbms_lob.getlength(FILE_BODY),0),0,null, apex_util.get_blob_file_src(''P26_FILE_BODY'',id)) detail_img_no_style,',
'"CONTENT_TYPE",',
'"MOB_CREATION_DATE",',
'"CREATION_USER",',
'"CREATION_DATE",',
'"MODIFICATION_USER",',
'"MODIFICATION_DATE",',
'"MOB_CREATION_USER"',
'from "#OWNER#"."FILE_CONTENT" ',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11503717270313963)
,p_name=>'Odebrane Pliki'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_enabled_yn=>'Y'
,p_icon_view_link_column=>'ICON_LINK'
,p_icon_view_img_src_column=>'DETAIL_IMG_NO_STYLE'
,p_icon_view_label_column=>'FILE_NAME'
,p_icon_view_img_attr_text=>'height="39"'
,p_icon_view_columns_per_row=>5
,p_detail_view_enabled_yn=>'Y'
,p_detail_view_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style>',
'table.apexir_WORKSHEET_CUSTOM { border: none !important; -moz-box-shadow: none; box-shadow: none; -webkit-box-shadow: none; }',
'.apexir_WORKSHEET_DATA td {border-bottom: none !important;}',
'table.reportDetail td {',
'	border: none !important;',
'	font: 11px/16px Arial, sans-serif;',
'	}',
'	table.reportDetail td.separator {',
'		background: #CCC;',
'		height: 2px !important;',
'padding: 0;',
'		line-height: 2px !important;',
'overflow: hidden;',
'		}',
'table.reportDetail td h1 {margin: 8px 0 !important}',
'table.reportDetail td img {margin-top: 8px; border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'.fontsize200   {',
'font-size:200%;',
'font-weight:bold;',
'}',
'</style>',
'<table class="reportDetail">'))
,p_detail_view_for_each_row=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td rowspan="3" valign="top"><a href="#ICON_LINK#"><img height="86" src="#DETAIL_IMG_NO_STYLE#"></a></td>',
'<td colspan="3"><h1><a href="#ICON_LINK#"><span class="fontsize200">#FILE_NAME#</span</a></h1></td>',
'</tr>',
'<tr>',
'<td><strong>DATE:</strong></td><td>#MOB_CREATION_DATE#</td>',
'</tr>',
'<tr>',
'<td><strong>USER:</strong></td><td>#MOB_CREATION_USER#</td>',
'</tr>'))
,p_detail_view_after_rows=>'</table>'
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>9649103492914618
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11503819763313964)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11503925949313964)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwa Pliku'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504015232313964)
,p_db_column_name=>'FILE_BODY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Plik'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_format_mask=>'DOWNLOAD:FILE_CONTENT:FILE_BODY:ID:::FILE_NAME:::Attachment:pobierz'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_BODY'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504127336313964)
,p_db_column_name=>'CONTENT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Typ'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONTENT_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504234840313965)
,p_db_column_name=>'MOB_CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mob Data Utworzenia'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOB_CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504343883313965)
,p_db_column_name=>'CREATION_USER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Utworzyl'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504423750313965)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Data Utworzenia'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504534725313965)
,p_db_column_name=>'MODIFICATION_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Zmodyfikowal'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504632811313965)
,p_db_column_name=>'MODIFICATION_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Data Modyfikacji'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFICATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11504714461313965)
,p_db_column_name=>'MOB_CREATION_USER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mob Utworzyl'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOB_CREATION_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11522520031996738)
,p_db_column_name=>'DETAIL_IMG_NO_STYLE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Detail Img No Style'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL_IMG_NO_STYLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11537838369754646)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Detail Img'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL_IMG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11538514819084611)
,p_db_column_name=>'ICON_LINK'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Icon Link'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ICON_LINK'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11505818731314142)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'96513'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'ID:FILE_NAME:FILE_BODY:MOB_CREATION_USER:MOB_CREATION_DATE:CREATION_USER:CREATION_DATE:MODIFICATION_USER:MODIFICATION_DATE:'
,p_sort_column_1=>'CREATION_DATE'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11505235124313966)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11504914559313965)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11503525755313961)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26::'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Odebrane Pliki'
,p_page_mode=>'NORMAL'
,p_step_title=>'Odebrane Pliki'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130511145315'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11499041226313954)
,p_plug_name=>'Odebrane Pliki'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11505539188313966)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11499326217313954)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11499041226313954)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Zapisz'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P26_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11499628642313954)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11499041226313954)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11499221432313954)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11499041226313954)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P26_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11499427037313954)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11499041226313954)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_image_alt=>'Usun'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P26_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11500240965313954)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11500436129313955)
,p_name=>'P26_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11500634751313955)
,p_name=>'P26_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nazwa Pliku'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11500818748313956)
,p_name=>'P26_FILE_BODY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plik'
,p_source=>'FILE_BODY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CONTENT_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_05=>'CREATION_DATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11501018995313956)
,p_name=>'P26_CONTENT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Content Type'
,p_source=>'CONTENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11501231854313956)
,p_name=>'P26_MOB_CREATION_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mob Data Utworzenia'
,p_source=>'MOB_CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11501427356313956)
,p_name=>'P26_CREATION_USER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Utworzyl'
,p_source=>'CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11501617001313957)
,p_name=>'P26_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Utworzenia'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11501838856313957)
,p_name=>'P26_MODIFICATION_USER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zmodyfikowal'
,p_source=>'MODIFICATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11502017801313957)
,p_name=>'P26_MODIFICATION_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Modyfikacji'
,p_source=>'MODIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11502219223313957)
,p_name=>'P26_MOB_CREATION_USER'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mob Utworzyl'
,p_source=>'MOB_CREATION_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11536145285204498)
,p_name=>'P26_IMAGE_DISPLAY'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(11499041226313954)
,p_prompt=>'Zdjecie'
,p_source=>'select apex_util.get_blob_file_src(''P26_IMAGE_BODY'',:P26_ID) from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select file_body from file_content ',
'where id = :P26_ID'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11502615287313957)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FILE_CONTENT'
,p_attribute_02=>'FILE_CONTENT'
,p_attribute_03=>'P26_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11502825832313958)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FILE_CONTENT'
,p_attribute_02=>'FILE_CONTENT'
,p_attribute_03=>'P26_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11503031070313958)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11499427037313954)
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Logi Komunikacji'
,p_page_mode=>'NORMAL'
,p_step_title=>'Logi Komunikacji'
,p_step_sub_title=>'Logi Komunikacji'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'POST'
,p_last_upd_yyyymmddhh24miss=>'20160329154625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11517227386945437)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63536139609630480)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(34808199147731347)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63555656732630541)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11517518695945440)
,p_plug_name=>'Logi Komunikacji'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63539440580630500)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'ID,',
'PROCEDURE_CALL,',
'PROCEDURE_PARAMS,',
'substr(RESPONSE,0,5000) as RESPONSE,',
'STATUS,',
'ERROR_STACK,',
'ERROR_BACKTRACE,',
'CALLING_USER,',
'STARTED,',
'FINSHED,',
'ID as rerun',
' from RESTFUL_REQUEST_LOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11517641069945440)
,p_name=>'Logi Komunikacji'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANDRZEJ.RACZKOWSKI'
,p_internal_uid=>9663027292546095
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11517826352945441)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11517944960945442)
,p_db_column_name=>'PROCEDURE_CALL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Procedure Call'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCEDURE_CALL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518030030945442)
,p_db_column_name=>'PROCEDURE_PARAMS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Procedure Params'
,p_column_html_expression=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p style="width: 160px; text-wrap: unrestricted; word-wrap: break-word;">',
'#PROCEDURE_PARAMS#</p>'))
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCEDURE_PARAMS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518146434945442)
,p_db_column_name=>'RESPONSE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Response'
,p_column_html_expression=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p style="width: 400px; text-wrap: unrestricted; word-wrap: break-word;">',
'#RESPONSE#</p>'))
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518237694945442)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518316219945442)
,p_db_column_name=>'ERROR_STACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Stack'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_STACK'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518444635945442)
,p_db_column_name=>'ERROR_BACKTRACE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Error Backtrace'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_BACKTRACE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518526677945442)
,p_db_column_name=>'CALLING_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Calling User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CALLING_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518632576945442)
,p_db_column_name=>'STARTED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Started'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'STARTED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11518724502945442)
,p_db_column_name=>'FINSHED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Finshed'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FINSHED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13264939051076453)
,p_db_column_name=>'RERUN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Wyślij Ponownie'
,p_column_link=>'javascript:doSubmit(''RERUN_ID_#RERUN#'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/logic_32.gif" alt="Uruchom Ponownie">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'RERUN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11518833301945588)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96643'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:PROCEDURE_CALL:PROCEDURE_PARAMS:STATUS:ERROR_STACK:CALLING_USER:STARTED:FINSHED:RERUN'
,p_sort_column_1=>'STARTED'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13265341705146312)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'rerun'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_user varchar2(30) := ''WINUEL'';',
'  l_pass varchar2(30) := ''0D4082A5D2FB326E27C581250F133C4E'';',
'  l_procPar varchar2(4000);',
'  l_appData varchar2(4000);',
'begin',
'',
'    select procedure_params into l_procPar  from k00.restful_request_log',
'     where procedure_call = ''addAppData''',
'       and id = substr(:REQUEST,10);',
'',
'    l_appData := rtrim(substr(l_procPar, 17), '''''''');',
'    mobws_utils.addAppData(l_user, l_pass, l_appData);',
'end;'))
,p_process_error_message=>'Błąd podczas ponownego wysyłania rekordu #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST like ''RERUN_ID_%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Rekord wysłano ponownie'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_api.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Help Page'
,p_alias=>'HELP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Help Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(63532028429630467)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'Nie ma pomocy dla tej strony.'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130506095328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21077340173018557)
,p_plug_name=>'Pomoc'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63542159610630505)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'NORMAL'
,p_step_title=>'Feedback'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(63532028429630467)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_page_comment=>'This page was generated by the feedback wizard'
,p_last_updated_by=>'SEBASTIAN.GRZYS'
,p_last_upd_yyyymmddhh24miss=>'20130506095121'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35724589592928850)
,p_plug_name=>'Zgłoszenie'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35727394823928860)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35724589592928850)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3655241289221053)
,p_button_image_alt=>'Zapisz Zgłoszenie'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35727592603928861)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35724589592928850)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3655241289221053)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'BOTTOM'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35724785205928853)
,p_name=>'P102_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_prompt=>'Aplikacja:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select application_id||''. ''||application_name d, application_id v from apex_applications where application_id = :P102_APPLICATION_ID'
,p_cSize=>60
,p_cHeight=>1
,p_tag_attributes=>'class="fielddatabold"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35725296229928856)
,p_name=>'P102_PAGE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_prompt=>'Strona:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P102_PAGE_ID and application_id = :P102_APPLICATION_ID'
,p_cSize=>60
,p_cHeight=>1
,p_tag_attributes=>'class="fielddatabold"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Identifies page within application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35725811147928857)
,p_name=>'P102_A'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35725989808928857)
,p_name=>'P102_FEEDBACK'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_prompt=>'Treść Zgłoszenia'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(63555550245630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35726486196928858)
,p_name=>'P102_X'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35726706521928858)
,p_name=>'P102_FEEDBACK_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_prompt=>'Typ Zgłoszenia'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555330617630541)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please identify the type of feedback you are providing.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35727190020928859)
,p_name=>'P102_Y'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(35724589592928850)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35727794522928863)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P102_FEEDBACK,',
'    p_type            => :P102_FEEDBACK_TYPE,',
'    p_application_id  => :P102_APPLICATION_ID,',
'    p_page_id         => :P102_PAGE_ID,',
'    p_email           => null);'))
,p_process_when_button_id=>wwv_flow_api.id(35727394823928860)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35728013625928864)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
);
end;
/
prompt --application/pages/page_00112
begin
wwv_flow_api.create_page(
 p_id=>112
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(63528830251630401)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130425114515'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12051634450487638)
,p_plug_name=>'Login Page'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63538242092630481)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12052245600487672)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12051634450487638)
,p_button_name=>'P112_LOGIN'
,p_button_static_id=>'P112_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63533850818630469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12051824308487653)
,p_name=>'P112_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12051634450487638)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12052043820487672)
,p_name=>'P112_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12051634450487638)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63555258814630541)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12052625930487686)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P112_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12052415000487675)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P112_USERNAME,',
'    p_password => :P112_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12053045690487688)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12052824903487686)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P112_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_57565
begin
wwv_flow_api.create_page(
 p_id=>57565
,p_user_interface_id=>wwv_flow_api.id(18209337556379279)
,p_name=>'pre HTML5 File Upload'
,p_page_mode=>'NORMAL'
,p_step_title=>'pre HTML5 File Upload'
,p_step_sub_title=>'pre HTML5 File Upload'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'ANDRZEJ.RACZKOWSKI'
,p_last_upd_yyyymmddhh24miss=>'20130509231236'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11634223300712029)
,p_plug_name=>'Form on WWV_FLOW_FILES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11634436400712032)
,p_branch_action=>'htp.init;'||wwv_flow.LF||
'apex_application.show'||wwv_flow.LF||
'( p_flow_id      => :APP_ID '||wwv_flow.LF||
', p_flow_step_id => :P57565_PAGE_RETURN'||wwv_flow.LF||
', p_instance     => :APP_SESSION '||wwv_flow.LF||
', p_request      => apex_application.g_request'||wwv_flow.LF||
', p_widget_name  => ''jquery.plugin.fileuploader.iframe'''||wwv_flow.LF||
', x01            => apex_application.g_x01'||wwv_flow.LF||
');'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'PLSQL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 19-FEB-2011 16:37 by ADMIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11634637160712034)
,p_name=>'P57565_CONTENTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11634223300712029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contents'
,p_source=>'CONTENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11634223300712029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11634816445712035)
,p_name=>'P57565_FILENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11634223300712029)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11635024897712037)
,p_name=>'P57565_PAGE_RETURN'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(11634223300712029)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
