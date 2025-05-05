prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>1239960890768155
,p_default_application_id=>102
,p_default_owner=>'INDICADORES'
);
end;
/
 
prompt APPLICATION 102 - singular certificate
--
-- Application Export:
--   Application:     102
--   Name:            singular certificate
--   Date and Time:   12:04 Monday May 5, 2025
--   Exported By:     FPEREZ
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     248314041230907
--

-- Application Statistics:
--   Pages:                      6
--     Items:                   17
--     Processes:               16
--     Regions:                 12
--     Buttons:                 11
--     Dynamic Actions:          3
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              16
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   2
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--       Queries:                2
--       Layouts:                2
--     E-Mail:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'INDICADORES')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'singular certificate')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'102')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'7C381C7B28DA54ED8F9F81750B3A02559D097B3797C0E74852C9F9BF4BB4D426'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2022.09.05.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(6986099592066212)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:singular certificate'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'singular certificate'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220920113026'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(6986864584066210)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7125249028066092)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7114987981066140)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7126702929066084)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7127296410066083)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(7126702929066084)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7127638077066083)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(7126702929066084)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223354136384144222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(7116230462066121)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233541363841443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(7116546909066121)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6983954198066215)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6984299896066214)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6984505654066214)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6984837570066214)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6985144458066214)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6985405978066213)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6985714361066213)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(7117833415066120)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
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
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(7120401148066105)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(7120401148066105)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7120850576066104)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_polizas
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(7216082187564549)
,p_lov_name=>'LOV_POLIZAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR(cp.capo_casu_cd_sucursal)||'' ''||TO_CHAR(cp.capo_carp_cd_ramo)||'' ''||to_char(cp.capo_nu_poliza)||'' ''||'' ( ''||',
'       cl.cacn_cd_nacionalidad||'' ''||cl.cacn_nu_cedula_rif||'' - ''||cl.cacn_nm_apellido_razon||'' )'' nbrecliente,',
'       TO_CHAR(cp.capo_casu_cd_sucursal)||'' ''||TO_CHAR(cp.capo_carp_cd_ramo)||'' ''||to_char(cp.capo_nu_poliza) nropoliza',
' from cartera.cart_polizas cp, cartera.Cart_Clientes cl',
'where cp.capo_cacn_nu_cedula_rif   = cl.cacn_nu_cedula_rif',
'  and cp.capo_cacn_cd_nacionalidad = cl.cacn_cd_nacionalidad'))
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(7118467147066119)
,p_group_name=>'Administration'
);
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
 p_id=>wwv_flow_api.id(6986323449066211)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6986565964066210)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6987180864066206)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6987424403066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6987750249066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6988000667066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6988371074066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6988659231066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6988960953066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6989286333066202)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6989593935066201)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6989869717066201)
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6990255253066200)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6990524773066200)
,p_page_template_id=>wwv_flow_api.id(6990255253066200)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6990830647066200)
,p_page_template_id=>wwv_flow_api.id(6990255253066200)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6991172871066200)
,p_page_template_id=>wwv_flow_api.id(6990255253066200)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6991776443066199)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">#BODY#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6992000671066199)
,p_page_template_id=>wwv_flow_api.id(6991776443066199)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6992319362066199)
,p_page_template_id=>wwv_flow_api.id(6991776443066199)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6992543714066199)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6992843796066199)
,p_page_template_id=>wwv_flow_api.id(6992543714066199)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6993174701066199)
,p_page_template_id=>wwv_flow_api.id(6992543714066199)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6993461040066199)
,p_page_template_id=>wwv_flow_api.id(6992543714066199)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6994029632066199)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6994367753066199)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6994693754066198)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6994954596066198)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6995224545066198)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6995544020066198)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6995886477066198)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6996116662066197)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6996425493066197)
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6996826311066197)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6997173774066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6997465977066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6997778854066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6998033065066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6998301794066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6998675181066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6998993057066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6999284667066197)
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(6999683654066196)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6999981162066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7000209933066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7000531922066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7000805859066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7001150944066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7001489200066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7001750922066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7002030162066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7002368193066196)
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7002725120066196)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7003075806066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7003318351066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7003622132066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7003966192066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7004291048066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7004586129066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7004827341066195)
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7005296234066195)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7005500587066195)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7005822757066195)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7006154973066195)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7006452808066194)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7006745371066194)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7007049050066194)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7007378366066194)
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7092038117066158)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7092708964066157)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7092845758066156)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7007744872066194)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7008009563066192)
,p_plug_template_id=>wwv_flow_api.id(7007744872066194)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7011427855066190)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7011676310066190)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7011981702066190)
,p_plug_template_id=>wwv_flow_api.id(7011676310066190)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7012247018066190)
,p_plug_template_id=>wwv_flow_api.id(7011676310066190)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7012406554066190)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7012783252066190)
,p_plug_template_id=>wwv_flow_api.id(7012406554066190)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7013000501066189)
,p_plug_template_id=>wwv_flow_api.id(7012406554066190)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7014638857066189)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7014959745066189)
,p_plug_template_id=>wwv_flow_api.id(7014638857066189)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7015283285066189)
,p_plug_template_id=>wwv_flow_api.id(7014638857066189)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7021869687066186)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7022198366066186)
,p_plug_template_id=>wwv_flow_api.id(7021869687066186)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7022419174066186)
,p_plug_template_id=>wwv_flow_api.id(7021869687066186)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7027291680066185)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7029225223066184)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7029583728066184)
,p_plug_template_id=>wwv_flow_api.id(7029225223066184)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7031325273066184)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7031629503066183)
,p_plug_template_id=>wwv_flow_api.id(7031325273066184)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7033675217066183)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7033900347066183)
,p_plug_template_id=>wwv_flow_api.id(7033675217066183)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7035529429066182)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7036175971066182)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7036445034066182)
,p_plug_template_id=>wwv_flow_api.id(7036175971066182)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7036630269066182)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7036970938066182)
,p_plug_template_id=>wwv_flow_api.id(7036630269066182)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7037258619066182)
,p_plug_template_id=>wwv_flow_api.id(7036630269066182)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7043447727066180)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7043706836066179)
,p_plug_template_id=>wwv_flow_api.id(7043447727066180)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7044014894066179)
,p_plug_template_id=>wwv_flow_api.id(7043447727066180)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7046035598066179)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7047056380066179)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7047337338066178)
,p_plug_template_id=>wwv_flow_api.id(7047056380066179)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7069155010066169)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7070771653066167)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7072110304066167)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7073168510066166)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7077169858066165)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7080192304066164)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7081145720066163)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7082182641066163)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7082316472066162)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7087703428066161)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7089339797066160)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7089759087066160)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7048380056066178)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7048975090066177)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7052356327066175)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7054392538066174)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7056152589066174)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7059715396066173)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7059715396066173)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7062319623066172)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7063551620066171)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7063720898066171)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7068955783066169)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091386332066159)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091486379066158)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091509892066158)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091623564066158)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091791467066158)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091868501066158)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7091972256066158)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(7094183620066156)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(7094361358066154)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(7094203128066155)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(7095585052066151)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(7005296234066195)
,p_default_dialog_template=>wwv_flow_api.id(6990255253066200)
,p_error_template=>wwv_flow_api.id(6991776443066199)
,p_printer_friendly_template=>wwv_flow_api.id(7005296234066195)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(6991776443066199)
,p_default_button_template=>wwv_flow_api.id(7092708964066157)
,p_default_region_template=>wwv_flow_api.id(7036630269066182)
,p_default_chart_template=>wwv_flow_api.id(7036630269066182)
,p_default_form_template=>wwv_flow_api.id(7036630269066182)
,p_default_reportr_template=>wwv_flow_api.id(7036630269066182)
,p_default_tabform_template=>wwv_flow_api.id(7036630269066182)
,p_default_wizard_template=>wwv_flow_api.id(7036630269066182)
,p_default_menur_template=>wwv_flow_api.id(7046035598066179)
,p_default_listr_template=>wwv_flow_api.id(7036630269066182)
,p_default_irr_template=>wwv_flow_api.id(7035529429066182)
,p_default_report_template=>wwv_flow_api.id(7059715396066173)
,p_default_label_template=>wwv_flow_api.id(7091623564066158)
,p_default_menu_template=>wwv_flow_api.id(7094183620066156)
,p_default_calendar_template=>wwv_flow_api.id(7094203128066155)
,p_default_list_template=>wwv_flow_api.id(7089759087066160)
,p_default_nav_list_template=>wwv_flow_api.id(7081145720066163)
,p_default_top_nav_list_temp=>wwv_flow_api.id(7081145720066163)
,p_default_side_nav_list_temp=>wwv_flow_api.id(7080192304066164)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(7012406554066190)
,p_default_dialogr_template=>wwv_flow_api.id(7011427855066190)
,p_default_option_label=>wwv_flow_api.id(7091623564066158)
,p_default_required_label=>wwv_flow_api.id(7091972256066158)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(7082182641066163)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.3/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7094593291066153)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7094718851066153)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7094979614066153)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7095142101066153)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7095377398066153)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
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
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7008505366066191)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7008954296066191)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7009566173066190)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7009977759066190)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7013337252066189)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7013741094066189)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7015590585066188)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7016365567066188)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7017576550066188)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7018775188066187)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7019195882066187)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7021183919066187)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7024514744066186)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7024924495066185)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7025791211066185)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7027754142066185)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7028547276066184)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7029869641066184)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7030464916066184)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7032337524066183)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7044362369066179)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7044716579066179)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7045592030066179)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7047648939066178)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7048662802066177)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7049218661066176)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7050453212066176)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7051031926066176)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7052675836066175)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7056481959066174)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7060066179066172)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7060647522066172)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7061026484066172)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7062658708066171)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7064264232066171)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7066054452066170)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7066890890066170)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7069482640066168)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7070048410066168)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7071060003066167)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7073407647066166)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7074642262066165)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7075826794066165)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7078432461066164)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7079015812066164)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7082876407066162)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7084827536066161)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7085467623066161)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7090866361066160)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7092290995066157)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7093269168066156)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7095742740066148)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7096162726066148)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7097724041066147)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7098113077066147)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7099702017066147)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7100196548066146)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7101711665066146)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7102164643066146)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7103753177066145)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7104180859066145)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7104502822066145)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7104915288066145)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7105328952066145)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7105796085066145)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7106139096066145)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7107510781066144)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7108918937066144)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7109951393066143)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7110314134066143)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7110741785066143)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7111111638066143)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7111745667066143)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7112302583066143)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7112722467066143)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7113162581066142)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7113520214066142)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7114363392066142)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6990135723066200)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(6987180864066206)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6991484477066199)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(6990255253066200)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6991653174066199)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(6990255253066200)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6993751349066199)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(6992543714066199)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6993999556066199)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(6992543714066199)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6996761581066197)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(6994029632066199)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6999577479066196)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(6996826311066197)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7002682899066196)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(6999683654066196)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7005114342066195)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7002725120066196)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7007691651066194)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7005296234066195)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7008345563066192)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7008784509066191)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(7008505366066191)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7009117997066191)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(7008954296066191)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7009368792066191)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(7008954296066191)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7009761643066190)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(7009566173066190)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7010105951066190)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(7009977759066190)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7010314974066190)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(7008505366066191)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7010551583066190)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(7009566173066190)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7010773876066190)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(7008505366066191)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7010961449066190)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(7009566173066190)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7011177128066190)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(7008505366066191)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7011316456066190)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7007744872066194)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(7009977759066190)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7013586956066189)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7012406554066190)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7013946749066189)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(7012406554066190)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(7013741094066189)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7014180463066189)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(7012406554066190)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7014331708066189)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(7012406554066190)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(7013741094066189)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7014584953066189)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7012406554066190)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7015712561066188)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(7015590585066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7015984584066188)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(7015590585066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7016121240066188)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(7015590585066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7016558390066188)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7016745461066188)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7016933835066188)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7017119969066188)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(7015590585066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7017317976066188)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7017771653066188)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7017981325066188)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7018164491066188)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7018342598066188)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7018585786066187)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7018902991066187)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(7018775188066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7019393306066187)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(7019195882066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7019585012066187)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(7018775188066187)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7019783440066187)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7019961719066187)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7020129914066187)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7020381501066187)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(7019195882066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7020578419066187)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7020793521066187)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7020958362066187)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7021302741066187)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(7021183919066187)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7021542371066186)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(7021183919066187)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7021757618066186)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7014638857066189)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7022745252066186)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7022992683066186)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7023135971066186)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7023390568066186)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7023554982066186)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7023715079066186)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7023902211066186)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7024141622066186)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7024307867066186)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7024719398066186)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(7024514744066186)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7025175731066185)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(7024924495066185)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7025308157066185)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(7024514744066186)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7025532162066185)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(7019195882066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7025921810066185)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(7025791211066185)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7026190557066185)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7026319842066185)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7026598644066185)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7026762021066185)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7026936351066185)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(7019195882066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7027169035066185)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7021869687066186)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7027575435066185)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7027926421066185)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(7027754142066185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7028139848066184)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(7027754142066185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7028374705066184)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(7027754142066185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7028782212066184)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(7028547276066184)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7028993890066184)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(7028547276066184)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7029172099066184)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7027291680066185)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7030079601066184)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7029225223066184)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(7029869641066184)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7030278650066184)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7029225223066184)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7030690323066184)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7029225223066184)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(7030464916066184)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7030805228066184)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7029225223066184)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(7030464916066184)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7031077669066184)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7029225223066184)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7031223179066184)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7029225223066184)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7031966770066183)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7032124869066183)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7032501899066183)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7032774920066183)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7032955824066183)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7033169778066183)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7033314998066183)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7033552668066183)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7031325273066184)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7034296030066183)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7034461326066183)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7034626147066183)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7034845273066182)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7035084681066182)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7035237833066182)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7035406727066182)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7033675217066183)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(7032337524066183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7035858460066182)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7035529429066182)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7036055563066182)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7035529429066182)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7037561909066182)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7037781778066182)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7037942826066181)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7038183689066181)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(7016365567066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7038392618066181)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7038520004066181)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7038702320066181)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7038999085066181)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7039106745066181)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7039300824066181)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7039515121066181)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7039780887066181)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7039914064066181)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7040103586066181)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7040348332066180)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7040511228066180)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7040718674066180)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7040916666066180)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7041140404066180)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(7017576550066188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7041348313066180)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(7018775188066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7041558135066180)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(7019195882066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7041779779066180)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(7018775188066187)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7041912034066180)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7042199136066180)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7042334820066180)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7042556722066180)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(7019195882066187)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7042741234066180)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7042907859066180)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7043112447066180)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7043386917066180)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7036630269066182)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(7013337252066189)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7044585111066179)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7043447727066180)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(7044362369066179)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7044913355066179)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7043447727066180)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(7044716579066179)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7045106998066179)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7043447727066180)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7045305633066179)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7043447727066180)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(7044716579066179)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7045758230066179)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7043447727066180)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(7045592030066179)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7045981456066179)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7043447727066180)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(7045592030066179)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7046386098066179)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7046035598066179)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(7027754142066185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7046574720066179)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7046035598066179)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7046768896066179)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7046035598066179)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(7027754142066185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7046901288066179)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7046035598066179)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7047886582066178)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7047056380066179)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(7047648939066178)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7048047518066178)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7047056380066179)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(7047648939066178)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7048231189066178)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7047056380066179)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7048803963066177)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(7048380056066178)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7049466279066176)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7049638346066176)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7049811802066176)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7050026580066176)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7050225254066176)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7050622091066176)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(7050453212066176)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7050835488066176)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(7050453212066176)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7051207778066176)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(7051031926066176)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7051483316066176)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7051603308066176)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7051818363066176)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7052032023066175)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7052211016066175)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(7048975090066177)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7052867726066175)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7053039989066175)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7053263234066175)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7053487373066175)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7053699935066175)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7053824061066175)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7054070224066175)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7054229006066174)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7052356327066175)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7054686231066174)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7054812168066174)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7055075526066174)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7055223486066174)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7055497640066174)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7055600671066174)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7055859369066174)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7056056889066174)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7054392538066174)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(7052675836066175)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7056605185066174)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(7056481959066174)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7056840900066174)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7057032751066174)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(7056481959066174)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7057293165066174)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7057451949066174)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(7056481959066174)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7057670090066173)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7057803955066173)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7058061401066173)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(7056481959066174)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7058283508066173)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(7056481959066174)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7058476439066173)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7058681955066173)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7058880353066173)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7059090816066173)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7059281385066173)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7059455595066173)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7059690523066173)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7056152589066174)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7060288146066172)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(7060066179066172)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7060401046066172)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(7060066179066172)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7060899913066172)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(7060647522066172)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7061279896066172)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(7061026484066172)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7061454796066172)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(7061026484066172)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7061645815066172)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(7061026484066172)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7061836886066172)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(7060647522066172)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7062011275066172)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7062241539066172)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7059715396066173)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(7061026484066172)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7062802929066171)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7062319623066172)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(7062658708066171)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7063060405066171)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7062319623066172)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(7050453212066176)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7063262777066171)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7062319623066172)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(7050453212066176)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7063412599066171)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7062319623066172)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(7062658708066171)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7064064473066171)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7064471607066171)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(7064264232066171)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7064645192066171)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7064871560066171)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(7064264232066171)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7065013413066171)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7065289593066170)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(7064264232066171)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7065498296066170)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7065627815066170)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7065854147066170)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7066257660066170)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(7066054452066170)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7066442563066170)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(7066054452066170)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7066692463066170)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7067087046066170)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(7066890890066170)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7067287043066170)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(7066890890066170)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7067452567066170)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7067657366066170)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(7048662802066177)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7067890154066170)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7068083734066170)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(7064264232066171)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7068246920066170)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(7050453212066176)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7068483349066170)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(7050453212066176)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7068620194066169)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(7049218661066176)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7068805936066169)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7063720898066171)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7069690694066168)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7069155010066169)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(7069482640066168)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7069880150066168)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7069155010066169)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(7069482640066168)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7070206435066168)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7069155010066169)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(7070048410066168)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7070449665066168)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7069155010066169)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(7070048410066168)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7070632881066167)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7069155010066169)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(7070048410066168)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7071229459066167)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7070771653066167)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(7071060003066167)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7071464497066167)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7070771653066167)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(7071060003066167)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7071605998066167)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7070771653066167)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(7071060003066167)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7071874217066167)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7070771653066167)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7072038714066167)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7070771653066167)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7072426535066166)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7072110304066167)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7072610121066166)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7072110304066167)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7072854805066166)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7072110304066167)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7073091578066166)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7072110304066167)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7073681572066166)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7073823475066166)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7074074437066166)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7074246419066165)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7074497582066165)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7074887259066165)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7075023075066165)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7075208862066165)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7075435136066165)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7075684591066165)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7076010498066165)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(7075826794066165)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7076274785066165)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(7075826794066165)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7076433454066165)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(7075826794066165)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7076636714066165)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7076860026066165)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(7075826794066165)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7077089096066165)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7073168510066166)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(7075826794066165)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7077420250066164)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7077642905066164)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7077846744066164)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7078023656066164)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7078281873066164)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7078626387066164)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(7078432461066164)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7078848379066164)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(7078432461066164)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7079265614066164)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(7079015812066164)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7079470347066164)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7079625164066164)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7079879327066164)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7080039882066164)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7077169858066165)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7080460385066163)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7080192304066164)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7080651454066163)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7080192304066164)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7080869028066163)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7080192304066164)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7081003683066163)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7080192304066164)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7081419333066163)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7081145720066163)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7081658575066163)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7081145720066163)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7081820296066163)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7081145720066163)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7082022402066163)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7081145720066163)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7082604309066162)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7083044100066162)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(7082876407066162)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7083271165066162)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7083453951066162)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(7082876407066162)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7083684410066162)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7083867153066162)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(7082876407066162)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7084055451066162)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7084290092066162)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7084401771066162)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7084671405066162)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7085057787066161)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(7084827536066161)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7085203154066161)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7085656264066161)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(7085467623066161)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7085836769066161)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(7085467623066161)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7086033149066161)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7086260618066161)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7086474104066161)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7086685779066161)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(7082876407066162)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7086827177066161)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(7078432461066164)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7087029460066161)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(7078432461066164)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7087288325066161)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(7084827536066161)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7087476097066161)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7087640985066161)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7082316472066162)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7088027941066160)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(7085467623066161)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7088238276066160)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(7073407647066166)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7088403305066160)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(7085467623066161)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7088660332066160)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(7079015812066164)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7088848370066160)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7089053549066160)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7089236509066160)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(7087703428066161)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(7079015812066164)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7089657758066160)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7089339797066160)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7090060920066160)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7089759087066160)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(7074642262066165)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7090254263066160)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7089759087066160)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7090471429066160)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7089759087066160)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7090666798066160)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7089759087066160)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7091055689066160)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7089759087066160)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(7090866361066160)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7091259247066159)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7089759087066160)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(7090866361066160)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7092420063066157)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(7092038117066158)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(7092290995066157)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7092692348066157)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7092038117066158)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(7092290995066157)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7093003884066156)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7093444834066156)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(7093269168066156)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7093614181066156)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(7092290995066157)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7093846301066156)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(7093269168066156)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7094084152066156)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(7092290995066157)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7095914414066148)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(7095742740066148)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7096375475066148)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(7096162726066148)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7096519152066148)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(7095742740066148)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7096738312066147)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(7096162726066148)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7096936074066147)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(7095742740066148)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7097160794066147)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(7096162726066148)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7097316953066147)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(7095742740066148)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7097553816066147)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(7096162726066148)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7097915345066147)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(7097724041066147)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7098380000066147)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(7098113077066147)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7098535974066147)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(7097724041066147)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7098743531066147)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(7098113077066147)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7098989345066147)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(7097724041066147)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7099197397066147)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(7098113077066147)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7099342024066147)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(7097724041066147)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7099545108066147)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(7098113077066147)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7099905985066147)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(7099702017066147)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7100321107066146)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(7100196548066146)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7100587554066146)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(7099702017066147)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7100776693066146)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(7100196548066146)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7100915557066146)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(7099702017066147)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7101133594066146)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(7100196548066146)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7101367151066146)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(7099702017066147)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7101582675066146)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(7100196548066146)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7101969718066146)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(7101711665066146)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7102343481066146)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(7102164643066146)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7102540938066146)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(7101711665066146)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7102728779066146)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(7102164643066146)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7102944298066146)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(7101711665066146)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7103155934066146)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(7102164643066146)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7103381754066146)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(7101711665066146)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7103595266066145)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(7102164643066146)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7103994450066145)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(7103753177066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7104303257066145)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(7104180859066145)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7104731150066145)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(7104502822066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7105112637066145)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(7104915288066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7105588879066145)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(7105328952066145)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7105914139066145)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(7105796085066145)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7106370739066144)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(7106139096066145)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7106597356066144)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(7106139096066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7106741631066144)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(7104180859066145)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7106911774066144)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(7104502822066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7107117440066144)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(7104915288066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7107366715066144)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(7105328952066145)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7107703255066144)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(7107510781066144)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7107966826066144)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(7107510781066144)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7108185244066144)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(7107510781066144)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7108364716066144)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(7103753177066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7108567920066144)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(7106139096066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7108701999066144)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(7105796085066145)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7109141776066144)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(7108918937066144)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7109381125066144)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(7103753177066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7109534793066144)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(7105796085066145)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7109712365066143)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(7103753177066145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7110130332066143)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(7109951393066143)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7110596566066143)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(7110314134066143)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7110956768066143)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(7110741785066143)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7111387085066143)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(7111111638066143)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7111554765066143)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(7111111638066143)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7111972820066143)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(7111745667066143)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7112111890066143)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(7110314134066143)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7112582802066143)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(7112302583066143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7112927471066142)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(7112722467066143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7113304552066142)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(7113162581066142)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7113701142066142)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(7113520214066142)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7113920252066142)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7114131046066142)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(7112302583066143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7114532333066142)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(7114363392066142)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
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
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(7118203367066119)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/reports/report_queries/certificateinsurance
begin
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(11602346008413710)
,p_name=>'CertificateInsurance'
,p_query_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select distinct dp.cacn_nm_apellido_razon,fe.cjfc_di_txt,',
'         po.capo_casu_cd_sucursal||''-''||po.capo_carp_cd_ramo||''-''||po.capo_nu_poliza nropoliza,',
'         ce.cace_fe_desde, ce.cace_fe_hasta',
'    from cartera.cart_clientes dp, cartera.cart_productores pr,',
'         cajt_facturas_externas fe,cartera.cart_clientes cl, ',
'         cartera.cart_certificados ce, cartera.cart_polizas po',
'   where dp.cacn_nu_cedula_rif       = pr.capd_cacn_nu_cedula_rif',
'     and dp.cacn_cd_nacionalidad     = pr.capd_cacn_cd_nacionalidad',
'     and pr.capd_cd_productor        = fe.cjfc_cd_productor',
'     and fe.cjfc_nu_poliza           = po.capo_casu_cd_sucursal||''-''||po.capo_carp_cd_ramo||''-''||po.capo_nu_poliza',
'     and cl.cacn_nu_cedula_rif       = po.capo_cacn_nu_cedula_rif',
'     and cl.cacn_cd_nacionalidad     = po.capo_cacn_cd_nacionalidad',
'     and ce.cace_nu_certificado      = 0',
'     and ce.cace_capo_nu_poliza      = po.capo_nu_poliza',
'     and ce.cace_carp_cd_ramo        = po.capo_carp_cd_ramo',
'     and ce.cace_casu_cd_sucursal    = po.capo_casu_cd_sucursal',
'     and po.capo_nu_poliza           = 2170',
'     and po.capo_carp_cd_ramo        = 30',
'     and po.capo_casu_cd_sucursal    = 75'))
,p_report_layout_id=>wwv_flow_api.id(11613656461877395)
,p_format=>'PDF'
,p_output_file_name=>'CertificateInsurance'
,p_content_disposition=>'INLINE'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(11614014328875494)
,p_shared_query_id=>wwv_flow_api.id(11602346008413710)
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select distinct dp.cacn_nm_apellido_razon nbreproductor,cl.cacn_nm_apellido_razon nbrecliente, fe.cjfc_di_txt,',
'         po.capo_casu_cd_sucursal||''-''||po.capo_carp_cd_ramo||''-''||po.capo_nu_poliza nropoliza,',
'         ce.cace_fe_desde, ce.cace_fe_hasta',
'    from cartera.cart_clientes dp, cartera.cart_productores pr,',
'         cajt_facturas_externas fe,cartera.cart_clientes cl, ',
'         cartera.cart_certificados ce, cartera.cart_polizas po',
'   where dp.cacn_nu_cedula_rif       = pr.capd_cacn_nu_cedula_rif',
'     and dp.cacn_cd_nacionalidad     = pr.capd_cacn_cd_nacionalidad',
'     and pr.capd_cd_productor        = fe.cjfc_cd_productor',
'     and fe.cjfc_nu_poliza           = po.capo_casu_cd_sucursal||''-''||po.capo_carp_cd_ramo||''-''||po.capo_nu_poliza',
'     and cl.cacn_nu_cedula_rif       = po.capo_cacn_nu_cedula_rif',
'     and cl.cacn_cd_nacionalidad     = po.capo_cacn_cd_nacionalidad',
'     and ce.cace_nu_certificado      = 0',
'     and ce.cace_capo_nu_poliza      = po.capo_nu_poliza',
'     and ce.cace_carp_cd_ramo        = po.capo_carp_cd_ramo',
'     and ce.cace_casu_cd_sucursal    = po.capo_casu_cd_sucursal',
'     and po.capo_nu_poliza           = 2170',
'     and po.capo_carp_cd_ramo        = 30',
'     and po.capo_casu_cd_sucursal    = 75'))
);
end;
/
prompt --application/shared_components/reports/report_queries/test
begin
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(11617205452656770)
,p_name=>'test'
,p_query_text=>'select sysdate from dual'
,p_report_layout_id=>wwv_flow_api.id(11625813861950771)
,p_format=>'PDF'
,p_output_file_name=>'test'
,p_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(11626677199941853)
,p_shared_query_id=>wwv_flow_api.id(11617205452656770)
,p_sql_statement=>'select sysdate "Fecha" from dual'
);
end;
/
prompt --application/shared_components/reports/report_layouts/certificateinsurance
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '{\rtf1\adeflang1025\ansi\ansicpg1252\uc1\adeff31507\deff0\stshfdbch31506\stshfloch31506\stshfhich315';
    wwv_flow_api.g_varchar2_table(2) := '06\stshfbi31507\deflang22538\deflangfe22538\themelang22538\themelangfe0\themelangcs0{\fonttbl{\f0\fb';
    wwv_flow_api.g_varchar2_table(3) := 'idi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f34\fbidi \froman\fcha';
    wwv_flow_api.g_varchar2_table(4) := 'rset0\fprq2{\*\panose 02040503050406030204}Cambria Math;}'||wwv_flow.LF||
'{\f37\fbidi \fswiss\fcharset0\fprq2{\*\pan';
    wwv_flow_api.g_varchar2_table(5) := 'ose 020f0502020204030204}Calibri;}{\flomajor\f31500\fbidi \froman\fcharset0\fprq2{\*\panose 02020603';
    wwv_flow_api.g_varchar2_table(6) := '050405020304}Times New Roman;}'||wwv_flow.LF||
'{\fdbmajor\f31501\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050';
    wwv_flow_api.g_varchar2_table(7) := '405020304}Times New Roman;}{\fhimajor\f31502\fbidi \fswiss\fcharset0\fprq2{\*\panose 020f03020202040';
    wwv_flow_api.g_varchar2_table(8) := '30204}Calibri Light;}'||wwv_flow.LF||
'{\fbimajor\f31503\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304';
    wwv_flow_api.g_varchar2_table(9) := '}Times New Roman;}{\flominor\f31504\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Tim';
    wwv_flow_api.g_varchar2_table(10) := 'es New Roman;}'||wwv_flow.LF||
'{\fdbminor\f31505\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times ';
    wwv_flow_api.g_varchar2_table(11) := 'New Roman;}{\fhiminor\f31506\fbidi \fswiss\fcharset0\fprq2{\*\panose 020f0502020204030204}Calibri;}'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(12) := '{\fbiminor\f31507\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f4';
    wwv_flow_api.g_varchar2_table(13) := '3\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\f44\fbidi \froman\fcharset204\fprq2 Times Ne';
    wwv_flow_api.g_varchar2_table(14) := 'w Roman Cyr;}'||wwv_flow.LF||
'{\f46\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\f47\fbidi \froman\fchar';
    wwv_flow_api.g_varchar2_table(15) := 'set162\fprq2 Times New Roman Tur;}{\f48\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\';
    wwv_flow_api.g_varchar2_table(16) := 'f49\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}'||wwv_flow.LF||
'{\f50\fbidi \froman\fcharset186\fprq2';
    wwv_flow_api.g_varchar2_table(17) := ' Times New Roman Baltic;}{\f51\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\f413\';
    wwv_flow_api.g_varchar2_table(18) := 'fbidi \fswiss\fcharset238\fprq2 Calibri CE;}{\f414\fbidi \fswiss\fcharset204\fprq2 Calibri Cyr;}'||wwv_flow.LF||
'{\f';
    wwv_flow_api.g_varchar2_table(19) := '416\fbidi \fswiss\fcharset161\fprq2 Calibri Greek;}{\f417\fbidi \fswiss\fcharset162\fprq2 Calibri Tu';
    wwv_flow_api.g_varchar2_table(20) := 'r;}{\f418\fbidi \fswiss\fcharset177\fprq2 Calibri (Hebrew);}{\f419\fbidi \fswiss\fcharset178\fprq2 C';
    wwv_flow_api.g_varchar2_table(21) := 'alibri (Arabic);}'||wwv_flow.LF||
'{\f420\fbidi \fswiss\fcharset186\fprq2 Calibri Baltic;}{\f421\fbidi \fswiss\fchars';
    wwv_flow_api.g_varchar2_table(22) := 'et163\fprq2 Calibri (Vietnamese);}{\flomajor\f31508\fbidi \froman\fcharset238\fprq2 Times New Roman ';
    wwv_flow_api.g_varchar2_table(23) := 'CE;}'||wwv_flow.LF||
'{\flomajor\f31509\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}{\flomajor\f31511\fbidi ';
    wwv_flow_api.g_varchar2_table(24) := '\froman\fcharset161\fprq2 Times New Roman Greek;}{\flomajor\f31512\fbidi \froman\fcharset162\fprq2 T';
    wwv_flow_api.g_varchar2_table(25) := 'imes New Roman Tur;}'||wwv_flow.LF||
'{\flomajor\f31513\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\f';
    wwv_flow_api.g_varchar2_table(26) := 'lomajor\f31514\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\flomajor\f31515\fbidi \fr';
    wwv_flow_api.g_varchar2_table(27) := 'oman\fcharset186\fprq2 Times New Roman Baltic;}'||wwv_flow.LF||
'{\flomajor\f31516\fbidi \froman\fcharset163\fprq2 Ti';
    wwv_flow_api.g_varchar2_table(28) := 'mes New Roman (Vietnamese);}{\fdbmajor\f31518\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\';
    wwv_flow_api.g_varchar2_table(29) := 'fdbmajor\f31519\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}'||wwv_flow.LF||
'{\fdbmajor\f31521\fbidi \froma';
    wwv_flow_api.g_varchar2_table(30) := 'n\fcharset161\fprq2 Times New Roman Greek;}{\fdbmajor\f31522\fbidi \froman\fcharset162\fprq2 Times N';
    wwv_flow_api.g_varchar2_table(31) := 'ew Roman Tur;}{\fdbmajor\f31523\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'||wwv_flow.LF||
'{\fdbmajo';
    wwv_flow_api.g_varchar2_table(32) := 'r\f31524\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\fdbmajor\f31525\fbidi \froman\f';
    wwv_flow_api.g_varchar2_table(33) := 'charset186\fprq2 Times New Roman Baltic;}{\fdbmajor\f31526\fbidi \froman\fcharset163\fprq2 Times New';
    wwv_flow_api.g_varchar2_table(34) := ' Roman (Vietnamese);}'||wwv_flow.LF||
'{\fhimajor\f31528\fbidi \fswiss\fcharset238\fprq2 Calibri Light CE;}{\fhimajor';
    wwv_flow_api.g_varchar2_table(35) := '\f31529\fbidi \fswiss\fcharset204\fprq2 Calibri Light Cyr;}{\fhimajor\f31531\fbidi \fswiss\fcharset1';
    wwv_flow_api.g_varchar2_table(36) := '61\fprq2 Calibri Light Greek;}'||wwv_flow.LF||
'{\fhimajor\f31532\fbidi \fswiss\fcharset162\fprq2 Calibri Light Tur;}';
    wwv_flow_api.g_varchar2_table(37) := '{\fhimajor\f31533\fbidi \fswiss\fcharset177\fprq2 Calibri Light (Hebrew);}{\fhimajor\f31534\fbidi \f';
    wwv_flow_api.g_varchar2_table(38) := 'swiss\fcharset178\fprq2 Calibri Light (Arabic);}'||wwv_flow.LF||
'{\fhimajor\f31535\fbidi \fswiss\fcharset186\fprq2 C';
    wwv_flow_api.g_varchar2_table(39) := 'alibri Light Baltic;}{\fhimajor\f31536\fbidi \fswiss\fcharset163\fprq2 Calibri Light (Vietnamese);}{';
    wwv_flow_api.g_varchar2_table(40) := '\fbimajor\f31538\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}'||wwv_flow.LF||
'{\fbimajor\f31539\fbidi \froma';
    wwv_flow_api.g_varchar2_table(41) := 'n\fcharset204\fprq2 Times New Roman Cyr;}{\fbimajor\f31541\fbidi \froman\fcharset161\fprq2 Times New';
    wwv_flow_api.g_varchar2_table(42) := ' Roman Greek;}{\fbimajor\f31542\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}'||wwv_flow.LF||
'{\fbimajor\f31';
    wwv_flow_api.g_varchar2_table(43) := '543\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fbimajor\f31544\fbidi \froman\fchars';
    wwv_flow_api.g_varchar2_table(44) := 'et178\fprq2 Times New Roman (Arabic);}{\fbimajor\f31545\fbidi \froman\fcharset186\fprq2 Times New Ro';
    wwv_flow_api.g_varchar2_table(45) := 'man Baltic;}'||wwv_flow.LF||
'{\fbimajor\f31546\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\flomi';
    wwv_flow_api.g_varchar2_table(46) := 'nor\f31548\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\flominor\f31549\fbidi \froman\fchar';
    wwv_flow_api.g_varchar2_table(47) := 'set204\fprq2 Times New Roman Cyr;}'||wwv_flow.LF||
'{\flominor\f31551\fbidi \froman\fcharset161\fprq2 Times New Roman';
    wwv_flow_api.g_varchar2_table(48) := ' Greek;}{\flominor\f31552\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\flominor\f31553\fbi';
    wwv_flow_api.g_varchar2_table(49) := 'di \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'||wwv_flow.LF||
'{\flominor\f31554\fbidi \froman\fcharset178\';
    wwv_flow_api.g_varchar2_table(50) := 'fprq2 Times New Roman (Arabic);}{\flominor\f31555\fbidi \froman\fcharset186\fprq2 Times New Roman Ba';
    wwv_flow_api.g_varchar2_table(51) := 'ltic;}{\flominor\f31556\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}'||wwv_flow.LF||
'{\fdbminor\f3';
    wwv_flow_api.g_varchar2_table(52) := '1558\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fdbminor\f31559\fbidi \froman\fcharset204';
    wwv_flow_api.g_varchar2_table(53) := '\fprq2 Times New Roman Cyr;}{\fdbminor\f31561\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;';
    wwv_flow_api.g_varchar2_table(54) := '}'||wwv_flow.LF||
'{\fdbminor\f31562\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fdbminor\f31563\fbidi \fr';
    wwv_flow_api.g_varchar2_table(55) := 'oman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fdbminor\f31564\fbidi \froman\fcharset178\fprq2 T';
    wwv_flow_api.g_varchar2_table(56) := 'imes New Roman (Arabic);}'||wwv_flow.LF||
'{\fdbminor\f31565\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}';
    wwv_flow_api.g_varchar2_table(57) := '{\fdbminor\f31566\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\fhiminor\f31568\fb';
    wwv_flow_api.g_varchar2_table(58) := 'idi \fswiss\fcharset238\fprq2 Calibri CE;}'||wwv_flow.LF||
'{\fhiminor\f31569\fbidi \fswiss\fcharset204\fprq2 Calibri';
    wwv_flow_api.g_varchar2_table(59) := ' Cyr;}{\fhiminor\f31571\fbidi \fswiss\fcharset161\fprq2 Calibri Greek;}{\fhiminor\f31572\fbidi \fswi';
    wwv_flow_api.g_varchar2_table(60) := 'ss\fcharset162\fprq2 Calibri Tur;}'||wwv_flow.LF||
'{\fhiminor\f31573\fbidi \fswiss\fcharset177\fprq2 Calibri (Hebrew';
    wwv_flow_api.g_varchar2_table(61) := ');}{\fhiminor\f31574\fbidi \fswiss\fcharset178\fprq2 Calibri (Arabic);}{\fhiminor\f31575\fbidi \fswi';
    wwv_flow_api.g_varchar2_table(62) := 'ss\fcharset186\fprq2 Calibri Baltic;}'||wwv_flow.LF||
'{\fhiminor\f31576\fbidi \fswiss\fcharset163\fprq2 Calibri (Vie';
    wwv_flow_api.g_varchar2_table(63) := 'tnamese);}{\fbiminor\f31578\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fbiminor\f31579\fb';
    wwv_flow_api.g_varchar2_table(64) := 'idi \froman\fcharset204\fprq2 Times New Roman Cyr;}'||wwv_flow.LF||
'{\fbiminor\f31581\fbidi \froman\fcharset161\fprq';
    wwv_flow_api.g_varchar2_table(65) := '2 Times New Roman Greek;}{\fbiminor\f31582\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fb';
    wwv_flow_api.g_varchar2_table(66) := 'iminor\f31583\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'||wwv_flow.LF||
'{\fbiminor\f31584\fbidi \fr';
    wwv_flow_api.g_varchar2_table(67) := 'oman\fcharset178\fprq2 Times New Roman (Arabic);}{\fbiminor\f31585\fbidi \froman\fcharset186\fprq2 T';
    wwv_flow_api.g_varchar2_table(68) := 'imes New Roman Baltic;}{\fbiminor\f31586\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese';
    wwv_flow_api.g_varchar2_table(69) := ');}}'||wwv_flow.LF||
'{\colortbl;\red0\green0\blue0;\red0\green0\blue255;\red0\green255\blue255;\red0\green255\blue0;';
    wwv_flow_api.g_varchar2_table(70) := '\red255\green0\blue255;\red255\green0\blue0;\red255\green255\blue0;\red255\green255\blue255;\red0\gr';
    wwv_flow_api.g_varchar2_table(71) := 'een0\blue128;\red0\green128\blue128;\red0\green128\blue0;'||wwv_flow.LF||
'\red128\green0\blue128;\red128\green0\blue';
    wwv_flow_api.g_varchar2_table(72) := '0;\red128\green128\blue0;\red128\green128\blue128;\red192\green192\blue192;\red0\green0\blue0;\red0\';
    wwv_flow_api.g_varchar2_table(73) := 'green0\blue0;}{\*\defchp \f31506\fs22\lang22538\langfe1033\langfenp1033 }{\*\defpap '||wwv_flow.LF||
'\ql \li0\ri0\sa';
    wwv_flow_api.g_varchar2_table(74) := '160\sl259\slmult1\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 }\noqfpro';
    wwv_flow_api.g_varchar2_table(75) := 'mote {\stylesheet{\ql \li0\ri0\sa160\sl259\slmult1\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adju';
    wwv_flow_api.g_varchar2_table(76) := 'stright\rin0\lin0\itap0 \rtlch\fcs1 '||wwv_flow.LF||
'\af31507\afs22\alang1025 \ltrch\fcs0 \f31506\fs22\lang22538\lan';
    wwv_flow_api.g_varchar2_table(77) := 'gfe1033\cgrid\langnp22538\langfenp1033 \snext0 \sqformat \spriority0 Normal;}{\*\cs10 \additive \sse';
    wwv_flow_api.g_varchar2_table(78) := 'mihidden \sunhideused \spriority1 Default Paragraph Font;}{\*'||wwv_flow.LF||
'\ts11\tsrowd\trftsWidthB3\trpaddl108\t';
    wwv_flow_api.g_varchar2_table(79) := 'rpaddr108\trpaddfl3\trpaddft3\trpaddfb3\trpaddfr3\trcbpat1\trcfpat1\tblind0\tblindtype3\tsvertalt\ts';
    wwv_flow_api.g_varchar2_table(80) := 'brdrt\tsbrdrl\tsbrdrb\tsbrdrr\tsbrdrdgl\tsbrdrdgr\tsbrdrh\tsbrdrv \ql \li0\ri0\sa160\sl259\slmult1'||wwv_flow.LF||
'\';
    wwv_flow_api.g_varchar2_table(81) := 'widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af31507\afs22\';
    wwv_flow_api.g_varchar2_table(82) := 'alang1025 \ltrch\fcs0 \f31506\fs22\lang22538\langfe1033\cgrid\langnp22538\langfenp1033 \snext11 \sse';
    wwv_flow_api.g_varchar2_table(83) := 'mihidden \sunhideused Normal Table;}}'||wwv_flow.LF||
'{\*\rsidtbl \rsid1601965\rsid3683574\rsid5514524\rsid9592860\r';
    wwv_flow_api.g_varchar2_table(84) := 'sid9928443}{\mmathPr\mmathFont34\mbrkBin0\mbrkBinSub0\msmallFrac0\mdispDef1\mlMargin0\mrMargin0\mdef';
    wwv_flow_api.g_varchar2_table(85) := 'Jc1\mwrapIndent1440\mintLim0\mnaryLim1}{\info{\author Francisco Perez H}'||wwv_flow.LF||
'{\operator Francisco Perez ';
    wwv_flow_api.g_varchar2_table(86) := 'H}{\creatim\yr2022\mo9\dy20\hr8\min41}{\revtim\yr2022\mo9\dy20\hr8\min41}{\version2}{\edmins0}{\nofp';
    wwv_flow_api.g_varchar2_table(87) := 'ages1}{\nofwords12}{\nofchars66}{\nofcharsws77}{\vern57}}{\*\xmlnstbl {\xmlns1 http://schemas.micros';
    wwv_flow_api.g_varchar2_table(88) := 'oft.com/office/word/2003/wor'||wwv_flow.LF||
'dml}}\paperw11906\paperh16838\margl1701\margr1701\margt1417\margb1417\g';
    wwv_flow_api.g_varchar2_table(89) := 'utter0\ltrsect '||wwv_flow.LF||
'\deftab708\widowctrl\ftnbj\aenddoc\hyphhotz425\trackmoves0\trackformatting1\donotemb';
    wwv_flow_api.g_varchar2_table(90) := 'edsysfont1\relyonvml0\donotembedlingdata0\grfdocevents0\validatexml1\showplaceholdtext0\ignoremixedc';
    wwv_flow_api.g_varchar2_table(91) := 'ontent0\saveinvalidxml0'||wwv_flow.LF||
'\showxmlerrors1\noxlattoyen\expshrtn\noultrlspc\dntblnsbdb\nospaceforul\form';
    wwv_flow_api.g_varchar2_table(92) := 'shade\horzdoc\dgmargin\dghspace180\dgvspace180\dghorigin1701\dgvorigin1417\dghshow1\dgvshow1'||wwv_flow.LF||
'\jexpan';
    wwv_flow_api.g_varchar2_table(93) := 'd\viewkind1\viewscale154\pgbrdrhead\pgbrdrfoot\splytwnine\ftnlytwnine\htmautsp\nolnhtadjtbl\useltbal';
    wwv_flow_api.g_varchar2_table(94) := 'n\alntblind\lytcalctblwd\lyttblrtgr\lnbrkrule\nobrkwrptbl\snaptogridincell\allowfieldendsel\wrppunct';
    wwv_flow_api.g_varchar2_table(95) := ''||wwv_flow.LF||
'\asianbrkrule\rsidroot5514524\newtblstyruls\nogrowautofit\usenormstyforlist\noindnmbrts\felnbrelev\';
    wwv_flow_api.g_varchar2_table(96) := 'nocxsptable\indrlsweleven\noafcnsttbl\afelev\utinl\hwelev\spltpgpar\notcvasp\notbrkcnstfrctbl\notvat';
    wwv_flow_api.g_varchar2_table(97) := 'xbx\krnprsnet\cachedcolbal \nouicompat \fet0'||wwv_flow.LF||
'{\*\wgrffmtfilter 2450}\nofeaturethrottle1\ilfomacatcln';
    wwv_flow_api.g_varchar2_table(98) := 'up0{\*\docvar {xdo0001}{PD9OQlJFUFJPRFVDVE9SPz4=}}{\*\docvar {xdo0002}{PD9OQlJFQ0xJRU5URT8+}}{\*\doc';
    wwv_flow_api.g_varchar2_table(99) := 'var {xdo0003}{PD9DSkZDX0RJX1RYVD8+}}\ltrpar \sectd \ltrsect'||wwv_flow.LF||
'\linex0\headery708\footery708\colsx708\e';
    wwv_flow_api.g_varchar2_table(100) := 'ndnhere\sectlinegrid360\sectdefaultcl\sftnbj {\*\pnseclvl1\pnucrm\pnstart1\pnindent720\pnhang {\pntx';
    wwv_flow_api.g_varchar2_table(101) := 'ta .}}{\*\pnseclvl2\pnucltr\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl3\pndec\pnstart1\pni';
    wwv_flow_api.g_varchar2_table(102) := 'ndent720\pnhang'||wwv_flow.LF||
'{\pntxta .}}{\*\pnseclvl4\pnlcltr\pnstart1\pnindent720\pnhang {\pntxta )}}{\*\pnsecl';
    wwv_flow_api.g_varchar2_table(103) := 'vl5\pndec\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl6\pnlcltr\pnstart1\pnindent';
    wwv_flow_api.g_varchar2_table(104) := '720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl7'||wwv_flow.LF||
'\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pnt';
    wwv_flow_api.g_varchar2_table(105) := 'xta )}}{\*\pnseclvl8\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl9\pnlcrm';
    wwv_flow_api.g_varchar2_table(106) := '\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}\pard\plain \ltrpar\ql \li0\ri0\sa160\sl259\slmu';
    wwv_flow_api.g_varchar2_table(107) := 'lt1'||wwv_flow.LF||
'\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af31507\a';
    wwv_flow_api.g_varchar2_table(108) := 'fs22\alang1025 \ltrch\fcs0 \f31506\fs22\lang22538\langfe1033\cgrid\langnp22538\langfenp1033 {\field\';
    wwv_flow_api.g_varchar2_table(109) := 'flddirty{\*\fldinst {\rtlch\fcs1 \af31507 \ltrch\fcs0 '||wwv_flow.LF||
'\insrsid5514524\charrsid5514524 {\*\bkmkstart';
    wwv_flow_api.g_varchar2_table(110) := ' Texto1} FORMTEXT }{\rtlch\fcs1 \af31507 \ltrch\fcs0 \insrsid5514524\charrsid5514524 {\*\datafield '||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(111) := '800100000000000006546578746f31000d4e42524550524f445543544f5200000000000f3c3f7265663a78646f303030313f';
    wwv_flow_api.g_varchar2_table(112) := '3e0000000000}{\*\formfield{\fftype0\ffownhelp\ffownstat\fftypetxt0{\*\ffname Texto1}{\*\ffdeftext NB';
    wwv_flow_api.g_varchar2_table(113) := 'REPRODUCTOR}{\*\ffstattext <?ref:xdo0001?>}}}}'||wwv_flow.LF||
'}{\fldrslt {\rtlch\fcs1 \af31507 \ltrch\fcs0 \lang102';
    wwv_flow_api.g_varchar2_table(114) := '4\langfe1024\noproof\insrsid5514524\charrsid5514524 NBREPRODUCTOR}}}\sectd \ltrsect\linex0\headery70';
    wwv_flow_api.g_varchar2_table(115) := '8\footery708\colsx708\endnhere\sectlinegrid360\sectdefaultcl\sftnbj {\*\bkmkend Texto1}'||wwv_flow.LF||
'{\field\fldd';
    wwv_flow_api.g_varchar2_table(116) := 'irty{\*\fldinst {\rtlch\fcs1 \af31507 \ltrch\fcs0 \insrsid5514524\charrsid5514524 {\*\bkmkstart Text';
    wwv_flow_api.g_varchar2_table(117) := 'o2} FORMTEXT }{\rtlch\fcs1 \af31507 \ltrch\fcs0 \insrsid5514524\charrsid5514524 {\*\datafield '||wwv_flow.LF||
'80010';
    wwv_flow_api.g_varchar2_table(118) := '0000000000006546578746f32000b4e425245434c49454e544500000000000f3c3f7265663a78646f303030323f3e0000000';
    wwv_flow_api.g_varchar2_table(119) := '000}{\*\formfield{\fftype0\ffownhelp\ffownstat\fftypetxt0{\*\ffname Texto2}{\*\ffdeftext NBRECLIENTE';
    wwv_flow_api.g_varchar2_table(120) := '}{\*\ffstattext <?ref:xdo0002?>}}}}}{\fldrslt {'||wwv_flow.LF||
'\rtlch\fcs1 \af31507 \ltrch\fcs0 \lang1024\langfe102';
    wwv_flow_api.g_varchar2_table(121) := '4\noproof\insrsid5514524\charrsid5514524 NBRECLIENTE}}}\sectd \ltrsect\linex0\headery708\footery708\';
    wwv_flow_api.g_varchar2_table(122) := 'colsx708\endnhere\sectlinegrid360\sectdefaultcl\sftnbj {\*\bkmkend Texto2}{\field\flddirty{\*\fldins';
    wwv_flow_api.g_varchar2_table(123) := 't {'||wwv_flow.LF||
'\rtlch\fcs1 \af31507 \ltrch\fcs0 \insrsid5514524\charrsid5514524 {\*\bkmkstart Texto3} FORMTEXT ';
    wwv_flow_api.g_varchar2_table(124) := '}{\rtlch\fcs1 \af31507 \ltrch\fcs0 \insrsid5514524\charrsid5514524 {\*\datafield '||wwv_flow.LF||
'800100000000000006';
    wwv_flow_api.g_varchar2_table(125) := '546578746f33000b434a46435f44495f54585400000000000f3c3f7265663a78646f303030333f3e0000000000}{\*\formf';
    wwv_flow_api.g_varchar2_table(126) := 'ield{\fftype0\ffownhelp\ffownstat\fftypetxt0{\*\ffname Texto3}{\*\ffdeftext CJFC_DI_TXT}{\*\ffstatte';
    wwv_flow_api.g_varchar2_table(127) := 'xt <?ref:xdo0003?>}}}}}{\fldrslt {'||wwv_flow.LF||
'\rtlch\fcs1 \af31507 \ltrch\fcs0 \lang1024\langfe1024\noproof\ins';
    wwv_flow_api.g_varchar2_table(128) := 'rsid5514524\charrsid5514524 CJFC_DI_TXT}}}\sectd \ltrsect\linex0\headery708\footery708\colsx708\endn';
    wwv_flow_api.g_varchar2_table(129) := 'here\sectlinegrid360\sectdefaultcl\sftnbj {\rtlch\fcs1 \af31507 \ltrch\fcs0 '||wwv_flow.LF||
'\insrsid9928443 {\*\bkm';
    wwv_flow_api.g_varchar2_table(130) := 'kend Texto3}'||wwv_flow.LF||
'\par }{\*\themedata 504b030414000600080000002100e9de0fbfff0000001c020000130000005b436f6';
    wwv_flow_api.g_varchar2_table(131) := 'e74656e745f54797065735d2e786d6cac91cb4ec3301045f748fc83e52d4a'||wwv_flow.LF||
'9cb2400825e982c78ec7a27cc0c8992416c9d8';
    wwv_flow_api.g_varchar2_table(132) := 'b2a755fbf74cd25442a820166c2cd933f79e3be372bd1f07b5c3989ca74aaff2422b24eb1b475da5df374fd9ad'||wwv_flow.LF||
'5689811a1';
    wwv_flow_api.g_varchar2_table(133) := '83c61a50f98f4babebc2837878049899a52a57be670674cb23d8e90721f90a4d2fa3802cb35762680fd800ecd7551dc18eb8';
    wwv_flow_api.g_varchar2_table(134) := '99138e3c943d7e503b6'||wwv_flow.LF||
'b01d583deee5f99824e290b4ba3f364eac4a430883b3c092d4eca8f946c916422ecab927f52ea42b';
    wwv_flow_api.g_varchar2_table(135) := '89a1cd59c254f919b0e85e6535d135a8de20f20b8c12c3b0'||wwv_flow.LF||
'0c895fcf6720192de6bf3b9e89ecdbd6596cbcdd8eb28e7c365';
    wwv_flow_api.g_varchar2_table(136) := 'ecc4ec1ff1460f53fe813d3cc7f5b7f020000ffff0300504b030414000600080000002100a5d6'||wwv_flow.LF||
'a7e7c0000000360100000b';
    wwv_flow_api.g_varchar2_table(137) := '0000005f72656c732f2e72656c73848fcf6ac3300c87ef85bd83d17d51d2c31825762fa590432fa37d00e1287f68221bdb1b';
    wwv_flow_api.g_varchar2_table(138) := 'ebdb4f'||wwv_flow.LF||
'c7060abb0884a4eff7a93dfeae8bf9e194e720169aaa06c3e2433fcb68e1763dbf7f82c985a4a725085b787086a37';
    wwv_flow_api.g_varchar2_table(139) := 'bdbb55fbc50d1a33ccd311ba548b6309512'||wwv_flow.LF||
'0f88d94fbc52ae4264d1c910d24a45db3462247fa791715fd71f989e19e0364c';
    wwv_flow_api.g_varchar2_table(140) := 'd3f51652d73760ae8fa8c9ffb3c330cc9e4fc17faf2ce545046e37944c69e462'||wwv_flow.LF||
'a1a82fe353bd90a865aad41ed0b5b8f9d6f';
    wwv_flow_api.g_varchar2_table(141) := 'd010000ffff0300504b0304140006000800000021006b799616830000008a0000001c0000007468656d652f746865'||wwv_flow.LF||
'6d652f';
    wwv_flow_api.g_varchar2_table(142) := '7468656d654d616e616765722e786d6c0ccc4d0ac3201040e17da17790d93763bb284562b2cbaebbf600439c1a41c7a0d29f';
    wwv_flow_api.g_varchar2_table(143) := 'dbd7e5e38337cedf14d59b'||wwv_flow.LF||
'4b0d592c9c070d8a65cd2e88b7f07c2ca71ba8da481cc52c6ce1c715e6e97818c9b48d13df49c';
    wwv_flow_api.g_varchar2_table(144) := '873517d23d59085adb5dd20d6b52bd521ef2cdd5eb9246a3d8b'||wwv_flow.LF||
'4757e8d3f729e245eb2b260a0238fd010000ffff0300504b';
    wwv_flow_api.g_varchar2_table(145) := '030414000600080000002100a7259ef29c070000cb200000160000007468656d652f7468656d652f'||wwv_flow.LF||
'7468656d65312e786d6';
    wwv_flow_api.g_varchar2_table(146) := 'cec59cd8b1bc915bf07f23f347d97f5d5ad8fc1f2a24fcfda33b6b164873dd648a5eef2547789aad28cc56208de532e81c02';
    wwv_flow_api.g_varchar2_table(147) := '6e49085bd'||wwv_flow.LF||
'ed21842cecc22eb9e48f31d8249b3f22afaa5bdd5552c99e191c3061463074977eefd5afde7bf5de53d5ddcf5e';
    wwv_flow_api.g_varchar2_table(148) := '26d4bbc05c1096f6fcfa9d9aefe174ce16248d'||wwv_flow.LF||
'7afeb3d9a4d2f13d2151ba4094a5b8e76fb0f03fbbf7eb5fdd454732c609f';
    wwv_flow_api.g_varchar2_table(149) := '6403e1547a8e7c752ae8eaa5531876124eeb0154ee1bb25e30992f0caa3ea82a34b'||wwv_flow.LF||
'd09bd06aa3566b55134452df4b51026a';
    wwv_flow_api.g_varchar2_table(150) := '6720e32db0f778b92473ecdfdbaa1f53982395420dcc299f2ae5389731b08bf3ba42888d1852ee5d20daf361a605bb9c'||wwv_flow.LF||
'e19';
    wwv_flow_api.g_varchar2_table(151) := '7d2f7281212bee8f935fde757efddada2a35c88ca03b286dc44ffe572b9c0e2bca1e7e4d1593169108441ab5fe8d7002af77';
    wwv_flow_api.g_varchar2_table(152) := '1e3f6b8356e15fa3400cde7b0'||wwv_flow.LF||
'd28c8badb3dd180639d600658f0edda3f6a859b7f086fee61ee77ea83e165e8332fdc11e7e';
    wwv_flow_api.g_varchar2_table(153) := '321982152dbc0665f8700f1f0eba8391ad5f83327c6b0fdfaef547'||wwv_flow.LF||
'41dbd2af413125e9f91eba16b69ac3ed6a0bc892d1632';
    wwv_flow_api.g_varchar2_table(154) := '7bc1b06937623575ea2201a8ae852532c592a0fc55a825e303e018002522449eac9cd0a2fd11ce27888'||wwv_flow.LF||
'2839e3c43b21510c';
    wwv_flow_api.g_varchar2_table(155) := '81b7422913305c6bd426b526fc579f403f698fa2238c0c69c50b9888bd21c5c713734e56b2e73f00adbe0179fbf3cf6f5eff';
    wwv_flow_api.g_varchar2_table(156) := 'f8e6f54f6fbe'||wwv_flow.LF||
'faeacdebbfe7736b5596dc314a2353ee97effef09f6f7eebfdfb876f7ff9fa8fd9d4bb7861e2dffded77eff';
    wwv_flow_api.g_varchar2_table(157) := 'ef1cff7a9871597a678fba7efdffdf8fddb3ffffe'||wwv_flow.LF||
'5f7ffddaa1bdcfd199099f91040bef11bef49eb20416e8e08fcff8f524';
    wwv_flow_api.g_varchar2_table(158) := '663122a6443f8d044a919ac5a17f2c630bfd68832872e006d8b6e3730ea9c605bcbf7e'||wwv_flow.LF||
'61119ec67c2d8943e3c338b180a78';
    wwv_flow_api.g_varchar2_table(159) := 'cd101e34e2b3c547319669eadd3c83d395f9bb8a7085db8e61ea2d4f2f278bd821c4b5c2a8731b6683ea1289528c229969e'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(160) := 'fa8e9d63ec58dd178458763d2573ce045b4aef0be20d10719a6446ceac682a858e49027ed9b80882bf2ddb9c3ef7068cba56';
    wwv_flow_api.g_varchar2_table(161) := '3dc2173612f606a20ef2334c2d33'||wwv_flow.LF||
'de476b891297ca194aa869f013246317c9e986cf4ddc5848f0748429f3c60b2c844be63';
    wwv_flow_api.g_varchar2_table(162) := '187f51a4e7f0869c6edf653ba496c2497e4dca5f30431662247ec7c18'||wwv_flow.LF||
'a364e5c24e491a9bd8cfc5398428f29e30e9829f32';
    wwv_flow_api.g_varchar2_table(163) := '7b87a877f0034a0fbafb39c196bb3f9c0d9e418635299501a2be5973872fef6366c5ef74439708bb524d9f'||wwv_flow.LF||
'27568aed73e28';
    wwv_flow_api.g_varchar2_table(164) := 'c8ec13ab242fb04638a2ed10263efd9e70e0603b6b26c5e927e10435639c6aec07a80ec5855ef2916d8d3cdcd7e9e3c21c20';
    wwv_flow_api.g_varchar2_table(165) := 'ad9298ed8013ea7'||wwv_flow.LF||
'9b9dc4b3416982f821cd8fc0eba6cdc750ea1257003ca6f37313f888401708f1e234ca63013a8ce03ea8';
    wwv_flow_api.g_varchar2_table(166) := 'f5498cac02a6de853b5e37dcf2df55f618eccb17168d'||wwv_flow.LF||
'2bec4b90c1d79681c46ecabcd7363344ad09ca809921e8325ce9164';
    wwv_flow_api.g_varchar2_table(167) := '42cf79722aab86ab1b5536e696fdad20dd01d594d4f42d20f76403bbd4ff8bfeb7da0c378'||wwv_flow.LF||
'fb976f1c9bede3f43b6ec556b2';
    wwv_flow_api.g_varchar2_table(168) := 'ba66a77328991ceff4378770bb5dcd90f105f9f49b9a115aa74f30d491fd8c75dbd3dcf634feff7d4f73683fdf763287fa8d';
    wwv_flow_api.g_varchar2_table(169) := 'db'||wwv_flow.LF||
'4ec6870ee3b693c90f573e4e2753362fd0d7a8038feca0471ffb24074f7d9684d2a9dc507c22f4c18f80df338b090c2a3';
    wwv_flow_api.g_varchar2_table(170) := '97de6898b53c0550c8faaccc104162e'||wwv_flow.LF||
'e248cb789cc9df10194f63b482d3a1baaf944422571d096fc5041c1ae961a76e85a7';
    wwv_flow_api.g_varchar2_table(171) := 'ebe4942db2c3ce7a5d1d6c66955520598ed7c2621c0eaa64866eb5cb03bc'||wwv_flow.LF||
'42bd661be983d62d01257b1d12c6643689a6834';
    wwv_flow_api.g_varchar2_table(172) := '47b3ba88ca48f75c1680e127a651f8545d7c1a2a3d46f5db5c702a8155e811fdc1efc4ceff96100222004e771'||wwv_flow.LF||
'd09c2f949f';
    wwv_flow_api.g_varchar2_table(173) := '32576fbdab9df9313d7dc89856044083bd8d80d2d35dc5f5e0f2d4eab250bb82a72d1246b8d924b46574832762f8199c47a7';
    wwv_flow_api.g_varchar2_table(174) := '1abd0a8debfaba5bba'||wwv_flow.LF||
'd4a2a74ca1e783d02a69b43bef6371535f83dc6e6ea0a9992968ea5df6fc5633849099a355cf5fc2a';
    wwv_flow_api.g_varchar2_table(175) := '1313c262b881da17e73211ac1ddcb5cf26cc3df24b3acb8'||wwv_flow.LF||
'902324e2cce03ae964d9202112738f92a4e7abe5176ea0a9ce21';
    wwv_flow_api.g_varchar2_table(176) := '9a5bbd0109e19325d785b4f2a99103a7db4ec6cb259e4bd3edc688b274f60a193ecb15ce6fb5'||wwv_flow.LF||
'f8cdc14a92adc1ddd37871e';
    wwv_flow_api.g_varchar2_table(177) := '99dd1357f8a20c4c2765d19704104dc1dd4336b2e085c861589ac8cbf9dc294a75df3364ac750368ee82a46794531937906d';
    wwv_flow_api.g_varchar2_table(178) := '7a9bc'||wwv_flow.LF||
'a0a3df0a1b186ff99ac1a08649f2427816a9026b1ad5aaa645d5c8381cacba1f1652963392665933adaca2aaa63b8b';
    wwv_flow_api.g_varchar2_table(179) := '59336ccbc08e2d6f56e40d565b13434e33'||wwv_flow.LF||
'2b7c96ba77536e779beb76fa84a24a80c10bfb39aaee150a8241ad9ccca2a618e';
    wwv_flow_api.g_varchar2_table(180) := 'fa76195b3f351bb766c17f8016a57291246d66f6dd5eed8ada811cee960f046'||wwv_flow.LF||
'951fe476a3168696dbbe525b5adf9b9b17db';
    wwv_flow_api.g_varchar2_table(181) := 'ecec05248f1174b96b2a8576255c5b73040dd154f72459da802df252e65b039ebc35273dffcb5ad80f868d7058a9'||wwv_flow.LF||
'75c2712';
    wwv_flow_api.g_varchar2_table(182) := '56806b54a27ec372bfd306cd6c761bd361a345e41619171520fb33bfb095c60d04d7e73afc7f76eef93ed1dcd9d394baa4cd';
    wwv_flow_api.g_varchar2_table(183) := 'fca5735717d7b5f6f58b7'||wwv_flow.LF||
'f7d94dbc375397f3be4720e97cd96a4cbacdeea055e936fb934a301a742add616b5019b586edd1';
    wwv_flow_api.g_varchar2_table(184) := '64340c3bddc92bdfbbd0e0a0df1c06ad71a7d2aa0f8795a055'||wwv_flow.LF||
'53f43bdd4a3b6834fa41bbdf1907fd57791b032bcfd2476e0';
    wwv_flow_api.g_varchar2_table(185) := 'b30afe675efbf000000ffff0300504b0304140006000800000021000dd1909fb60000001b010000'||wwv_flow.LF||
'270000007468656d652f';
    wwv_flow_api.g_varchar2_table(186) := '7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e72656c73848f4d0ac2301484f78277086f6fd3ba10';
    wwv_flow_api.g_varchar2_table(187) := '9126dd88'||wwv_flow.LF||
'd0add40384e4350d363f2451eced0dae2c082e8761be9969bb979dc9136332de3168aa1a083ae995719ac16db8e';
    wwv_flow_api.g_varchar2_table(188) := 'c8e4052164e89d93b64b060828e6f37ed1567'||wwv_flow.LF||
'914b284d262452282e3198720e274a939cd08a54f980ae38a38f56e422a3a6';
    wwv_flow_api.g_varchar2_table(189) := '41c8bbd048f7757da0f19b017cc524bd62107bd5001996509affb3fd381a89672f'||wwv_flow.LF||
'1f165dfe514173d9850528a2c6cce0239';
    wwv_flow_api.g_varchar2_table(190) := 'baa4c04ca5bbabac4df000000ffff0300504b01022d0014000600080000002100e9de0fbfff0000001c020000130000'||wwv_flow.LF||
'0000';
    wwv_flow_api.g_varchar2_table(191) := '000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d0014000600080000002100a5d6';
    wwv_flow_api.g_varchar2_table(192) := 'a7e7c0000000360100000b00'||wwv_flow.LF||
'000000000000000000000000300100005f72656c732f2e72656c73504b01022d00140006000';
    wwv_flow_api.g_varchar2_table(193) := '800000021006b799616830000008a0000001c0000000000000000'||wwv_flow.LF||
'0000000000190200007468656d652f7468656d652f7468';
    wwv_flow_api.g_varchar2_table(194) := '656d654d616e616765722e786d6c504b01022d0014000600080000002100a7259ef29c070000cb2000'||wwv_flow.LF||
'00160000000000000';
    wwv_flow_api.g_varchar2_table(195) := '0000000000000d60200007468656d652f7468656d652f7468656d65312e786d6c504b01022d00140006000800000021000dd';
    wwv_flow_api.g_varchar2_table(196) := '1909fb60000'||wwv_flow.LF||
'001b0100002700000000000000000000000000a60a00007468656d652f7468656d652f5f72656c732f746865';
    wwv_flow_api.g_varchar2_table(197) := '6d654d616e616765722e786d6c2e72656c73504b050600000000050005005d010000a10b00000000}'||wwv_flow.LF||
'{\*\colorschememap';
    wwv_flow_api.g_varchar2_table(198) := 'ping 3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d3822207374616e64616c6f6e653';
    wwv_flow_api.g_varchar2_table(199) := 'd22796573223f3e0d0a3c613a636c724d'||wwv_flow.LF||
'617020786d6c6e733a613d22687474703a2f2f736368656d61732e6f70656e786d';
    wwv_flow_api.g_varchar2_table(200) := '6c666f726d6174732e6f72672f64726177696e676d6c2f323030362f6d6169'||wwv_flow.LF||
'6e22206267313d226c743122207478313d226';
    wwv_flow_api.g_varchar2_table(201) := '46b3122206267323d226c743222207478323d22646b322220616363656e74313d22616363656e74312220616363'||wwv_flow.LF||
'656e7432';
    wwv_flow_api.g_varchar2_table(202) := '3d22616363656e74322220616363656e74333d22616363656e74332220616363656e74343d22616363656e74342220616363';
    wwv_flow_api.g_varchar2_table(203) := '656e74353d22616363656e74352220616363656e74363d22616363656e74362220686c696e6b3d22686c696e6b2220666f6c';
    wwv_flow_api.g_varchar2_table(204) := '486c696e6b3d22666f6c486c696e6b222f3e}'||wwv_flow.LF||
'{\*\latentstyles\lsdstimax376\lsdlockeddef0\lsdsemihiddendef0\';
    wwv_flow_api.g_varchar2_table(205) := 'lsdunhideuseddef0\lsdqformatdef0\lsdprioritydef99{\lsdlockedexcept \lsdqformat1 \lsdpriority0 \lsdlo';
    wwv_flow_api.g_varchar2_table(206) := 'cked0 Normal;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 1;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdq';
    wwv_flow_api.g_varchar2_table(207) := 'format1 \lsdpriority9 \lsdlocked0 heading 2;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriorit';
    wwv_flow_api.g_varchar2_table(208) := 'y9 \lsdlocked0 heading 3;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 head';
    wwv_flow_api.g_varchar2_table(209) := 'ing 4;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 5;\lsdsemihidd';
    wwv_flow_api.g_varchar2_table(210) := 'en1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 6;\lsdsemihidden1 \lsdunhideused1';
    wwv_flow_api.g_varchar2_table(211) := ' \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 7;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsd';
    wwv_flow_api.g_varchar2_table(212) := 'priority9 \lsdlocked0 heading 8;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocke';
    wwv_flow_api.g_varchar2_table(213) := 'd0 heading 9;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 1;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(214) := 'sdlocked0 index 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 3;\lsdsemihidden1 \lsdunhideused';
    wwv_flow_api.g_varchar2_table(215) := '1 \lsdlocked0 index 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 5;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhid';
    wwv_flow_api.g_varchar2_table(216) := 'eused1 \lsdlocked0 index 6;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 7;\lsdsemihidden1 \lsdu';
    wwv_flow_api.g_varchar2_table(217) := 'nhideused1 \lsdlocked0 index 8;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 9;'||wwv_flow.LF||
'\lsdsemihidden1 ';
    wwv_flow_api.g_varchar2_table(218) := '\lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 1;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsd';
    wwv_flow_api.g_varchar2_table(219) := 'locked0 toc 2;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsd';
    wwv_flow_api.g_varchar2_table(220) := 'unhideused1 \lsdpriority39 \lsdlocked0 toc 4;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlock';
    wwv_flow_api.g_varchar2_table(221) := 'ed0 toc 5;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 6;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhi';
    wwv_flow_api.g_varchar2_table(222) := 'deused1 \lsdpriority39 \lsdlocked0 toc 7;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 ';
    wwv_flow_api.g_varchar2_table(223) := 'toc 8;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 9;\lsdsemihidden1 \lsdunhideuse';
    wwv_flow_api.g_varchar2_table(224) := 'd1 \lsdlocked0 Normal Indent;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 footnote text;\lsdsemihidd';
    wwv_flow_api.g_varchar2_table(225) := 'en1 \lsdunhideused1 \lsdlocked0 annotation text;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 header;\';
    wwv_flow_api.g_varchar2_table(226) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 footer;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index';
    wwv_flow_api.g_varchar2_table(227) := ' heading;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority35 \lsdlocked0 caption;\lsdsemihid';
    wwv_flow_api.g_varchar2_table(228) := 'den1 \lsdunhideused1 \lsdlocked0 table of figures;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 envel';
    wwv_flow_api.g_varchar2_table(229) := 'ope address;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 envelope return;\lsdsemihidden1 \lsdunhideus';
    wwv_flow_api.g_varchar2_table(230) := 'ed1 \lsdlocked0 footnote reference;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 annotation reference;';
    wwv_flow_api.g_varchar2_table(231) := ''||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 line number;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(232) := ' page number;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 endnote reference;\lsdsemihidden1 \lsdunhid';
    wwv_flow_api.g_varchar2_table(233) := 'eused1 \lsdlocked0 endnote text;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 table of authorities;\l';
    wwv_flow_api.g_varchar2_table(234) := 'sdsemihidden1 \lsdunhideused1 \lsdlocked0 macro;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 toa head';
    wwv_flow_api.g_varchar2_table(235) := 'ing;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Li';
    wwv_flow_api.g_varchar2_table(236) := 'st Bullet;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Number;\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(237) := 'sdlocked0 List 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1';
    wwv_flow_api.g_varchar2_table(238) := ' \lsdlocked0 List 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List 5;\lsdsemihidden1 \lsdunhideuse';
    wwv_flow_api.g_varchar2_table(239) := 'd1 \lsdlocked0 List Bullet 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Bullet 3;'||wwv_flow.LF||
'\lsdsemihidd';
    wwv_flow_api.g_varchar2_table(240) := 'en1 \lsdunhideused1 \lsdlocked0 List Bullet 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Bulle';
    wwv_flow_api.g_varchar2_table(241) := 't 5;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Number 2;\lsdsemihidden1 \lsdunhideused1 \lsdlo';
    wwv_flow_api.g_varchar2_table(242) := 'cked0 List Number 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Number 4;\lsdsemihidden1 \lsdu';
    wwv_flow_api.g_varchar2_table(243) := 'nhideused1 \lsdlocked0 List Number 5;\lsdqformat1 \lsdpriority10 \lsdlocked0 Title;\lsdsemihidden1 \';
    wwv_flow_api.g_varchar2_table(244) := 'lsdunhideused1 \lsdlocked0 Closing;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Signature;\lsdsemihi';
    wwv_flow_api.g_varchar2_table(245) := 'dden1 \lsdunhideused1 \lsdpriority1 \lsdlocked0 Default Paragraph Font;\lsdsemihidden1 \lsdunhideuse';
    wwv_flow_api.g_varchar2_table(246) := 'd1 \lsdlocked0 Body Text;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Text Indent;'||wwv_flow.LF||
'\lsdsemihidde';
    wwv_flow_api.g_varchar2_table(247) := 'n1 \lsdunhideused1 \lsdlocked0 List Continue;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Contin';
    wwv_flow_api.g_varchar2_table(248) := 'ue 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Continue 3;\lsdsemihidden1 \lsdunhideused1 \ls';
    wwv_flow_api.g_varchar2_table(249) := 'dlocked0 List Continue 4;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Continue 5;\lsdsemihidden';
    wwv_flow_api.g_varchar2_table(250) := '1 \lsdunhideused1 \lsdlocked0 Message Header;\lsdqformat1 \lsdpriority11 \lsdlocked0 Subtitle;\lsdse';
    wwv_flow_api.g_varchar2_table(251) := 'mihidden1 \lsdunhideused1 \lsdlocked0 Salutation;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Date;\';
    wwv_flow_api.g_varchar2_table(252) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Text First Indent;\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(253) := 'sdlocked0 Body Text First Indent 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Note Heading;'||wwv_flow.LF||
'\lsdsem';
    wwv_flow_api.g_varchar2_table(254) := 'ihidden1 \lsdunhideused1 \lsdlocked0 Body Text 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Te';
    wwv_flow_api.g_varchar2_table(255) := 'xt 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Text Indent 2;\lsdsemihidden1 \lsdunhideused1 ';
    wwv_flow_api.g_varchar2_table(256) := '\lsdlocked0 Body Text Indent 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Block Text;\lsdsemihidde';
    wwv_flow_api.g_varchar2_table(257) := 'n1 \lsdunhideused1 \lsdlocked0 Hyperlink;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 FollowedHyperli';
    wwv_flow_api.g_varchar2_table(258) := 'nk;\lsdqformat1 \lsdpriority22 \lsdlocked0 Strong;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority20 \lsdlocked0 Emphasis;';
    wwv_flow_api.g_varchar2_table(259) := '\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Document Map;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(260) := ' Plain Text;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 E-mail Signature;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhide';
    wwv_flow_api.g_varchar2_table(261) := 'used1 \lsdlocked0 HTML Top of Form;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Bottom of Form;\';
    wwv_flow_api.g_varchar2_table(262) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Normal (Web);\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 ';
    wwv_flow_api.g_varchar2_table(263) := 'HTML Acronym;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Address;\lsdsemihidden1 \lsdunhideuse';
    wwv_flow_api.g_varchar2_table(264) := 'd1 \lsdlocked0 HTML Cite;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Code;\lsdsemihidden1 \lsdu';
    wwv_flow_api.g_varchar2_table(265) := 'nhideused1 \lsdlocked0 HTML Definition;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Keyboard;\l';
    wwv_flow_api.g_varchar2_table(266) := 'sdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Preformatted;\lsdsemihidden1 \lsdunhideused1 \lsdlock';
    wwv_flow_api.g_varchar2_table(267) := 'ed0 HTML Sample;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Typewriter;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunh';
    wwv_flow_api.g_varchar2_table(268) := 'ideused1 \lsdlocked0 HTML Variable;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Normal Table;\lsdsemi';
    wwv_flow_api.g_varchar2_table(269) := 'hidden1 \lsdunhideused1 \lsdlocked0 annotation subject;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 N';
    wwv_flow_api.g_varchar2_table(270) := 'o List;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Outline List 1;\lsdsemihidden1 \lsdunhideused1 \';
    wwv_flow_api.g_varchar2_table(271) := 'lsdlocked0 Outline List 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Outline List 3;\lsdsemihidden1';
    wwv_flow_api.g_varchar2_table(272) := ' \lsdunhideused1 \lsdlocked0 Table Simple 1;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Simpl';
    wwv_flow_api.g_varchar2_table(273) := 'e 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Simple 3;\lsdsemihidden1 \lsdunhideused1 \lsdl';
    wwv_flow_api.g_varchar2_table(274) := 'ocked0 Table Classic 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Classic 2;'||wwv_flow.LF||
'\lsdsemihidden1 ';
    wwv_flow_api.g_varchar2_table(275) := '\lsdunhideused1 \lsdlocked0 Table Classic 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Classi';
    wwv_flow_api.g_varchar2_table(276) := 'c 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Colorful 1;\lsdsemihidden1 \lsdunhideused1 \ls';
    wwv_flow_api.g_varchar2_table(277) := 'dlocked0 Table Colorful 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Colorful 3;\lsdsemihidd';
    wwv_flow_api.g_varchar2_table(278) := 'en1 \lsdunhideused1 \lsdlocked0 Table Columns 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Co';
    wwv_flow_api.g_varchar2_table(279) := 'lumns 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Columns 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1';
    wwv_flow_api.g_varchar2_table(280) := ' \lsdlocked0 Table Columns 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Columns 5;\lsdsemihid';
    wwv_flow_api.g_varchar2_table(281) := 'den1 \lsdunhideused1 \lsdlocked0 Table Grid 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid';
    wwv_flow_api.g_varchar2_table(282) := ' 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 3;\lsdsemihidden1 \lsdunhideused1 \lsdloc';
    wwv_flow_api.g_varchar2_table(283) := 'ked0 Table Grid 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 5;\lsdsemihidden1 \lsdunhid';
    wwv_flow_api.g_varchar2_table(284) := 'eused1 \lsdlocked0 Table Grid 6;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 7;\lsdsemihi';
    wwv_flow_api.g_varchar2_table(285) := 'dden1 \lsdunhideused1 \lsdlocked0 Table Grid 8;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Lis';
    wwv_flow_api.g_varchar2_table(286) := 't 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlo';
    wwv_flow_api.g_varchar2_table(287) := 'cked0 Table List 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 4;\lsdsemihidden1 \lsdunhi';
    wwv_flow_api.g_varchar2_table(288) := 'deused1 \lsdlocked0 Table List 5;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 6;'||wwv_flow.LF||
'\lsdsemih';
    wwv_flow_api.g_varchar2_table(289) := 'idden1 \lsdunhideused1 \lsdlocked0 Table List 7;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Li';
    wwv_flow_api.g_varchar2_table(290) := 'st 8;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table 3D effects 1;\lsdsemihidden1 \lsdunhideused1 ';
    wwv_flow_api.g_varchar2_table(291) := '\lsdlocked0 Table 3D effects 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table 3D effects 3;\lsds';
    wwv_flow_api.g_varchar2_table(292) := 'emihidden1 \lsdunhideused1 \lsdlocked0 Table Contemporary;\lsdsemihidden1 \lsdunhideused1 \lsdlocked';
    wwv_flow_api.g_varchar2_table(293) := '0 Table Elegant;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Professional;'||wwv_flow.LF||
'\lsdsemihidden1 \lsd';
    wwv_flow_api.g_varchar2_table(294) := 'unhideused1 \lsdlocked0 Table Subtle 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Subtle 2;\l';
    wwv_flow_api.g_varchar2_table(295) := 'sdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Web 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Ta';
    wwv_flow_api.g_varchar2_table(296) := 'ble Web 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Web 3;\lsdsemihidden1 \lsdunhideused1 \';
    wwv_flow_api.g_varchar2_table(297) := 'lsdlocked0 Balloon Text;\lsdpriority39 \lsdlocked0 Table Grid;\lsdsemihidden1 \lsdunhideused1 \lsdlo';
    wwv_flow_api.g_varchar2_table(298) := 'cked0 Table Theme;\lsdsemihidden1 \lsdlocked0 Placeholder Text;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority1 \lsdlocke';
    wwv_flow_api.g_varchar2_table(299) := 'd0 No Spacing;\lsdpriority60 \lsdlocked0 Light Shading;\lsdpriority61 \lsdlocked0 Light List;\lsdpri';
    wwv_flow_api.g_varchar2_table(300) := 'ority62 \lsdlocked0 Light Grid;\lsdpriority63 \lsdlocked0 Medium Shading 1;\lsdpriority64 \lsdlocked';
    wwv_flow_api.g_varchar2_table(301) := '0 Medium Shading 2;'||wwv_flow.LF||
'\lsdpriority65 \lsdlocked0 Medium List 1;\lsdpriority66 \lsdlocked0 Medium List ';
    wwv_flow_api.g_varchar2_table(302) := '2;\lsdpriority67 \lsdlocked0 Medium Grid 1;\lsdpriority68 \lsdlocked0 Medium Grid 2;\lsdpriority69 \';
    wwv_flow_api.g_varchar2_table(303) := 'lsdlocked0 Medium Grid 3;\lsdpriority70 \lsdlocked0 Dark List;'||wwv_flow.LF||
'\lsdpriority71 \lsdlocked0 Colorful S';
    wwv_flow_api.g_varchar2_table(304) := 'hading;\lsdpriority72 \lsdlocked0 Colorful List;\lsdpriority73 \lsdlocked0 Colorful Grid;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(305) := 'y60 \lsdlocked0 Light Shading Accent 1;\lsdpriority61 \lsdlocked0 Light List Accent 1;'||wwv_flow.LF||
'\lsdpriority6';
    wwv_flow_api.g_varchar2_table(306) := '2 \lsdlocked0 Light Grid Accent 1;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 1;\lsdpriority6';
    wwv_flow_api.g_varchar2_table(307) := '4 \lsdlocked0 Medium Shading 2 Accent 1;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 1;\lsdsemihi';
    wwv_flow_api.g_varchar2_table(308) := 'dden1 \lsdlocked0 Revision;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority34 \lsdlocked0 List Paragraph;\lsdqformat1 \lsd';
    wwv_flow_api.g_varchar2_table(309) := 'priority29 \lsdlocked0 Quote;\lsdqformat1 \lsdpriority30 \lsdlocked0 Intense Quote;\lsdpriority66 \l';
    wwv_flow_api.g_varchar2_table(310) := 'sdlocked0 Medium List 2 Accent 1;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 1;'||wwv_flow.LF||
'\lsdpriority68 \';
    wwv_flow_api.g_varchar2_table(311) := 'lsdlocked0 Medium Grid 2 Accent 1;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 1;\lsdpriority70 \';
    wwv_flow_api.g_varchar2_table(312) := 'lsdlocked0 Dark List Accent 1;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 1;\lsdpriority72 \l';
    wwv_flow_api.g_varchar2_table(313) := 'sdlocked0 Colorful List Accent 1;'||wwv_flow.LF||
'\lsdpriority73 \lsdlocked0 Colorful Grid Accent 1;\lsdpriority60 \';
    wwv_flow_api.g_varchar2_table(314) := 'lsdlocked0 Light Shading Accent 2;\lsdpriority61 \lsdlocked0 Light List Accent 2;\lsdpriority62 \lsd';
    wwv_flow_api.g_varchar2_table(315) := 'locked0 Light Grid Accent 2;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 2;'||wwv_flow.LF||
'\lsdpriority64 \ls';
    wwv_flow_api.g_varchar2_table(316) := 'dlocked0 Medium Shading 2 Accent 2;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 2;\lsdpriority66 ';
    wwv_flow_api.g_varchar2_table(317) := '\lsdlocked0 Medium List 2 Accent 2;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 2;\lsdpriority68 ';
    wwv_flow_api.g_varchar2_table(318) := '\lsdlocked0 Medium Grid 2 Accent 2;'||wwv_flow.LF||
'\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 2;\lsdpriority70';
    wwv_flow_api.g_varchar2_table(319) := ' \lsdlocked0 Dark List Accent 2;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 2;\lsdpriority72 ';
    wwv_flow_api.g_varchar2_table(320) := '\lsdlocked0 Colorful List Accent 2;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 2;'||wwv_flow.LF||
'\lsdpriority60';
    wwv_flow_api.g_varchar2_table(321) := ' \lsdlocked0 Light Shading Accent 3;\lsdpriority61 \lsdlocked0 Light List Accent 3;\lsdpriority62 \l';
    wwv_flow_api.g_varchar2_table(322) := 'sdlocked0 Light Grid Accent 3;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 3;\lsdpriority64 \l';
    wwv_flow_api.g_varchar2_table(323) := 'sdlocked0 Medium Shading 2 Accent 3;'||wwv_flow.LF||
'\lsdpriority65 \lsdlocked0 Medium List 1 Accent 3;\lsdpriority6';
    wwv_flow_api.g_varchar2_table(324) := '6 \lsdlocked0 Medium List 2 Accent 3;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 3;\lsdpriority6';
    wwv_flow_api.g_varchar2_table(325) := '8 \lsdlocked0 Medium Grid 2 Accent 3;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 3;'||wwv_flow.LF||
'\lsdpriority';
    wwv_flow_api.g_varchar2_table(326) := '70 \lsdlocked0 Dark List Accent 3;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 3;\lsdpriority7';
    wwv_flow_api.g_varchar2_table(327) := '2 \lsdlocked0 Colorful List Accent 3;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 3;\lsdpriority6';
    wwv_flow_api.g_varchar2_table(328) := '0 \lsdlocked0 Light Shading Accent 4;'||wwv_flow.LF||
'\lsdpriority61 \lsdlocked0 Light List Accent 4;\lsdpriority62 ';
    wwv_flow_api.g_varchar2_table(329) := '\lsdlocked0 Light Grid Accent 4;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 4;\lsdpriority64 ';
    wwv_flow_api.g_varchar2_table(330) := '\lsdlocked0 Medium Shading 2 Accent 4;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 4;'||wwv_flow.LF||
'\lsdpriorit';
    wwv_flow_api.g_varchar2_table(331) := 'y66 \lsdlocked0 Medium List 2 Accent 4;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 4;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(332) := 'y68 \lsdlocked0 Medium Grid 2 Accent 4;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 4;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(333) := 'y70 \lsdlocked0 Dark List Accent 4;'||wwv_flow.LF||
'\lsdpriority71 \lsdlocked0 Colorful Shading Accent 4;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(334) := 'y72 \lsdlocked0 Colorful List Accent 4;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 4;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(335) := 'y60 \lsdlocked0 Light Shading Accent 5;\lsdpriority61 \lsdlocked0 Light List Accent 5;'||wwv_flow.LF||
'\lsdpriority6';
    wwv_flow_api.g_varchar2_table(336) := '2 \lsdlocked0 Light Grid Accent 5;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 5;\lsdpriority6';
    wwv_flow_api.g_varchar2_table(337) := '4 \lsdlocked0 Medium Shading 2 Accent 5;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 5;\lsdpriori';
    wwv_flow_api.g_varchar2_table(338) := 'ty66 \lsdlocked0 Medium List 2 Accent 5;'||wwv_flow.LF||
'\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 5;\lsdprior';
    wwv_flow_api.g_varchar2_table(339) := 'ity68 \lsdlocked0 Medium Grid 2 Accent 5;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 5;\lsdprior';
    wwv_flow_api.g_varchar2_table(340) := 'ity70 \lsdlocked0 Dark List Accent 5;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 5;'||wwv_flow.LF||
'\lsdprior';
    wwv_flow_api.g_varchar2_table(341) := 'ity72 \lsdlocked0 Colorful List Accent 5;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 5;\lsdprior';
    wwv_flow_api.g_varchar2_table(342) := 'ity60 \lsdlocked0 Light Shading Accent 6;\lsdpriority61 \lsdlocked0 Light List Accent 6;\lsdpriority';
    wwv_flow_api.g_varchar2_table(343) := '62 \lsdlocked0 Light Grid Accent 6;'||wwv_flow.LF||
'\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 6;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(344) := 'y64 \lsdlocked0 Medium Shading 2 Accent 6;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 6;\lsdprio';
    wwv_flow_api.g_varchar2_table(345) := 'rity66 \lsdlocked0 Medium List 2 Accent 6;'||wwv_flow.LF||
'\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 6;\lsdpri';
    wwv_flow_api.g_varchar2_table(346) := 'ority68 \lsdlocked0 Medium Grid 2 Accent 6;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 6;\lsdpri';
    wwv_flow_api.g_varchar2_table(347) := 'ority70 \lsdlocked0 Dark List Accent 6;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 6;'||wwv_flow.LF||
'\lsdpri';
    wwv_flow_api.g_varchar2_table(348) := 'ority72 \lsdlocked0 Colorful List Accent 6;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 6;\lsdqfo';
    wwv_flow_api.g_varchar2_table(349) := 'rmat1 \lsdpriority19 \lsdlocked0 Subtle Emphasis;\lsdqformat1 \lsdpriority21 \lsdlocked0 Intense Emp';
    wwv_flow_api.g_varchar2_table(350) := 'hasis;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority31 \lsdlocked0 Subtle Reference;\lsdqformat1 \lsdpriority32 \lsdlock';
    wwv_flow_api.g_varchar2_table(351) := 'ed0 Intense Reference;\lsdqformat1 \lsdpriority33 \lsdlocked0 Book Title;\lsdsemihidden1 \lsdunhideu';
    wwv_flow_api.g_varchar2_table(352) := 'sed1 \lsdpriority37 \lsdlocked0 Bibliography;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdprior';
    wwv_flow_api.g_varchar2_table(353) := 'ity39 \lsdlocked0 TOC Heading;\lsdpriority41 \lsdlocked0 Plain Table 1;\lsdpriority42 \lsdlocked0 Pl';
    wwv_flow_api.g_varchar2_table(354) := 'ain Table 2;\lsdpriority43 \lsdlocked0 Plain Table 3;\lsdpriority44 \lsdlocked0 Plain Table 4;'||wwv_flow.LF||
'\lsdp';
    wwv_flow_api.g_varchar2_table(355) := 'riority45 \lsdlocked0 Plain Table 5;\lsdpriority40 \lsdlocked0 Grid Table Light;\lsdpriority46 \lsdl';
    wwv_flow_api.g_varchar2_table(356) := 'ocked0 Grid Table 1 Light;\lsdpriority47 \lsdlocked0 Grid Table 2;\lsdpriority48 \lsdlocked0 Grid Ta';
    wwv_flow_api.g_varchar2_table(357) := 'ble 3;\lsdpriority49 \lsdlocked0 Grid Table 4;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 Grid Table 5 Dark;\lsdprio';
    wwv_flow_api.g_varchar2_table(358) := 'rity51 \lsdlocked0 Grid Table 6 Colorful;\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful;\lsdpriori';
    wwv_flow_api.g_varchar2_table(359) := 'ty46 \lsdlocked0 Grid Table 1 Light Accent 1;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 1;'||wwv_flow.LF||
'\lsdp';
    wwv_flow_api.g_varchar2_table(360) := 'riority48 \lsdlocked0 Grid Table 3 Accent 1;\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 1;\lsdpri';
    wwv_flow_api.g_varchar2_table(361) := 'ority50 \lsdlocked0 Grid Table 5 Dark Accent 1;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Acce';
    wwv_flow_api.g_varchar2_table(362) := 'nt 1;'||wwv_flow.LF||
'\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful Accent 1;\lsdpriority46 \lsdlocked0 Grid Tabl';
    wwv_flow_api.g_varchar2_table(363) := 'e 1 Light Accent 2;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 2;\lsdpriority48 \lsdlocked0 Grid ';
    wwv_flow_api.g_varchar2_table(364) := 'Table 3 Accent 2;'||wwv_flow.LF||
'\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 2;\lsdpriority50 \lsdlocked0 Grid T';
    wwv_flow_api.g_varchar2_table(365) := 'able 5 Dark Accent 2;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 2;\lsdpriority52 \lsdlo';
    wwv_flow_api.g_varchar2_table(366) := 'cked0 Grid Table 7 Colorful Accent 2;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 Grid Table 1 Light Accent 3;\lsdpri';
    wwv_flow_api.g_varchar2_table(367) := 'ority47 \lsdlocked0 Grid Table 2 Accent 3;\lsdpriority48 \lsdlocked0 Grid Table 3 Accent 3;\lsdprior';
    wwv_flow_api.g_varchar2_table(368) := 'ity49 \lsdlocked0 Grid Table 4 Accent 3;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 Grid Table 5 Dark Accent 3;\lsdp';
    wwv_flow_api.g_varchar2_table(369) := 'riority51 \lsdlocked0 Grid Table 6 Colorful Accent 3;\lsdpriority52 \lsdlocked0 Grid Table 7 Colorfu';
    wwv_flow_api.g_varchar2_table(370) := 'l Accent 3;\lsdpriority46 \lsdlocked0 Grid Table 1 Light Accent 4;'||wwv_flow.LF||
'\lsdpriority47 \lsdlocked0 Grid T';
    wwv_flow_api.g_varchar2_table(371) := 'able 2 Accent 4;\lsdpriority48 \lsdlocked0 Grid Table 3 Accent 4;\lsdpriority49 \lsdlocked0 Grid Tab';
    wwv_flow_api.g_varchar2_table(372) := 'le 4 Accent 4;\lsdpriority50 \lsdlocked0 Grid Table 5 Dark Accent 4;'||wwv_flow.LF||
'\lsdpriority51 \lsdlocked0 Grid';
    wwv_flow_api.g_varchar2_table(373) := ' Table 6 Colorful Accent 4;\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful Accent 4;\lsdpriority46 ';
    wwv_flow_api.g_varchar2_table(374) := '\lsdlocked0 Grid Table 1 Light Accent 5;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 5;'||wwv_flow.LF||
'\lsdpriori';
    wwv_flow_api.g_varchar2_table(375) := 'ty48 \lsdlocked0 Grid Table 3 Accent 5;\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 5;\lsdpriority';
    wwv_flow_api.g_varchar2_table(376) := '50 \lsdlocked0 Grid Table 5 Dark Accent 5;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 5;';
    wwv_flow_api.g_varchar2_table(377) := ''||wwv_flow.LF||
'\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful Accent 5;\lsdpriority46 \lsdlocked0 Grid Table 1 L';
    wwv_flow_api.g_varchar2_table(378) := 'ight Accent 6;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 6;\lsdpriority48 \lsdlocked0 Grid Table';
    wwv_flow_api.g_varchar2_table(379) := ' 3 Accent 6;'||wwv_flow.LF||
'\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 6;\lsdpriority50 \lsdlocked0 Grid Table ';
    wwv_flow_api.g_varchar2_table(380) := '5 Dark Accent 6;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 6;\lsdpriority52 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(381) := ' Grid Table 7 Colorful Accent 6;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 List Table 1 Light;\lsdpriority47 \lsdlo';
    wwv_flow_api.g_varchar2_table(382) := 'cked0 List Table 2;\lsdpriority48 \lsdlocked0 List Table 3;\lsdpriority49 \lsdlocked0 List Table 4;\';
    wwv_flow_api.g_varchar2_table(383) := 'lsdpriority50 \lsdlocked0 List Table 5 Dark;'||wwv_flow.LF||
'\lsdpriority51 \lsdlocked0 List Table 6 Colorful;\lsdpr';
    wwv_flow_api.g_varchar2_table(384) := 'iority52 \lsdlocked0 List Table 7 Colorful;\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 1;\l';
    wwv_flow_api.g_varchar2_table(385) := 'sdpriority47 \lsdlocked0 List Table 2 Accent 1;\lsdpriority48 \lsdlocked0 List Table 3 Accent 1;'||wwv_flow.LF||
'\ls';
    wwv_flow_api.g_varchar2_table(386) := 'dpriority49 \lsdlocked0 List Table 4 Accent 1;\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 1;';
    wwv_flow_api.g_varchar2_table(387) := '\lsdpriority51 \lsdlocked0 List Table 6 Colorful Accent 1;\lsdpriority52 \lsdlocked0 List Table 7 Co';
    wwv_flow_api.g_varchar2_table(388) := 'lorful Accent 1;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 2;\lsdpriority47 \lsdlocked0 L';
    wwv_flow_api.g_varchar2_table(389) := 'ist Table 2 Accent 2;\lsdpriority48 \lsdlocked0 List Table 3 Accent 2;\lsdpriority49 \lsdlocked0 Lis';
    wwv_flow_api.g_varchar2_table(390) := 't Table 4 Accent 2;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 2;\lsdpriority51 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(391) := ' List Table 6 Colorful Accent 2;\lsdpriority52 \lsdlocked0 List Table 7 Colorful Accent 2;\lsdpriori';
    wwv_flow_api.g_varchar2_table(392) := 'ty46 \lsdlocked0 List Table 1 Light Accent 3;'||wwv_flow.LF||
'\lsdpriority47 \lsdlocked0 List Table 2 Accent 3;\lsdp';
    wwv_flow_api.g_varchar2_table(393) := 'riority48 \lsdlocked0 List Table 3 Accent 3;\lsdpriority49 \lsdlocked0 List Table 4 Accent 3;\lsdpri';
    wwv_flow_api.g_varchar2_table(394) := 'ority50 \lsdlocked0 List Table 5 Dark Accent 3;'||wwv_flow.LF||
'\lsdpriority51 \lsdlocked0 List Table 6 Colorful Acc';
    wwv_flow_api.g_varchar2_table(395) := 'ent 3;\lsdpriority52 \lsdlocked0 List Table 7 Colorful Accent 3;\lsdpriority46 \lsdlocked0 List Tabl';
    wwv_flow_api.g_varchar2_table(396) := 'e 1 Light Accent 4;\lsdpriority47 \lsdlocked0 List Table 2 Accent 4;'||wwv_flow.LF||
'\lsdpriority48 \lsdlocked0 List';
    wwv_flow_api.g_varchar2_table(397) := ' Table 3 Accent 4;\lsdpriority49 \lsdlocked0 List Table 4 Accent 4;\lsdpriority50 \lsdlocked0 List T';
    wwv_flow_api.g_varchar2_table(398) := 'able 5 Dark Accent 4;\lsdpriority51 \lsdlocked0 List Table 6 Colorful Accent 4;'||wwv_flow.LF||
'\lsdpriority52 \lsdl';
    wwv_flow_api.g_varchar2_table(399) := 'ocked0 List Table 7 Colorful Accent 4;\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 5;\lsdpri';
    wwv_flow_api.g_varchar2_table(400) := 'ority47 \lsdlocked0 List Table 2 Accent 5;\lsdpriority48 \lsdlocked0 List Table 3 Accent 5;'||wwv_flow.LF||
'\lsdprio';
    wwv_flow_api.g_varchar2_table(401) := 'rity49 \lsdlocked0 List Table 4 Accent 5;\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 5;\lsdp';
    wwv_flow_api.g_varchar2_table(402) := 'riority51 \lsdlocked0 List Table 6 Colorful Accent 5;\lsdpriority52 \lsdlocked0 List Table 7 Colorfu';
    wwv_flow_api.g_varchar2_table(403) := 'l Accent 5;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 6;\lsdpriority47 \lsdlocked0 List T';
    wwv_flow_api.g_varchar2_table(404) := 'able 2 Accent 6;\lsdpriority48 \lsdlocked0 List Table 3 Accent 6;\lsdpriority49 \lsdlocked0 List Tab';
    wwv_flow_api.g_varchar2_table(405) := 'le 4 Accent 6;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 6;\lsdpriority51 \lsdlocked0 List';
    wwv_flow_api.g_varchar2_table(406) := ' Table 6 Colorful Accent 6;\lsdpriority52 \lsdlocked0 List Table 7 Colorful Accent 6;\lsdsemihidden1';
    wwv_flow_api.g_varchar2_table(407) := ' \lsdunhideused1 \lsdlocked0 Mention;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Smart Hyperlink;\l';
    wwv_flow_api.g_varchar2_table(408) := 'sdsemihidden1 \lsdunhideused1 \lsdlocked0 Hashtag;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Unreso';
    wwv_flow_api.g_varchar2_table(409) := 'lved Mention;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Smart Link;}}{\*\datastore 01050000'||wwv_flow.LF||
'0200000';
    wwv_flow_api.g_varchar2_table(410) := '0180000004d73786d6c322e534158584d4c5265616465722e362e3000000000000000000000060000'||wwv_flow.LF||
'd0cf11e0a1b11ae100';
    wwv_flow_api.g_varchar2_table(411) := '0000000000000000000000000000003e000300feff0900060000000000000000000000010000000100000000000000001000';
    wwv_flow_api.g_varchar2_table(412) := '00feffffff00000000feffffff0000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(413) := 'ffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(414) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(415) := 'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'ffffffffffff';
    wwv_flow_api.g_varchar2_table(416) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(417) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(418) := 'ffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(419) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(420) := 'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'ffffff';
    wwv_flow_api.g_varchar2_table(421) := 'fffffffffffdfffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(422) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(423) := 'ffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(424) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(425) := 'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(426) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(427) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(428) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(429) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(430) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(431) := 'fffff'||wwv_flow.LF||
'ffffffffffffffffffffffffffffffff52006f006f007400200045006e007400720079000000000000000000000000';
    wwv_flow_api.g_varchar2_table(432) := '00000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffffffffffff0c';
    wwv_flow_api.g_varchar2_table(433) := '6ad98892f1d411a65f0040963251e50000000000000000000000008026'||wwv_flow.LF||
'725beeccd801feffffff000000000000000000000';
    wwv_flow_api.g_varchar2_table(434) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(435) := '0000000000000000000000000000000ffffffffffffffffffffffff000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(436) := '00000000000'||wwv_flow.LF||
'0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(437) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff';
    wwv_flow_api.g_varchar2_table(438) := 'ffffffffffff0000000000000000000000000000000000000000000000000000'||wwv_flow.LF||
'00000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(439) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(440) := '000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(441) := '00000000000000000'||wwv_flow.LF||
'0000000000000000000000000000000000000000000000000105000000000000}}';
end;
/
begin
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(11613656461877395)
,p_report_layout_name=>'CertificateInsurance'
,p_report_layout_type=>'XSL_FILE'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
);
null;
end;
/
prompt --application/shared_components/reports/report_layouts/test
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '{\rtf1\adeflang1025\ansi\ansicpg1252\uc1\adeff31507\deff0\stshfdbch31506\stshfloch31506\stshfhich315';
    wwv_flow_api.g_varchar2_table(2) := '06\stshfbi31507\deflang22538\deflangfe22538\themelang22538\themelangfe0\themelangcs0{\fonttbl{\f0\fb';
    wwv_flow_api.g_varchar2_table(3) := 'idi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f34\fbidi \froman\fcha';
    wwv_flow_api.g_varchar2_table(4) := 'rset0\fprq2{\*\panose 02040503050406030204}Cambria Math;}'||wwv_flow.LF||
'{\f37\fbidi \fswiss\fcharset0\fprq2{\*\pan';
    wwv_flow_api.g_varchar2_table(5) := 'ose 020f0502020204030204}Calibri;}{\flomajor\f31500\fbidi \froman\fcharset0\fprq2{\*\panose 02020603';
    wwv_flow_api.g_varchar2_table(6) := '050405020304}Times New Roman;}'||wwv_flow.LF||
'{\fdbmajor\f31501\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050';
    wwv_flow_api.g_varchar2_table(7) := '405020304}Times New Roman;}{\fhimajor\f31502\fbidi \fswiss\fcharset0\fprq2{\*\panose 020f03020202040';
    wwv_flow_api.g_varchar2_table(8) := '30204}Calibri Light;}'||wwv_flow.LF||
'{\fbimajor\f31503\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304';
    wwv_flow_api.g_varchar2_table(9) := '}Times New Roman;}{\flominor\f31504\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Tim';
    wwv_flow_api.g_varchar2_table(10) := 'es New Roman;}'||wwv_flow.LF||
'{\fdbminor\f31505\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times ';
    wwv_flow_api.g_varchar2_table(11) := 'New Roman;}{\fhiminor\f31506\fbidi \fswiss\fcharset0\fprq2{\*\panose 020f0502020204030204}Calibri;}'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(12) := '{\fbiminor\f31507\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f4';
    wwv_flow_api.g_varchar2_table(13) := '3\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\f44\fbidi \froman\fcharset204\fprq2 Times Ne';
    wwv_flow_api.g_varchar2_table(14) := 'w Roman Cyr;}'||wwv_flow.LF||
'{\f46\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\f47\fbidi \froman\fchar';
    wwv_flow_api.g_varchar2_table(15) := 'set162\fprq2 Times New Roman Tur;}{\f48\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\';
    wwv_flow_api.g_varchar2_table(16) := 'f49\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}'||wwv_flow.LF||
'{\f50\fbidi \froman\fcharset186\fprq2';
    wwv_flow_api.g_varchar2_table(17) := ' Times New Roman Baltic;}{\f51\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\f413\';
    wwv_flow_api.g_varchar2_table(18) := 'fbidi \fswiss\fcharset238\fprq2 Calibri CE;}{\f414\fbidi \fswiss\fcharset204\fprq2 Calibri Cyr;}'||wwv_flow.LF||
'{\f';
    wwv_flow_api.g_varchar2_table(19) := '416\fbidi \fswiss\fcharset161\fprq2 Calibri Greek;}{\f417\fbidi \fswiss\fcharset162\fprq2 Calibri Tu';
    wwv_flow_api.g_varchar2_table(20) := 'r;}{\f418\fbidi \fswiss\fcharset177\fprq2 Calibri (Hebrew);}{\f419\fbidi \fswiss\fcharset178\fprq2 C';
    wwv_flow_api.g_varchar2_table(21) := 'alibri (Arabic);}'||wwv_flow.LF||
'{\f420\fbidi \fswiss\fcharset186\fprq2 Calibri Baltic;}{\f421\fbidi \fswiss\fchars';
    wwv_flow_api.g_varchar2_table(22) := 'et163\fprq2 Calibri (Vietnamese);}{\flomajor\f31508\fbidi \froman\fcharset238\fprq2 Times New Roman ';
    wwv_flow_api.g_varchar2_table(23) := 'CE;}'||wwv_flow.LF||
'{\flomajor\f31509\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}{\flomajor\f31511\fbidi ';
    wwv_flow_api.g_varchar2_table(24) := '\froman\fcharset161\fprq2 Times New Roman Greek;}{\flomajor\f31512\fbidi \froman\fcharset162\fprq2 T';
    wwv_flow_api.g_varchar2_table(25) := 'imes New Roman Tur;}'||wwv_flow.LF||
'{\flomajor\f31513\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\f';
    wwv_flow_api.g_varchar2_table(26) := 'lomajor\f31514\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\flomajor\f31515\fbidi \fr';
    wwv_flow_api.g_varchar2_table(27) := 'oman\fcharset186\fprq2 Times New Roman Baltic;}'||wwv_flow.LF||
'{\flomajor\f31516\fbidi \froman\fcharset163\fprq2 Ti';
    wwv_flow_api.g_varchar2_table(28) := 'mes New Roman (Vietnamese);}{\fdbmajor\f31518\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\';
    wwv_flow_api.g_varchar2_table(29) := 'fdbmajor\f31519\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}'||wwv_flow.LF||
'{\fdbmajor\f31521\fbidi \froma';
    wwv_flow_api.g_varchar2_table(30) := 'n\fcharset161\fprq2 Times New Roman Greek;}{\fdbmajor\f31522\fbidi \froman\fcharset162\fprq2 Times N';
    wwv_flow_api.g_varchar2_table(31) := 'ew Roman Tur;}{\fdbmajor\f31523\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'||wwv_flow.LF||
'{\fdbmajo';
    wwv_flow_api.g_varchar2_table(32) := 'r\f31524\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\fdbmajor\f31525\fbidi \froman\f';
    wwv_flow_api.g_varchar2_table(33) := 'charset186\fprq2 Times New Roman Baltic;}{\fdbmajor\f31526\fbidi \froman\fcharset163\fprq2 Times New';
    wwv_flow_api.g_varchar2_table(34) := ' Roman (Vietnamese);}'||wwv_flow.LF||
'{\fhimajor\f31528\fbidi \fswiss\fcharset238\fprq2 Calibri Light CE;}{\fhimajor';
    wwv_flow_api.g_varchar2_table(35) := '\f31529\fbidi \fswiss\fcharset204\fprq2 Calibri Light Cyr;}{\fhimajor\f31531\fbidi \fswiss\fcharset1';
    wwv_flow_api.g_varchar2_table(36) := '61\fprq2 Calibri Light Greek;}'||wwv_flow.LF||
'{\fhimajor\f31532\fbidi \fswiss\fcharset162\fprq2 Calibri Light Tur;}';
    wwv_flow_api.g_varchar2_table(37) := '{\fhimajor\f31533\fbidi \fswiss\fcharset177\fprq2 Calibri Light (Hebrew);}{\fhimajor\f31534\fbidi \f';
    wwv_flow_api.g_varchar2_table(38) := 'swiss\fcharset178\fprq2 Calibri Light (Arabic);}'||wwv_flow.LF||
'{\fhimajor\f31535\fbidi \fswiss\fcharset186\fprq2 C';
    wwv_flow_api.g_varchar2_table(39) := 'alibri Light Baltic;}{\fhimajor\f31536\fbidi \fswiss\fcharset163\fprq2 Calibri Light (Vietnamese);}{';
    wwv_flow_api.g_varchar2_table(40) := '\fbimajor\f31538\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}'||wwv_flow.LF||
'{\fbimajor\f31539\fbidi \froma';
    wwv_flow_api.g_varchar2_table(41) := 'n\fcharset204\fprq2 Times New Roman Cyr;}{\fbimajor\f31541\fbidi \froman\fcharset161\fprq2 Times New';
    wwv_flow_api.g_varchar2_table(42) := ' Roman Greek;}{\fbimajor\f31542\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}'||wwv_flow.LF||
'{\fbimajor\f31';
    wwv_flow_api.g_varchar2_table(43) := '543\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fbimajor\f31544\fbidi \froman\fchars';
    wwv_flow_api.g_varchar2_table(44) := 'et178\fprq2 Times New Roman (Arabic);}{\fbimajor\f31545\fbidi \froman\fcharset186\fprq2 Times New Ro';
    wwv_flow_api.g_varchar2_table(45) := 'man Baltic;}'||wwv_flow.LF||
'{\fbimajor\f31546\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\flomi';
    wwv_flow_api.g_varchar2_table(46) := 'nor\f31548\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\flominor\f31549\fbidi \froman\fchar';
    wwv_flow_api.g_varchar2_table(47) := 'set204\fprq2 Times New Roman Cyr;}'||wwv_flow.LF||
'{\flominor\f31551\fbidi \froman\fcharset161\fprq2 Times New Roman';
    wwv_flow_api.g_varchar2_table(48) := ' Greek;}{\flominor\f31552\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\flominor\f31553\fbi';
    wwv_flow_api.g_varchar2_table(49) := 'di \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'||wwv_flow.LF||
'{\flominor\f31554\fbidi \froman\fcharset178\';
    wwv_flow_api.g_varchar2_table(50) := 'fprq2 Times New Roman (Arabic);}{\flominor\f31555\fbidi \froman\fcharset186\fprq2 Times New Roman Ba';
    wwv_flow_api.g_varchar2_table(51) := 'ltic;}{\flominor\f31556\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}'||wwv_flow.LF||
'{\fdbminor\f3';
    wwv_flow_api.g_varchar2_table(52) := '1558\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fdbminor\f31559\fbidi \froman\fcharset204';
    wwv_flow_api.g_varchar2_table(53) := '\fprq2 Times New Roman Cyr;}{\fdbminor\f31561\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;';
    wwv_flow_api.g_varchar2_table(54) := '}'||wwv_flow.LF||
'{\fdbminor\f31562\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fdbminor\f31563\fbidi \fr';
    wwv_flow_api.g_varchar2_table(55) := 'oman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fdbminor\f31564\fbidi \froman\fcharset178\fprq2 T';
    wwv_flow_api.g_varchar2_table(56) := 'imes New Roman (Arabic);}'||wwv_flow.LF||
'{\fdbminor\f31565\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}';
    wwv_flow_api.g_varchar2_table(57) := '{\fdbminor\f31566\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\fhiminor\f31568\fb';
    wwv_flow_api.g_varchar2_table(58) := 'idi \fswiss\fcharset238\fprq2 Calibri CE;}'||wwv_flow.LF||
'{\fhiminor\f31569\fbidi \fswiss\fcharset204\fprq2 Calibri';
    wwv_flow_api.g_varchar2_table(59) := ' Cyr;}{\fhiminor\f31571\fbidi \fswiss\fcharset161\fprq2 Calibri Greek;}{\fhiminor\f31572\fbidi \fswi';
    wwv_flow_api.g_varchar2_table(60) := 'ss\fcharset162\fprq2 Calibri Tur;}'||wwv_flow.LF||
'{\fhiminor\f31573\fbidi \fswiss\fcharset177\fprq2 Calibri (Hebrew';
    wwv_flow_api.g_varchar2_table(61) := ');}{\fhiminor\f31574\fbidi \fswiss\fcharset178\fprq2 Calibri (Arabic);}{\fhiminor\f31575\fbidi \fswi';
    wwv_flow_api.g_varchar2_table(62) := 'ss\fcharset186\fprq2 Calibri Baltic;}'||wwv_flow.LF||
'{\fhiminor\f31576\fbidi \fswiss\fcharset163\fprq2 Calibri (Vie';
    wwv_flow_api.g_varchar2_table(63) := 'tnamese);}{\fbiminor\f31578\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fbiminor\f31579\fb';
    wwv_flow_api.g_varchar2_table(64) := 'idi \froman\fcharset204\fprq2 Times New Roman Cyr;}'||wwv_flow.LF||
'{\fbiminor\f31581\fbidi \froman\fcharset161\fprq';
    wwv_flow_api.g_varchar2_table(65) := '2 Times New Roman Greek;}{\fbiminor\f31582\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fb';
    wwv_flow_api.g_varchar2_table(66) := 'iminor\f31583\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'||wwv_flow.LF||
'{\fbiminor\f31584\fbidi \fr';
    wwv_flow_api.g_varchar2_table(67) := 'oman\fcharset178\fprq2 Times New Roman (Arabic);}{\fbiminor\f31585\fbidi \froman\fcharset186\fprq2 T';
    wwv_flow_api.g_varchar2_table(68) := 'imes New Roman Baltic;}{\fbiminor\f31586\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese';
    wwv_flow_api.g_varchar2_table(69) := ');}}'||wwv_flow.LF||
'{\colortbl;\red0\green0\blue0;\red0\green0\blue255;\red0\green255\blue255;\red0\green255\blue0;';
    wwv_flow_api.g_varchar2_table(70) := '\red255\green0\blue255;\red255\green0\blue0;\red255\green255\blue0;\red255\green255\blue255;\red0\gr';
    wwv_flow_api.g_varchar2_table(71) := 'een0\blue128;\red0\green128\blue128;\red0\green128\blue0;'||wwv_flow.LF||
'\red128\green0\blue128;\red128\green0\blue';
    wwv_flow_api.g_varchar2_table(72) := '0;\red128\green128\blue0;\red128\green128\blue128;\red192\green192\blue192;\red0\green0\blue0;\red0\';
    wwv_flow_api.g_varchar2_table(73) := 'green0\blue0;}{\*\defchp \f31506\fs22\lang22538\langfe1033\langfenp1033 }{\*\defpap '||wwv_flow.LF||
'\ql \li0\ri0\sa';
    wwv_flow_api.g_varchar2_table(74) := '160\sl259\slmult1\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 }\noqfpro';
    wwv_flow_api.g_varchar2_table(75) := 'mote {\stylesheet{\ql \li0\ri0\sa160\sl259\slmult1\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adju';
    wwv_flow_api.g_varchar2_table(76) := 'stright\rin0\lin0\itap0 \rtlch\fcs1 '||wwv_flow.LF||
'\af31507\afs22\alang1025 \ltrch\fcs0 \f31506\fs22\lang22538\lan';
    wwv_flow_api.g_varchar2_table(77) := 'gfe1033\cgrid\langnp22538\langfenp1033 \snext0 \sqformat \spriority0 Normal;}{\*\cs10 \additive \sse';
    wwv_flow_api.g_varchar2_table(78) := 'mihidden \sunhideused \spriority1 Default Paragraph Font;}{\*'||wwv_flow.LF||
'\ts11\tsrowd\trftsWidthB3\trpaddl108\t';
    wwv_flow_api.g_varchar2_table(79) := 'rpaddr108\trpaddfl3\trpaddft3\trpaddfb3\trpaddfr3\trcbpat1\trcfpat1\tblind0\tblindtype3\tsvertalt\ts';
    wwv_flow_api.g_varchar2_table(80) := 'brdrt\tsbrdrl\tsbrdrb\tsbrdrr\tsbrdrdgl\tsbrdrdgr\tsbrdrh\tsbrdrv \ql \li0\ri0\sa160\sl259\slmult1'||wwv_flow.LF||
'\';
    wwv_flow_api.g_varchar2_table(81) := 'widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af31507\afs22\';
    wwv_flow_api.g_varchar2_table(82) := 'alang1025 \ltrch\fcs0 \f31506\fs22\lang22538\langfe1033\cgrid\langnp22538\langfenp1033 \snext11 \sse';
    wwv_flow_api.g_varchar2_table(83) := 'mihidden \sunhideused Normal Table;}}'||wwv_flow.LF||
'{\*\rsidtbl \rsid1578461\rsid3683574\rsid7998649\rsid9592860}{';
    wwv_flow_api.g_varchar2_table(84) := '\mmathPr\mmathFont34\mbrkBin0\mbrkBinSub0\msmallFrac0\mdispDef1\mlMargin0\mrMargin0\mdefJc1\mwrapInd';
    wwv_flow_api.g_varchar2_table(85) := 'ent1440\mintLim0\mnaryLim1}{\info{\author Francisco Perez H}{\operator Francisco Perez H}'||wwv_flow.LF||
'{\creatim\';
    wwv_flow_api.g_varchar2_table(86) := 'yr2022\mo9\dy20\hr9\min17}{\revtim\yr2022\mo9\dy20\hr9\min18}{\version1}{\edmins1}{\nofpages1}{\nofw';
    wwv_flow_api.g_varchar2_table(87) := 'ords3}{\nofchars19}{\nofcharsws21}{\vern57}}{\*\xmlnstbl {\xmlns1 http://schemas.microsoft.com/offic';
    wwv_flow_api.g_varchar2_table(88) := 'e/word/2003/wordml}}'||wwv_flow.LF||
'\paperw11906\paperh16838\margl1701\margr1701\margt1417\margb1417\gutter0\ltrsec';
    wwv_flow_api.g_varchar2_table(89) := 't '||wwv_flow.LF||
'\deftab708\widowctrl\ftnbj\aenddoc\hyphhotz425\trackmoves0\trackformatting1\donotembedsysfont1\re';
    wwv_flow_api.g_varchar2_table(90) := 'lyonvml0\donotembedlingdata0\grfdocevents0\validatexml1\showplaceholdtext0\ignoremixedcontent0\savei';
    wwv_flow_api.g_varchar2_table(91) := 'nvalidxml0'||wwv_flow.LF||
'\showxmlerrors1\noxlattoyen\expshrtn\noultrlspc\dntblnsbdb\nospaceforul\formshade\horzdoc';
    wwv_flow_api.g_varchar2_table(92) := '\dgmargin\dghspace180\dgvspace180\dghorigin1701\dgvorigin1417\dghshow1\dgvshow1'||wwv_flow.LF||
'\jexpand\viewkind1\v';
    wwv_flow_api.g_varchar2_table(93) := 'iewscale154\pgbrdrhead\pgbrdrfoot\splytwnine\ftnlytwnine\htmautsp\nolnhtadjtbl\useltbaln\alntblind\l';
    wwv_flow_api.g_varchar2_table(94) := 'ytcalctblwd\lyttblrtgr\lnbrkrule\nobrkwrptbl\snaptogridincell\allowfieldendsel\wrppunct'||wwv_flow.LF||
'\asianbrkrul';
    wwv_flow_api.g_varchar2_table(95) := 'e\rsidroot7998649\newtblstyruls\nogrowautofit\usenormstyforlist\noindnmbrts\felnbrelev\nocxsptable\i';
    wwv_flow_api.g_varchar2_table(96) := 'ndrlsweleven\noafcnsttbl\afelev\utinl\hwelev\spltpgpar\notcvasp\notbrkcnstfrctbl\notvatxbx\krnprsnet';
    wwv_flow_api.g_varchar2_table(97) := '\cachedcolbal \nouicompat \fet0'||wwv_flow.LF||
'{\*\wgrffmtfilter 2450}\nofeaturethrottle1\ilfomacatclnup0{\*\docvar';
    wwv_flow_api.g_varchar2_table(98) := ' {xdo0001}{PD9TWVNEQVRFPz4=}}\ltrpar \sectd \ltrsect\linex0\headery708\footery708\colsx708\endnhere\';
    wwv_flow_api.g_varchar2_table(99) := 'sectlinegrid360\sectdefaultcl\sftnbj {\*\pnseclvl1\pnucrm\pnstart1\pnindent720\pnhang '||wwv_flow.LF||
'{\pntxta .}}{';
    wwv_flow_api.g_varchar2_table(100) := '\*\pnseclvl2\pnucltr\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl3\pndec\pnstart1\pnindent72';
    wwv_flow_api.g_varchar2_table(101) := '0\pnhang {\pntxta .}}{\*\pnseclvl4\pnlcltr\pnstart1\pnindent720\pnhang {\pntxta )}}{\*\pnseclvl5\pnd';
    wwv_flow_api.g_varchar2_table(102) := 'ec\pnstart1\pnindent720\pnhang {\pntxtb (}'||wwv_flow.LF||
'{\pntxta )}}{\*\pnseclvl6\pnlcltr\pnstart1\pnindent720\pn';
    wwv_flow_api.g_varchar2_table(103) := 'hang {\pntxtb (}{\pntxta )}}{\*\pnseclvl7\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}';
    wwv_flow_api.g_varchar2_table(104) := '{\*\pnseclvl8\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl9'||wwv_flow.LF||
'\pnlcrm\pnsta';
    wwv_flow_api.g_varchar2_table(105) := 'rt1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}\pard\plain \ltrpar\ql \li0\ri0\sa160\sl259\slmult1\wi';
    wwv_flow_api.g_varchar2_table(106) := 'dctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af31507\afs22\al';
    wwv_flow_api.g_varchar2_table(107) := 'ang1025 \ltrch\fcs0 '||wwv_flow.LF||
'\f31506\fs22\lang22538\langfe1033\cgrid\langnp22538\langfenp1033 {\field\flddir';
    wwv_flow_api.g_varchar2_table(108) := 'ty{\*\fldinst {\rtlch\fcs1 \af31507 \ltrch\fcs0 \insrsid7998649\charrsid7998649 {\*\bkmkstart Texto1';
    wwv_flow_api.g_varchar2_table(109) := '} FORMTEXT }{\rtlch\fcs1 \af31507 \ltrch\fcs0 '||wwv_flow.LF||
'\insrsid7998649\charrsid7998649 {\*\datafield 8001000';
    wwv_flow_api.g_varchar2_table(110) := '00000000006546578746f3100075359534441544500000000000f3c3f7265663a78646f303030313f3e0000000000}{\*\fo';
    wwv_flow_api.g_varchar2_table(111) := 'rmfield{\fftype0\ffownhelp\ffownstat\fftypetxt0{\*\ffname Texto1}{\*\ffdeftext SYSDATE}{\*\ffstattex';
    wwv_flow_api.g_varchar2_table(112) := 't '||wwv_flow.LF||
'<?ref:xdo0001?>}}}}}{\fldrslt {\rtlch\fcs1 \af31507 \ltrch\fcs0 \lang1024\langfe1024\noproof\insr';
    wwv_flow_api.g_varchar2_table(113) := 'sid7998649\charrsid7998649 SYSDATE}}}\sectd \ltrsect\linex0\headery708\footery708\colsx708\endnhere\';
    wwv_flow_api.g_varchar2_table(114) := 'sectlinegrid360\sectdefaultcl\sftnbj {\rtlch\fcs1 '||wwv_flow.LF||
'\af31507 \ltrch\fcs0 \insrsid1578461 {\*\bkmkend ';
    wwv_flow_api.g_varchar2_table(115) := 'Texto1}'||wwv_flow.LF||
'\par }{\*\themedata 504b030414000600080000002100e9de0fbfff0000001c020000130000005b436f6e7465';
    wwv_flow_api.g_varchar2_table(116) := '6e745f54797065735d2e786d6cac91cb4ec3301045f748fc83e52d4a'||wwv_flow.LF||
'9cb2400825e982c78ec7a27cc0c8992416c9d8b2a75';
    wwv_flow_api.g_varchar2_table(117) := '5fbf74cd25442a820166c2cd933f79e3be372bd1f07b5c3989ca74aaff2422b24eb1b475da5df374fd9ad'||wwv_flow.LF||
'5689811a183c61';
    wwv_flow_api.g_varchar2_table(118) := 'a50f98f4babebc2837878049899a52a57be670674cb23d8e90721f90a4d2fa3802cb35762680fd800ecd7551dc18eb899138';
    wwv_flow_api.g_varchar2_table(119) := 'e3c943d7e503b6'||wwv_flow.LF||
'b01d583deee5f99824e290b4ba3f364eac4a430883b3c092d4eca8f946c916422ecab927f52ea42b89a1c';
    wwv_flow_api.g_varchar2_table(120) := 'd59c254f919b0e85e6535d135a8de20f20b8c12c3b0'||wwv_flow.LF||
'0c895fcf6720192de6bf3b9e89ecdbd6596cbcdd8eb28e7c365ecc4e';
    wwv_flow_api.g_varchar2_table(121) := 'c1ff1460f53fe813d3cc7f5b7f020000ffff0300504b030414000600080000002100a5d6'||wwv_flow.LF||
'a7e7c0000000360100000b00000';
    wwv_flow_api.g_varchar2_table(122) := '05f72656c732f2e72656c73848fcf6ac3300c87ef85bd83d17d51d2c31825762fa590432fa37d00e1287f68221bdb1bebdb4';
    wwv_flow_api.g_varchar2_table(123) := 'f'||wwv_flow.LF||
'c7060abb0884a4eff7a93dfeae8bf9e194e720169aaa06c3e2433fcb68e1763dbf7f82c985a4a725085b787086a37bdbb5';
    wwv_flow_api.g_varchar2_table(124) := '5fbc50d1a33ccd311ba548b6309512'||wwv_flow.LF||
'0f88d94fbc52ae4264d1c910d24a45db3462247fa791715fd71f989e19e0364cd3f51';
    wwv_flow_api.g_varchar2_table(125) := '652d73760ae8fa8c9ffb3c330cc9e4fc17faf2ce545046e37944c69e462'||wwv_flow.LF||
'a1a82fe353bd90a865aad41ed0b5b8f9d6fd0100';
    wwv_flow_api.g_varchar2_table(126) := '00ffff0300504b0304140006000800000021006b799616830000008a0000001c0000007468656d652f746865'||wwv_flow.LF||
'6d652f74686';
    wwv_flow_api.g_varchar2_table(127) := '56d654d616e616765722e786d6c0ccc4d0ac3201040e17da17790d93763bb284562b2cbaebbf600439c1a41c7a0d29fdbd7e';
    wwv_flow_api.g_varchar2_table(128) := '5e38337cedf14d59b'||wwv_flow.LF||
'4b0d592c9c070d8a65cd2e88b7f07c2ca71ba8da481cc52c6ce1c715e6e97818c9b48d13df49c87351';
    wwv_flow_api.g_varchar2_table(129) := '7d23d59085adb5dd20d6b52bd521ef2cdd5eb9246a3d8b'||wwv_flow.LF||
'4757e8d3f729e245eb2b260a0238fd010000ffff0300504b03041';
    wwv_flow_api.g_varchar2_table(130) := '4000600080000002100a7259ef29c070000cb200000160000007468656d652f7468656d652f'||wwv_flow.LF||
'7468656d65312e786d6cec59';
    wwv_flow_api.g_varchar2_table(131) := 'cd8b1bc915bf07f23f347d97f5d5ad8fc1f2a24fcfda33b6b164873dd648a5eef2547789aad28cc56208de532e81c026e490';
    wwv_flow_api.g_varchar2_table(132) := '85bd'||wwv_flow.LF||
'ed21842cecc22eb9e48f31d8249b3f22afaa5bdd5552c99e191c3061463074977eefd5afde7bf5de53d5ddcf5e26d4b';
    wwv_flow_api.g_varchar2_table(133) := 'bc05c1096f6fcfa9d9aefe174ce16248d'||wwv_flow.LF||
'7afeb3d9a4d2f13d2151ba4094a5b8e76fb0f03fbbf7eb5fdd454732c609f6403e';
    wwv_flow_api.g_varchar2_table(134) := '1547a8e7c752ae8eaa5531876124eeb0154ee1bb25e30992f0caa3ea82a34b'||wwv_flow.LF||
'd09bd06aa3566b55134452df4b51026a6720e';
    wwv_flow_api.g_varchar2_table(135) := '32db0f778b92473ecdfdbaa1f53982395420dcc299f2ae5389731b08bf3ba42888d1852ee5d20daf361a605bb9c'||wwv_flow.LF||
'e197d2f7';
    wwv_flow_api.g_varchar2_table(136) := '281212bee8f935fde757efddada2a35c88ca03b286dc44ffe572b9c0e2bca1e7e4d1593169108441ab5fe8d7002af771e3f6';
    wwv_flow_api.g_varchar2_table(137) := 'b8356e15fa3400cde7b0'||wwv_flow.LF||
'd28c8badb3dd180639d600658f0edda3f6a859b7f086fee61ee77ea83e165e8332fdc11e7e32198';
    wwv_flow_api.g_varchar2_table(138) := '2152dbc0665f8700f1f0eba8391ad5f83327c6b0fdfaef547'||wwv_flow.LF||
'41dbd2af413125e9f91eba16b69ac3ed6a0bc892d16327bc1b';
    wwv_flow_api.g_varchar2_table(139) := '06937623575ea2201a8ae852532c592a0fc55a825e303e018002522449eac9cd0a2fd11ce27888'||wwv_flow.LF||
'2839e3c43b21510c81b74';
    wwv_flow_api.g_varchar2_table(140) := '22913305c6bd426b526fc579f403f698fa2238c0c69c50b9888bd21c5c713734e56b2e73f00adbe0179fbf3cf6f5efff8e6f';
    wwv_flow_api.g_varchar2_table(141) := '54f6fbe'||wwv_flow.LF||
'faeacdebbfe7736b5596dc314a2353ee97effef09f6f7eebfdfb876f7ff9fa8fd9d4bb7861e2dffded77effef1cf';
    wwv_flow_api.g_varchar2_table(142) := 'f7a9871597a678fba7efdffdf8fddb3ffffe'||wwv_flow.LF||
'5f7ffddaa1bdcfd199099f91040bef11bef49eb20416e8e08fcff8f52466312';
    wwv_flow_api.g_varchar2_table(143) := '2a6443f8d044a919ac5a17f2c630bfd68832872e006d8b6e3730ea9c605bcbf7e'||wwv_flow.LF||
'61119ec67c2d8943e3c338b180a78cd101';
    wwv_flow_api.g_varchar2_table(144) := 'e34e2b3c547319669eadd3c83d395f9bb8a7085db8e61ea2d4f2f278bd821c4b5c2a8731b6683ea1289528c229969e'||wwv_flow.LF||
'fa8e9';
    wwv_flow_api.g_varchar2_table(145) := 'd63ec58dd178458763d2573ce045b4aef0be20d10719a6446ceac682a858e49027ed9b80882bf2ddb9c3ef7068cba563dc21';
    wwv_flow_api.g_varchar2_table(146) := '73612f606a20ef2334c2d33'||wwv_flow.LF||
'de476b891297ca194aa869f013246317c9e986cf4ddc5848f0748429f3c60b2c844be63187f5';
    wwv_flow_api.g_varchar2_table(147) := '1a4e7f0869c6edf653ba496c2497e4dca5f30431662247ec7c18'||wwv_flow.LF||
'a364e5c24e491a9bd8cfc5398428f29e30e9829f327b87a';
    wwv_flow_api.g_varchar2_table(148) := '877f0034a0fbafb39c196bb3f9c0d9e418635299501a2be5973872fef6366c5ef74439708bb524d9f'||wwv_flow.LF||
'27568aed73e28c8ec1';
    wwv_flow_api.g_varchar2_table(149) := '3ab242fb04638a2ed10263efd9e70e0603b6b26c5e927e10435639c6aec07a80ec5855ef2916d8d3cdcd7e9e3c21c20ad929';
    wwv_flow_api.g_varchar2_table(150) := '8ed8013ea7'||wwv_flow.LF||
'9b9dc4b3416982f821cd8fc0eba6cdc750ea1257003ca6f37313f888401708f1e234ca63013a8ce03ea8f5498';
    wwv_flow_api.g_varchar2_table(151) := 'cac02a6de853b5e37dcf2df55f618eccb17168d'||wwv_flow.LF||
'2bec4b90c1d79681c46ecabcd7363344ad09ca809921e8325ce916442cf7';
    wwv_flow_api.g_varchar2_table(152) := '9722aab86ab1b5536e696fdad20dd01d594d4f42d20f76403bbd4ff8bfeb7da0c378'||wwv_flow.LF||
'fb976f1c9bede3f43b6ec556b2ba66a';
    wwv_flow_api.g_varchar2_table(153) := '77328991ceff4378770bb5dcd90f105f9f49b9a115aa74f30d491fd8c75dbd3dcf634feff7d4f73683fdf763287fa8ddb'||wwv_flow.LF||
'4e';
    wwv_flow_api.g_varchar2_table(154) := 'c6870ee3b693c90f573e4e2753362fd0d7a8038feca0471ffb24074f7d9684d2a9dc507c22f4c18f80df338b090c2a397de6';
    wwv_flow_api.g_varchar2_table(155) := '898b53c0550c8faaccc104162e'||wwv_flow.LF||
'e248cb789cc9df10194f63b482d3a1baaf944422571d096fc5041c1ae961a76e85a7ebe49';
    wwv_flow_api.g_varchar2_table(156) := '42db2c3ce7a5d1d6c66955520598ed7c2621c0eaa64866eb5cb03bc'||wwv_flow.LF||
'42bd661be983d62d01257b1d12c6643689a683447b3b';
    wwv_flow_api.g_varchar2_table(157) := 'a88ca48f75c1680e127a651f8545d7c1a2a3d46f5db5c702a8155e811fdc1efc4ceff96100222004e771'||wwv_flow.LF||
'd09c2f949f32576';
    wwv_flow_api.g_varchar2_table(158) := 'fbdab9df9313d7dc89856044083bd8d80d2d35dc5f5e0f2d4eab250bb82a72d1246b8d924b46574832762f8199c47a71abd0';
    wwv_flow_api.g_varchar2_table(159) := 'a8debfaba5bba'||wwv_flow.LF||
'd4a2a74ca1e783d02a69b43bef6371535f83dc6e6ea0a9992968ea5df6fc5633849099a355cf5fc2a1313c';
    wwv_flow_api.g_varchar2_table(160) := '262b881da17e73211ac1ddcb5cf26cc3df24b3acb8'||wwv_flow.LF||
'902324e2cce03ae964d9202112738f92a4e7abe5176ea0a9ce219a5bb';
    wwv_flow_api.g_varchar2_table(161) := 'd0109e19325d785b4f2a99103a7db4ec6cb259e4bd3edc688b274f60a193ecb15ce6fb5'||wwv_flow.LF||
'f8cdc14a92adc1ddd37871e99dd1';
    wwv_flow_api.g_varchar2_table(162) := '357f8a20c4c2765d19704104dc1dd4336b2e085c861589ac8cbf9dc294a75df3364ac750368ee82a46794531937906d7a9bc';
    wwv_flow_api.g_varchar2_table(163) := ''||wwv_flow.LF||
'a0a3df0a1b186ff99ac1a08649f2427816a9026b1ad5aaa645d5c8381cacba1f1652963392665933adaca2aaa63b8b59336';
    wwv_flow_api.g_varchar2_table(164) := 'ccbc08e2d6f56e40d565b13434e33'||wwv_flow.LF||
'2b7c96ba77536e779beb76fa84a24a80c10bfb39aaee150a8241ad9ccca2a618efa761';
    wwv_flow_api.g_varchar2_table(165) := '95b3f351bb766c17f8016a57291246d66f6dd5eed8ada811cee960f046'||wwv_flow.LF||
'951fe476a3168696dbbe525b5adf9b9b17dbecec0';
    wwv_flow_api.g_varchar2_table(166) := '5248f1174b96b2a8576255c5b73040dd154f72459da802df252e65b039ebc35273dffcb5ad80f868d7058a9'||wwv_flow.LF||
'75c271256806';
    wwv_flow_api.g_varchar2_table(167) := 'b54a27ec372bfd306cd6c761bd361a345e41619171520fb33bfb095c60d04d7e73afc7f76eef93ed1dcd9d394baa4cdfca57';
    wwv_flow_api.g_varchar2_table(168) := '35717d7b5f6f58b7'||wwv_flow.LF||
'f7d94dbc375397f3be4720e97cd96a4cbacdeea055e936fb934a301a742add616b5019b586edd164340';
    wwv_flow_api.g_varchar2_table(169) := 'c3bddc92bdfbbd0e0a0df1c06ad71a7d2aa0f8795a055'||wwv_flow.LF||
'53f43bdd4a3b6834fa41bbdf1907fd57791b032bcfd2476e0b30af';
    wwv_flow_api.g_varchar2_table(170) := 'e675efbf000000ffff0300504b0304140006000800000021000dd1909fb60000001b010000'||wwv_flow.LF||
'270000007468656d652f74686';
    wwv_flow_api.g_varchar2_table(171) := '56d652f5f72656c732f7468656d654d616e616765722e786d6c2e72656c73848f4d0ac2301484f78277086f6fd3ba109126d';
    wwv_flow_api.g_varchar2_table(172) := 'd88'||wwv_flow.LF||
'd0add40384e4350d363f2451eced0dae2c082e8761be9969bb979dc9136332de3168aa1a083ae995719ac16db8ec8e40';
    wwv_flow_api.g_varchar2_table(173) := '52164e89d93b64b060828e6f37ed1567'||wwv_flow.LF||
'914b284d262452282e3198720e274a939cd08a54f980ae38a38f56e422a3a641c8b';
    wwv_flow_api.g_varchar2_table(174) := 'bd048f7757da0f19b017cc524bd62107bd5001996509affb3fd381a89672f'||wwv_flow.LF||
'1f165dfe514173d9850528a2c6cce0239baa4c';
    wwv_flow_api.g_varchar2_table(175) := '04ca5bbabac4df000000ffff0300504b01022d0014000600080000002100e9de0fbfff0000001c020000130000'||wwv_flow.LF||
'000000000';
    wwv_flow_api.g_varchar2_table(176) := '0000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d0014000600080000002100a5d6a7e7c';
    wwv_flow_api.g_varchar2_table(177) := '0000000360100000b00'||wwv_flow.LF||
'000000000000000000000000300100005f72656c732f2e72656c73504b01022d0014000600080000';
    wwv_flow_api.g_varchar2_table(178) := '0021006b799616830000008a0000001c0000000000000000'||wwv_flow.LF||
'0000000000190200007468656d652f7468656d652f7468656d6';
    wwv_flow_api.g_varchar2_table(179) := '54d616e616765722e786d6c504b01022d0014000600080000002100a7259ef29c070000cb2000'||wwv_flow.LF||
'0016000000000000000000';
    wwv_flow_api.g_varchar2_table(180) := '00000000d60200007468656d652f7468656d652f7468656d65312e786d6c504b01022d00140006000800000021000dd1909f';
    wwv_flow_api.g_varchar2_table(181) := 'b60000'||wwv_flow.LF||
'001b0100002700000000000000000000000000a60a00007468656d652f7468656d652f5f72656c732f7468656d654';
    wwv_flow_api.g_varchar2_table(182) := 'd616e616765722e786d6c2e72656c73504b050600000000050005005d010000a10b00000000}'||wwv_flow.LF||
'{\*\colorschememapping ';
    wwv_flow_api.g_varchar2_table(183) := '3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d3822207374616e64616c6f6e653d2279';
    wwv_flow_api.g_varchar2_table(184) := '6573223f3e0d0a3c613a636c724d'||wwv_flow.LF||
'617020786d6c6e733a613d22687474703a2f2f736368656d61732e6f70656e786d6c666';
    wwv_flow_api.g_varchar2_table(185) := 'f726d6174732e6f72672f64726177696e676d6c2f323030362f6d6169'||wwv_flow.LF||
'6e22206267313d226c743122207478313d22646b31';
    wwv_flow_api.g_varchar2_table(186) := '22206267323d226c743222207478323d22646b322220616363656e74313d22616363656e74312220616363'||wwv_flow.LF||
'656e74323d226';
    wwv_flow_api.g_varchar2_table(187) := '16363656e74322220616363656e74333d22616363656e74332220616363656e74343d22616363656e74342220616363656e7';
    wwv_flow_api.g_varchar2_table(188) := '4353d22616363656e74352220616363656e74363d22616363656e74362220686c696e6b3d22686c696e6b2220666f6c486c6';
    wwv_flow_api.g_varchar2_table(189) := '96e6b3d22666f6c486c696e6b222f3e}'||wwv_flow.LF||
'{\*\latentstyles\lsdstimax376\lsdlockeddef0\lsdsemihiddendef0\lsdun';
    wwv_flow_api.g_varchar2_table(190) := 'hideuseddef0\lsdqformatdef0\lsdprioritydef99{\lsdlockedexcept \lsdqformat1 \lsdpriority0 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(191) := ' Normal;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 1;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqforma';
    wwv_flow_api.g_varchar2_table(192) := 't1 \lsdpriority9 \lsdlocked0 heading 2;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \l';
    wwv_flow_api.g_varchar2_table(193) := 'sdlocked0 heading 3;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 4';
    wwv_flow_api.g_varchar2_table(194) := ';'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 5;\lsdsemihidden1 \';
    wwv_flow_api.g_varchar2_table(195) := 'lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 6;\lsdsemihidden1 \lsdunhideused1 \lsd';
    wwv_flow_api.g_varchar2_table(196) := 'qformat1 \lsdpriority9 \lsdlocked0 heading 7;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdprior';
    wwv_flow_api.g_varchar2_table(197) := 'ity9 \lsdlocked0 heading 8;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority9 \lsdlocked0 he';
    wwv_flow_api.g_varchar2_table(198) := 'ading 9;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 1;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdloc';
    wwv_flow_api.g_varchar2_table(199) := 'ked0 index 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 3;\lsdsemihidden1 \lsdunhideused1 \ls';
    wwv_flow_api.g_varchar2_table(200) := 'dlocked0 index 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 5;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused';
    wwv_flow_api.g_varchar2_table(201) := '1 \lsdlocked0 index 6;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 7;\lsdsemihidden1 \lsdunhide';
    wwv_flow_api.g_varchar2_table(202) := 'used1 \lsdlocked0 index 8;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index 9;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdu';
    wwv_flow_api.g_varchar2_table(203) := 'nhideused1 \lsdpriority39 \lsdlocked0 toc 1;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocke';
    wwv_flow_api.g_varchar2_table(204) := 'd0 toc 2;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhid';
    wwv_flow_api.g_varchar2_table(205) := 'eused1 \lsdpriority39 \lsdlocked0 toc 4;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 t';
    wwv_flow_api.g_varchar2_table(206) := 'oc 5;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 6;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideuse';
    wwv_flow_api.g_varchar2_table(207) := 'd1 \lsdpriority39 \lsdlocked0 toc 7;\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 8';
    wwv_flow_api.g_varchar2_table(208) := ';\lsdsemihidden1 \lsdunhideused1 \lsdpriority39 \lsdlocked0 toc 9;\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(209) := 'sdlocked0 Normal Indent;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 footnote text;\lsdsemihidden1 \';
    wwv_flow_api.g_varchar2_table(210) := 'lsdunhideused1 \lsdlocked0 annotation text;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 header;\lsdse';
    wwv_flow_api.g_varchar2_table(211) := 'mihidden1 \lsdunhideused1 \lsdlocked0 footer;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 index head';
    wwv_flow_api.g_varchar2_table(212) := 'ing;\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority35 \lsdlocked0 caption;\lsdsemihidden1 ';
    wwv_flow_api.g_varchar2_table(213) := '\lsdunhideused1 \lsdlocked0 table of figures;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 envelope a';
    wwv_flow_api.g_varchar2_table(214) := 'ddress;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 envelope return;\lsdsemihidden1 \lsdunhideused1 \';
    wwv_flow_api.g_varchar2_table(215) := 'lsdlocked0 footnote reference;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 annotation reference;'||wwv_flow.LF||
'\lsd';
    wwv_flow_api.g_varchar2_table(216) := 'semihidden1 \lsdunhideused1 \lsdlocked0 line number;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 page';
    wwv_flow_api.g_varchar2_table(217) := ' number;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 endnote reference;\lsdsemihidden1 \lsdunhideused';
    wwv_flow_api.g_varchar2_table(218) := '1 \lsdlocked0 endnote text;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 table of authorities;\lsdsem';
    wwv_flow_api.g_varchar2_table(219) := 'ihidden1 \lsdunhideused1 \lsdlocked0 macro;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 toa heading;\';
    wwv_flow_api.g_varchar2_table(220) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Bu';
    wwv_flow_api.g_varchar2_table(221) := 'llet;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Number;\lsdsemihidden1 \lsdunhideused1 \lsdloc';
    wwv_flow_api.g_varchar2_table(222) := 'ked0 List 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsd';
    wwv_flow_api.g_varchar2_table(223) := 'locked0 List 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List 5;\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(224) := 'sdlocked0 List Bullet 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Bullet 3;'||wwv_flow.LF||
'\lsdsemihidden1 \';
    wwv_flow_api.g_varchar2_table(225) := 'lsdunhideused1 \lsdlocked0 List Bullet 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Bullet 5;\';
    wwv_flow_api.g_varchar2_table(226) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Number 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(227) := ' List Number 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Number 4;\lsdsemihidden1 \lsdunhide';
    wwv_flow_api.g_varchar2_table(228) := 'used1 \lsdlocked0 List Number 5;\lsdqformat1 \lsdpriority10 \lsdlocked0 Title;\lsdsemihidden1 \lsdun';
    wwv_flow_api.g_varchar2_table(229) := 'hideused1 \lsdlocked0 Closing;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Signature;\lsdsemihidden1';
    wwv_flow_api.g_varchar2_table(230) := ' \lsdunhideused1 \lsdpriority1 \lsdlocked0 Default Paragraph Font;\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(231) := 'sdlocked0 Body Text;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Text Indent;'||wwv_flow.LF||
'\lsdsemihidden1 \l';
    wwv_flow_api.g_varchar2_table(232) := 'sdunhideused1 \lsdlocked0 List Continue;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Continue 2;';
    wwv_flow_api.g_varchar2_table(233) := '\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Continue 3;\lsdsemihidden1 \lsdunhideused1 \lsdlock';
    wwv_flow_api.g_varchar2_table(234) := 'ed0 List Continue 4;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 List Continue 5;\lsdsemihidden1 \ls';
    wwv_flow_api.g_varchar2_table(235) := 'dunhideused1 \lsdlocked0 Message Header;\lsdqformat1 \lsdpriority11 \lsdlocked0 Subtitle;\lsdsemihid';
    wwv_flow_api.g_varchar2_table(236) := 'den1 \lsdunhideused1 \lsdlocked0 Salutation;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Date;\lsdse';
    wwv_flow_api.g_varchar2_table(237) := 'mihidden1 \lsdunhideused1 \lsdlocked0 Body Text First Indent;\lsdsemihidden1 \lsdunhideused1 \lsdloc';
    wwv_flow_api.g_varchar2_table(238) := 'ked0 Body Text First Indent 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Note Heading;'||wwv_flow.LF||
'\lsdsemihidd';
    wwv_flow_api.g_varchar2_table(239) := 'en1 \lsdunhideused1 \lsdlocked0 Body Text 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Text 3;';
    wwv_flow_api.g_varchar2_table(240) := '\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Body Text Indent 2;\lsdsemihidden1 \lsdunhideused1 \lsdl';
    wwv_flow_api.g_varchar2_table(241) := 'ocked0 Body Text Indent 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Block Text;\lsdsemihidden1 \l';
    wwv_flow_api.g_varchar2_table(242) := 'sdunhideused1 \lsdlocked0 Hyperlink;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 FollowedHyperlink;\l';
    wwv_flow_api.g_varchar2_table(243) := 'sdqformat1 \lsdpriority22 \lsdlocked0 Strong;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority20 \lsdlocked0 Emphasis;\lsds';
    wwv_flow_api.g_varchar2_table(244) := 'emihidden1 \lsdunhideused1 \lsdlocked0 Document Map;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Plai';
    wwv_flow_api.g_varchar2_table(245) := 'n Text;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 E-mail Signature;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1';
    wwv_flow_api.g_varchar2_table(246) := ' \lsdlocked0 HTML Top of Form;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Bottom of Form;\lsdse';
    wwv_flow_api.g_varchar2_table(247) := 'mihidden1 \lsdunhideused1 \lsdlocked0 Normal (Web);\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML ';
    wwv_flow_api.g_varchar2_table(248) := 'Acronym;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Address;\lsdsemihidden1 \lsdunhideused1 \l';
    wwv_flow_api.g_varchar2_table(249) := 'sdlocked0 HTML Cite;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Code;\lsdsemihidden1 \lsdunhide';
    wwv_flow_api.g_varchar2_table(250) := 'used1 \lsdlocked0 HTML Definition;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Keyboard;\lsdsem';
    wwv_flow_api.g_varchar2_table(251) := 'ihidden1 \lsdunhideused1 \lsdlocked0 HTML Preformatted;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 H';
    wwv_flow_api.g_varchar2_table(252) := 'TML Sample;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 HTML Typewriter;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideus';
    wwv_flow_api.g_varchar2_table(253) := 'ed1 \lsdlocked0 HTML Variable;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Normal Table;\lsdsemihidde';
    wwv_flow_api.g_varchar2_table(254) := 'n1 \lsdunhideused1 \lsdlocked0 annotation subject;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 No Lis';
    wwv_flow_api.g_varchar2_table(255) := 't;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Outline List 1;\lsdsemihidden1 \lsdunhideused1 \lsdlo';
    wwv_flow_api.g_varchar2_table(256) := 'cked0 Outline List 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Outline List 3;\lsdsemihidden1 \lsd';
    wwv_flow_api.g_varchar2_table(257) := 'unhideused1 \lsdlocked0 Table Simple 1;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Simple 2;\';
    wwv_flow_api.g_varchar2_table(258) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Simple 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked';
    wwv_flow_api.g_varchar2_table(259) := '0 Table Classic 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Classic 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdu';
    wwv_flow_api.g_varchar2_table(260) := 'nhideused1 \lsdlocked0 Table Classic 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Classic 4;\';
    wwv_flow_api.g_varchar2_table(261) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Colorful 1;\lsdsemihidden1 \lsdunhideused1 \lsdlock';
    wwv_flow_api.g_varchar2_table(262) := 'ed0 Table Colorful 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Colorful 3;\lsdsemihidden1 \';
    wwv_flow_api.g_varchar2_table(263) := 'lsdunhideused1 \lsdlocked0 Table Columns 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Columns';
    wwv_flow_api.g_varchar2_table(264) := ' 2;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Columns 3;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsd';
    wwv_flow_api.g_varchar2_table(265) := 'locked0 Table Columns 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Columns 5;\lsdsemihidden1 ';
    wwv_flow_api.g_varchar2_table(266) := '\lsdunhideused1 \lsdlocked0 Table Grid 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 2;'||wwv_flow.LF||
'\';
    wwv_flow_api.g_varchar2_table(267) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 ';
    wwv_flow_api.g_varchar2_table(268) := 'Table Grid 4;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 5;\lsdsemihidden1 \lsdunhideused';
    wwv_flow_api.g_varchar2_table(269) := '1 \lsdlocked0 Table Grid 6;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Grid 7;\lsdsemihidden1';
    wwv_flow_api.g_varchar2_table(270) := ' \lsdunhideused1 \lsdlocked0 Table Grid 8;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 1;\';
    wwv_flow_api.g_varchar2_table(271) := 'lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(272) := ' Table List 3;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 4;\lsdsemihidden1 \lsdunhideuse';
    wwv_flow_api.g_varchar2_table(273) := 'd1 \lsdlocked0 Table List 5;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 6;'||wwv_flow.LF||
'\lsdsemihidden';
    wwv_flow_api.g_varchar2_table(274) := '1 \lsdunhideused1 \lsdlocked0 Table List 7;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table List 8;';
    wwv_flow_api.g_varchar2_table(275) := '\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table 3D effects 1;\lsdsemihidden1 \lsdunhideused1 \lsdl';
    wwv_flow_api.g_varchar2_table(276) := 'ocked0 Table 3D effects 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table 3D effects 3;\lsdsemihi';
    wwv_flow_api.g_varchar2_table(277) := 'dden1 \lsdunhideused1 \lsdlocked0 Table Contemporary;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Tab';
    wwv_flow_api.g_varchar2_table(278) := 'le Elegant;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Professional;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhid';
    wwv_flow_api.g_varchar2_table(279) := 'eused1 \lsdlocked0 Table Subtle 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Subtle 2;\lsdsem';
    wwv_flow_api.g_varchar2_table(280) := 'ihidden1 \lsdunhideused1 \lsdlocked0 Table Web 1;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table W';
    wwv_flow_api.g_varchar2_table(281) := 'eb 2;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Table Web 3;\lsdsemihidden1 \lsdunhideused1 \lsdlo';
    wwv_flow_api.g_varchar2_table(282) := 'cked0 Balloon Text;\lsdpriority39 \lsdlocked0 Table Grid;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(283) := ' Table Theme;\lsdsemihidden1 \lsdlocked0 Placeholder Text;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority1 \lsdlocked0 No';
    wwv_flow_api.g_varchar2_table(284) := ' Spacing;\lsdpriority60 \lsdlocked0 Light Shading;\lsdpriority61 \lsdlocked0 Light List;\lsdpriority';
    wwv_flow_api.g_varchar2_table(285) := '62 \lsdlocked0 Light Grid;\lsdpriority63 \lsdlocked0 Medium Shading 1;\lsdpriority64 \lsdlocked0 Med';
    wwv_flow_api.g_varchar2_table(286) := 'ium Shading 2;'||wwv_flow.LF||
'\lsdpriority65 \lsdlocked0 Medium List 1;\lsdpriority66 \lsdlocked0 Medium List 2;\ls';
    wwv_flow_api.g_varchar2_table(287) := 'dpriority67 \lsdlocked0 Medium Grid 1;\lsdpriority68 \lsdlocked0 Medium Grid 2;\lsdpriority69 \lsdlo';
    wwv_flow_api.g_varchar2_table(288) := 'cked0 Medium Grid 3;\lsdpriority70 \lsdlocked0 Dark List;'||wwv_flow.LF||
'\lsdpriority71 \lsdlocked0 Colorful Shadin';
    wwv_flow_api.g_varchar2_table(289) := 'g;\lsdpriority72 \lsdlocked0 Colorful List;\lsdpriority73 \lsdlocked0 Colorful Grid;\lsdpriority60 \';
    wwv_flow_api.g_varchar2_table(290) := 'lsdlocked0 Light Shading Accent 1;\lsdpriority61 \lsdlocked0 Light List Accent 1;'||wwv_flow.LF||
'\lsdpriority62 \ls';
    wwv_flow_api.g_varchar2_table(291) := 'dlocked0 Light Grid Accent 1;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 1;\lsdpriority64 \ls';
    wwv_flow_api.g_varchar2_table(292) := 'dlocked0 Medium Shading 2 Accent 1;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 1;\lsdsemihidden1';
    wwv_flow_api.g_varchar2_table(293) := ' \lsdlocked0 Revision;'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority34 \lsdlocked0 List Paragraph;\lsdqformat1 \lsdprior';
    wwv_flow_api.g_varchar2_table(294) := 'ity29 \lsdlocked0 Quote;\lsdqformat1 \lsdpriority30 \lsdlocked0 Intense Quote;\lsdpriority66 \lsdloc';
    wwv_flow_api.g_varchar2_table(295) := 'ked0 Medium List 2 Accent 1;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 1;'||wwv_flow.LF||
'\lsdpriority68 \lsdlo';
    wwv_flow_api.g_varchar2_table(296) := 'cked0 Medium Grid 2 Accent 1;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 1;\lsdpriority70 \lsdlo';
    wwv_flow_api.g_varchar2_table(297) := 'cked0 Dark List Accent 1;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 1;\lsdpriority72 \lsdloc';
    wwv_flow_api.g_varchar2_table(298) := 'ked0 Colorful List Accent 1;'||wwv_flow.LF||
'\lsdpriority73 \lsdlocked0 Colorful Grid Accent 1;\lsdpriority60 \lsdlo';
    wwv_flow_api.g_varchar2_table(299) := 'cked0 Light Shading Accent 2;\lsdpriority61 \lsdlocked0 Light List Accent 2;\lsdpriority62 \lsdlocke';
    wwv_flow_api.g_varchar2_table(300) := 'd0 Light Grid Accent 2;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 2;'||wwv_flow.LF||
'\lsdpriority64 \lsdlock';
    wwv_flow_api.g_varchar2_table(301) := 'ed0 Medium Shading 2 Accent 2;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 2;\lsdpriority66 \lsdl';
    wwv_flow_api.g_varchar2_table(302) := 'ocked0 Medium List 2 Accent 2;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 2;\lsdpriority68 \lsdl';
    wwv_flow_api.g_varchar2_table(303) := 'ocked0 Medium Grid 2 Accent 2;'||wwv_flow.LF||
'\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 2;\lsdpriority70 \lsd';
    wwv_flow_api.g_varchar2_table(304) := 'locked0 Dark List Accent 2;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 2;\lsdpriority72 \lsdl';
    wwv_flow_api.g_varchar2_table(305) := 'ocked0 Colorful List Accent 2;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 2;'||wwv_flow.LF||
'\lsdpriority60 \lsd';
    wwv_flow_api.g_varchar2_table(306) := 'locked0 Light Shading Accent 3;\lsdpriority61 \lsdlocked0 Light List Accent 3;\lsdpriority62 \lsdloc';
    wwv_flow_api.g_varchar2_table(307) := 'ked0 Light Grid Accent 3;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 3;\lsdpriority64 \lsdloc';
    wwv_flow_api.g_varchar2_table(308) := 'ked0 Medium Shading 2 Accent 3;'||wwv_flow.LF||
'\lsdpriority65 \lsdlocked0 Medium List 1 Accent 3;\lsdpriority66 \ls';
    wwv_flow_api.g_varchar2_table(309) := 'dlocked0 Medium List 2 Accent 3;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 3;\lsdpriority68 \ls';
    wwv_flow_api.g_varchar2_table(310) := 'dlocked0 Medium Grid 2 Accent 3;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 3;'||wwv_flow.LF||
'\lsdpriority70 \l';
    wwv_flow_api.g_varchar2_table(311) := 'sdlocked0 Dark List Accent 3;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 3;\lsdpriority72 \ls';
    wwv_flow_api.g_varchar2_table(312) := 'dlocked0 Colorful List Accent 3;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 3;\lsdpriority60 \ls';
    wwv_flow_api.g_varchar2_table(313) := 'dlocked0 Light Shading Accent 4;'||wwv_flow.LF||
'\lsdpriority61 \lsdlocked0 Light List Accent 4;\lsdpriority62 \lsdl';
    wwv_flow_api.g_varchar2_table(314) := 'ocked0 Light Grid Accent 4;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 4;\lsdpriority64 \lsdl';
    wwv_flow_api.g_varchar2_table(315) := 'ocked0 Medium Shading 2 Accent 4;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 4;'||wwv_flow.LF||
'\lsdpriority66 \';
    wwv_flow_api.g_varchar2_table(316) := 'lsdlocked0 Medium List 2 Accent 4;\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 4;\lsdpriority68 \';
    wwv_flow_api.g_varchar2_table(317) := 'lsdlocked0 Medium Grid 2 Accent 4;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 4;\lsdpriority70 \';
    wwv_flow_api.g_varchar2_table(318) := 'lsdlocked0 Dark List Accent 4;'||wwv_flow.LF||
'\lsdpriority71 \lsdlocked0 Colorful Shading Accent 4;\lsdpriority72 \';
    wwv_flow_api.g_varchar2_table(319) := 'lsdlocked0 Colorful List Accent 4;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 4;\lsdpriority60 \';
    wwv_flow_api.g_varchar2_table(320) := 'lsdlocked0 Light Shading Accent 5;\lsdpriority61 \lsdlocked0 Light List Accent 5;'||wwv_flow.LF||
'\lsdpriority62 \ls';
    wwv_flow_api.g_varchar2_table(321) := 'dlocked0 Light Grid Accent 5;\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 5;\lsdpriority64 \ls';
    wwv_flow_api.g_varchar2_table(322) := 'dlocked0 Medium Shading 2 Accent 5;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 5;\lsdpriority66 ';
    wwv_flow_api.g_varchar2_table(323) := '\lsdlocked0 Medium List 2 Accent 5;'||wwv_flow.LF||
'\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 5;\lsdpriority68';
    wwv_flow_api.g_varchar2_table(324) := ' \lsdlocked0 Medium Grid 2 Accent 5;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 5;\lsdpriority70';
    wwv_flow_api.g_varchar2_table(325) := ' \lsdlocked0 Dark List Accent 5;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 5;'||wwv_flow.LF||
'\lsdpriority72';
    wwv_flow_api.g_varchar2_table(326) := ' \lsdlocked0 Colorful List Accent 5;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 5;\lsdpriority60';
    wwv_flow_api.g_varchar2_table(327) := ' \lsdlocked0 Light Shading Accent 6;\lsdpriority61 \lsdlocked0 Light List Accent 6;\lsdpriority62 \l';
    wwv_flow_api.g_varchar2_table(328) := 'sdlocked0 Light Grid Accent 6;'||wwv_flow.LF||
'\lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 6;\lsdpriority64 \';
    wwv_flow_api.g_varchar2_table(329) := 'lsdlocked0 Medium Shading 2 Accent 6;\lsdpriority65 \lsdlocked0 Medium List 1 Accent 6;\lsdpriority6';
    wwv_flow_api.g_varchar2_table(330) := '6 \lsdlocked0 Medium List 2 Accent 6;'||wwv_flow.LF||
'\lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 6;\lsdpriority';
    wwv_flow_api.g_varchar2_table(331) := '68 \lsdlocked0 Medium Grid 2 Accent 6;\lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 6;\lsdpriority';
    wwv_flow_api.g_varchar2_table(332) := '70 \lsdlocked0 Dark List Accent 6;\lsdpriority71 \lsdlocked0 Colorful Shading Accent 6;'||wwv_flow.LF||
'\lsdpriority';
    wwv_flow_api.g_varchar2_table(333) := '72 \lsdlocked0 Colorful List Accent 6;\lsdpriority73 \lsdlocked0 Colorful Grid Accent 6;\lsdqformat1';
    wwv_flow_api.g_varchar2_table(334) := ' \lsdpriority19 \lsdlocked0 Subtle Emphasis;\lsdqformat1 \lsdpriority21 \lsdlocked0 Intense Emphasis';
    wwv_flow_api.g_varchar2_table(335) := ';'||wwv_flow.LF||
'\lsdqformat1 \lsdpriority31 \lsdlocked0 Subtle Reference;\lsdqformat1 \lsdpriority32 \lsdlocked0 I';
    wwv_flow_api.g_varchar2_table(336) := 'ntense Reference;\lsdqformat1 \lsdpriority33 \lsdlocked0 Book Title;\lsdsemihidden1 \lsdunhideused1 ';
    wwv_flow_api.g_varchar2_table(337) := '\lsdpriority37 \lsdlocked0 Bibliography;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdqformat1 \lsdpriority39';
    wwv_flow_api.g_varchar2_table(338) := ' \lsdlocked0 TOC Heading;\lsdpriority41 \lsdlocked0 Plain Table 1;\lsdpriority42 \lsdlocked0 Plain T';
    wwv_flow_api.g_varchar2_table(339) := 'able 2;\lsdpriority43 \lsdlocked0 Plain Table 3;\lsdpriority44 \lsdlocked0 Plain Table 4;'||wwv_flow.LF||
'\lsdpriori';
    wwv_flow_api.g_varchar2_table(340) := 'ty45 \lsdlocked0 Plain Table 5;\lsdpriority40 \lsdlocked0 Grid Table Light;\lsdpriority46 \lsdlocked';
    wwv_flow_api.g_varchar2_table(341) := '0 Grid Table 1 Light;\lsdpriority47 \lsdlocked0 Grid Table 2;\lsdpriority48 \lsdlocked0 Grid Table 3';
    wwv_flow_api.g_varchar2_table(342) := ';\lsdpriority49 \lsdlocked0 Grid Table 4;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 Grid Table 5 Dark;\lsdpriority5';
    wwv_flow_api.g_varchar2_table(343) := '1 \lsdlocked0 Grid Table 6 Colorful;\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful;\lsdpriority46 ';
    wwv_flow_api.g_varchar2_table(344) := '\lsdlocked0 Grid Table 1 Light Accent 1;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 1;'||wwv_flow.LF||
'\lsdpriori';
    wwv_flow_api.g_varchar2_table(345) := 'ty48 \lsdlocked0 Grid Table 3 Accent 1;\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 1;\lsdpriority';
    wwv_flow_api.g_varchar2_table(346) := '50 \lsdlocked0 Grid Table 5 Dark Accent 1;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 1;';
    wwv_flow_api.g_varchar2_table(347) := ''||wwv_flow.LF||
'\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful Accent 1;\lsdpriority46 \lsdlocked0 Grid Table 1 L';
    wwv_flow_api.g_varchar2_table(348) := 'ight Accent 2;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 2;\lsdpriority48 \lsdlocked0 Grid Table';
    wwv_flow_api.g_varchar2_table(349) := ' 3 Accent 2;'||wwv_flow.LF||
'\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 2;\lsdpriority50 \lsdlocked0 Grid Table ';
    wwv_flow_api.g_varchar2_table(350) := '5 Dark Accent 2;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 2;\lsdpriority52 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(351) := ' Grid Table 7 Colorful Accent 2;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 Grid Table 1 Light Accent 3;\lsdpriority';
    wwv_flow_api.g_varchar2_table(352) := '47 \lsdlocked0 Grid Table 2 Accent 3;\lsdpriority48 \lsdlocked0 Grid Table 3 Accent 3;\lsdpriority49';
    wwv_flow_api.g_varchar2_table(353) := ' \lsdlocked0 Grid Table 4 Accent 3;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 Grid Table 5 Dark Accent 3;\lsdpriori';
    wwv_flow_api.g_varchar2_table(354) := 'ty51 \lsdlocked0 Grid Table 6 Colorful Accent 3;\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful Acc';
    wwv_flow_api.g_varchar2_table(355) := 'ent 3;\lsdpriority46 \lsdlocked0 Grid Table 1 Light Accent 4;'||wwv_flow.LF||
'\lsdpriority47 \lsdlocked0 Grid Table ';
    wwv_flow_api.g_varchar2_table(356) := '2 Accent 4;\lsdpriority48 \lsdlocked0 Grid Table 3 Accent 4;\lsdpriority49 \lsdlocked0 Grid Table 4 ';
    wwv_flow_api.g_varchar2_table(357) := 'Accent 4;\lsdpriority50 \lsdlocked0 Grid Table 5 Dark Accent 4;'||wwv_flow.LF||
'\lsdpriority51 \lsdlocked0 Grid Tabl';
    wwv_flow_api.g_varchar2_table(358) := 'e 6 Colorful Accent 4;\lsdpriority52 \lsdlocked0 Grid Table 7 Colorful Accent 4;\lsdpriority46 \lsdl';
    wwv_flow_api.g_varchar2_table(359) := 'ocked0 Grid Table 1 Light Accent 5;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 5;'||wwv_flow.LF||
'\lsdpriority48 ';
    wwv_flow_api.g_varchar2_table(360) := '\lsdlocked0 Grid Table 3 Accent 5;\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 5;\lsdpriority50 \l';
    wwv_flow_api.g_varchar2_table(361) := 'sdlocked0 Grid Table 5 Dark Accent 5;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 5;'||wwv_flow.LF||
'\lsd';
    wwv_flow_api.g_varchar2_table(362) := 'priority52 \lsdlocked0 Grid Table 7 Colorful Accent 5;\lsdpriority46 \lsdlocked0 Grid Table 1 Light ';
    wwv_flow_api.g_varchar2_table(363) := 'Accent 6;\lsdpriority47 \lsdlocked0 Grid Table 2 Accent 6;\lsdpriority48 \lsdlocked0 Grid Table 3 Ac';
    wwv_flow_api.g_varchar2_table(364) := 'cent 6;'||wwv_flow.LF||
'\lsdpriority49 \lsdlocked0 Grid Table 4 Accent 6;\lsdpriority50 \lsdlocked0 Grid Table 5 Dar';
    wwv_flow_api.g_varchar2_table(365) := 'k Accent 6;\lsdpriority51 \lsdlocked0 Grid Table 6 Colorful Accent 6;\lsdpriority52 \lsdlocked0 Grid';
    wwv_flow_api.g_varchar2_table(366) := ' Table 7 Colorful Accent 6;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 List Table 1 Light;\lsdpriority47 \lsdlocked0';
    wwv_flow_api.g_varchar2_table(367) := ' List Table 2;\lsdpriority48 \lsdlocked0 List Table 3;\lsdpriority49 \lsdlocked0 List Table 4;\lsdpr';
    wwv_flow_api.g_varchar2_table(368) := 'iority50 \lsdlocked0 List Table 5 Dark;'||wwv_flow.LF||
'\lsdpriority51 \lsdlocked0 List Table 6 Colorful;\lsdpriorit';
    wwv_flow_api.g_varchar2_table(369) := 'y52 \lsdlocked0 List Table 7 Colorful;\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 1;\lsdpri';
    wwv_flow_api.g_varchar2_table(370) := 'ority47 \lsdlocked0 List Table 2 Accent 1;\lsdpriority48 \lsdlocked0 List Table 3 Accent 1;'||wwv_flow.LF||
'\lsdprio';
    wwv_flow_api.g_varchar2_table(371) := 'rity49 \lsdlocked0 List Table 4 Accent 1;\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 1;\lsdp';
    wwv_flow_api.g_varchar2_table(372) := 'riority51 \lsdlocked0 List Table 6 Colorful Accent 1;\lsdpriority52 \lsdlocked0 List Table 7 Colorfu';
    wwv_flow_api.g_varchar2_table(373) := 'l Accent 1;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 2;\lsdpriority47 \lsdlocked0 List T';
    wwv_flow_api.g_varchar2_table(374) := 'able 2 Accent 2;\lsdpriority48 \lsdlocked0 List Table 3 Accent 2;\lsdpriority49 \lsdlocked0 List Tab';
    wwv_flow_api.g_varchar2_table(375) := 'le 4 Accent 2;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 2;\lsdpriority51 \lsdlocked0 List';
    wwv_flow_api.g_varchar2_table(376) := ' Table 6 Colorful Accent 2;\lsdpriority52 \lsdlocked0 List Table 7 Colorful Accent 2;\lsdpriority46 ';
    wwv_flow_api.g_varchar2_table(377) := '\lsdlocked0 List Table 1 Light Accent 3;'||wwv_flow.LF||
'\lsdpriority47 \lsdlocked0 List Table 2 Accent 3;\lsdpriori';
    wwv_flow_api.g_varchar2_table(378) := 'ty48 \lsdlocked0 List Table 3 Accent 3;\lsdpriority49 \lsdlocked0 List Table 4 Accent 3;\lsdpriority';
    wwv_flow_api.g_varchar2_table(379) := '50 \lsdlocked0 List Table 5 Dark Accent 3;'||wwv_flow.LF||
'\lsdpriority51 \lsdlocked0 List Table 6 Colorful Accent 3';
    wwv_flow_api.g_varchar2_table(380) := ';\lsdpriority52 \lsdlocked0 List Table 7 Colorful Accent 3;\lsdpriority46 \lsdlocked0 List Table 1 L';
    wwv_flow_api.g_varchar2_table(381) := 'ight Accent 4;\lsdpriority47 \lsdlocked0 List Table 2 Accent 4;'||wwv_flow.LF||
'\lsdpriority48 \lsdlocked0 List Tabl';
    wwv_flow_api.g_varchar2_table(382) := 'e 3 Accent 4;\lsdpriority49 \lsdlocked0 List Table 4 Accent 4;\lsdpriority50 \lsdlocked0 List Table ';
    wwv_flow_api.g_varchar2_table(383) := '5 Dark Accent 4;\lsdpriority51 \lsdlocked0 List Table 6 Colorful Accent 4;'||wwv_flow.LF||
'\lsdpriority52 \lsdlocked';
    wwv_flow_api.g_varchar2_table(384) := '0 List Table 7 Colorful Accent 4;\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 5;\lsdpriority';
    wwv_flow_api.g_varchar2_table(385) := '47 \lsdlocked0 List Table 2 Accent 5;\lsdpriority48 \lsdlocked0 List Table 3 Accent 5;'||wwv_flow.LF||
'\lsdpriority4';
    wwv_flow_api.g_varchar2_table(386) := '9 \lsdlocked0 List Table 4 Accent 5;\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 5;\lsdpriori';
    wwv_flow_api.g_varchar2_table(387) := 'ty51 \lsdlocked0 List Table 6 Colorful Accent 5;\lsdpriority52 \lsdlocked0 List Table 7 Colorful Acc';
    wwv_flow_api.g_varchar2_table(388) := 'ent 5;'||wwv_flow.LF||
'\lsdpriority46 \lsdlocked0 List Table 1 Light Accent 6;\lsdpriority47 \lsdlocked0 List Table ';
    wwv_flow_api.g_varchar2_table(389) := '2 Accent 6;\lsdpriority48 \lsdlocked0 List Table 3 Accent 6;\lsdpriority49 \lsdlocked0 List Table 4 ';
    wwv_flow_api.g_varchar2_table(390) := 'Accent 6;'||wwv_flow.LF||
'\lsdpriority50 \lsdlocked0 List Table 5 Dark Accent 6;\lsdpriority51 \lsdlocked0 List Tabl';
    wwv_flow_api.g_varchar2_table(391) := 'e 6 Colorful Accent 6;\lsdpriority52 \lsdlocked0 List Table 7 Colorful Accent 6;\lsdsemihidden1 \lsd';
    wwv_flow_api.g_varchar2_table(392) := 'unhideused1 \lsdlocked0 Mention;'||wwv_flow.LF||
'\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Smart Hyperlink;\lsdsem';
    wwv_flow_api.g_varchar2_table(393) := 'ihidden1 \lsdunhideused1 \lsdlocked0 Hashtag;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Unresolved ';
    wwv_flow_api.g_varchar2_table(394) := 'Mention;\lsdsemihidden1 \lsdunhideused1 \lsdlocked0 Smart Link;}}{\*\datastore 01050000'||wwv_flow.LF||
'020000001800';
    wwv_flow_api.g_varchar2_table(395) := '00004d73786d6c322e534158584d4c5265616465722e362e3000000000000000000000060000'||wwv_flow.LF||
'd0cf11e0a1b11ae10000000';
    wwv_flow_api.g_varchar2_table(396) := '00000000000000000000000003e000300feff090006000000000000000000000001000000010000000000000000100000fef';
    wwv_flow_api.g_varchar2_table(397) := 'fffff00000000feffffff0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(398) := 'fffffffffffffffffffffffffffff'||wwv_flow.LF||
'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(399) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(400) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffffffffffffffff';
    wwv_flow_api.g_varchar2_table(401) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(402) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(403) := 'fffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(404) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(405) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffffffffff';
    wwv_flow_api.g_varchar2_table(406) := 'ffffffdfffffffefffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(407) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(408) := 'fffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(409) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(410) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'fffff';
    wwv_flow_api.g_varchar2_table(411) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(412) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(413) := 'fffffffffffffffffffffffffffffffffffffffffffffff'||wwv_flow.LF||
'ffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(414) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(415) := 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
    wwv_flow_api.g_varchar2_table(416) := ''||wwv_flow.LF||
'ffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(417) := '000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffffffffffff0c6ad98';
    wwv_flow_api.g_varchar2_table(418) := '892f1d411a65f0040963251e50000000000000000000000001052'||wwv_flow.LF||
'f076f3ccd801feffffff00000000000000000000000000';
    wwv_flow_api.g_varchar2_table(419) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(420) := '00000000000000000000000000ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(421) := '000000'||wwv_flow.LF||
'000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(422) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffff';
    wwv_flow_api.g_varchar2_table(423) := 'fffffff0000000000000000000000000000000000000000000000000000'||wwv_flow.LF||
'0000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(424) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(425) := '0000000000000000000000000000000000000000ffffffffffffffffffffffff000000000000000000000000000000000000';
    wwv_flow_api.g_varchar2_table(426) := '000000000000'||wwv_flow.LF||
'0000000000000000000000000000000000000000000000000105000000000000}}';
end;
/
begin
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(11625813861950771)
,p_report_layout_name=>'test'
,p_report_layout_type=>'XSL_FILE'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
);
null;
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(6986099592066212)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/item_type/ca_trevis_apex_ig_simple_checkbox
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(50150980605794276782)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'CA.TREVIS.APEX.IG_SIMPLE_CHECKBOX'
,p_display_name=>'IG Simple Checkbox'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPL_PAGE_IG_COLUMNS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','CA.TREVIS.APEX.IG_SIMPLE_CHECKBOX'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#js/ca_trevis_apex_ig_simple_checkbox.bundle.min.js'
,p_css_file_urls=>'#PLUGIN_FILES#css/ca_trevis_apex_ig_simple_checkbox.min.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--------------------------------------------------------------------------------',
'-- Render Procedure',
'--------------------------------------------------------------------------------',
'procedure render_ig_simple_checkbox (',
'  p_item   in            apex_plugin.t_item,',
'  p_plugin in            apex_plugin.t_plugin,',
'  p_param  in            apex_plugin.t_item_render_param,',
'  p_result in out nocopy apex_plugin.t_item_render_result',
')',
'is',
'  c_name            constant varchar2(30)    := apex_plugin.get_input_name_for_item;',
'  c_escaped_value   constant varchar2(32767) := apex_escape.html_attribute(p_param.value);',
'  c_checked_value   constant varchar2(32767) := nvl(p_item.attribute_01, 1);',
'  c_unchecked_value constant varchar2(32767) := nvl(p_item.attribute_02, 0);',
'begin',
'  if p_param.is_readonly or p_param.is_printer_friendly then',
'    apex_plugin_util.print_hidden_if_readonly (',
'      p_item_name           => p_item.name,',
'      p_value               => p_param.value,',
'      p_is_readonly         => p_param.is_readonly,',
'      p_is_printer_friendly => p_param.is_printer_friendly',
'    );',
'',
'    sys.htp.prn(',
'      apex_string.format(',
'        ''<input type="text" %s id="%s" value="%s"/>''',
'        , apex_plugin_util.get_element_attributes(p_item, p_item.name, ''apex-item-igsimplecheckbox apex-item-plugin'')',
'        , p_item.name|| ''_DISPLAY''',
'        , case when p_param.value is null then '''' else ltrim( rtrim ( c_escaped_value ) ) end',
'      )',
'    );',
'  else',
'    sys.htp.prn(',
'      apex_string.format(',
'        ''<input type="text" %s id="%s" value="%s"/>''',
'        , apex_plugin_util.get_element_attributes(p_item, c_name, ''apex-item-igsimplecheckbox apex-item-plugin'')',
'        , p_item.name',
'        , case when p_param.value is null then '''' else ltrim( rtrim ( c_escaped_value ) ) end',
'      )',
'    );',
'',
'    apex_javascript.add_onload_code (',
'      p_code => apex_string.format(',
'                  ''ca_trevis_apex_ig_simple_checkbox.init("%s", {readOnly: %s, checkedValue: "%s", uncheckedValue: "%s", isRequired: %s});''',
'                  , case when p_param.is_readonly or p_param.is_printer_friendly then p_item.name || ''_DISPLAY'' else p_item.name end',
'                  , case when p_param.is_readonly then ''true'' else ''false'' end',
'                  , c_checked_value',
'                  , c_unchecked_value',
'                  , case when p_item.is_required then ''true'' else ''false'' end',
'                )',
'    );',
'  end if;',
'',
'  p_result.is_navigable := (not p_param.is_readonly = false and not p_param.is_printer_friendly);',
'end render_ig_simple_checkbox;',
'',
'--------------------------------------------------------------------------------',
'-- Meta Data Procedure',
'--------------------------------------------------------------------------------',
'procedure metadata_ig_simple_checkbox (',
'  p_item   in            apex_plugin.t_item,',
'  p_plugin in            apex_plugin.t_plugin,',
'  p_param  in            apex_plugin.t_item_meta_data_param,',
'  p_result in out nocopy apex_plugin.t_item_meta_data_result )',
'is',
'begin',
'  p_result.escape_output := false;',
'end metadata_ig_simple_checkbox;',
'',
'--------------------------------------------------------------------------------',
'-- Validation Procedure',
'--------------------------------------------------------------------------------',
'procedure validate_ig_simple_checkbox (',
'  p_item   in            apex_plugin.t_item,',
'  p_plugin in            apex_plugin.t_plugin,',
'  p_param  in            apex_plugin.t_item_validation_param,',
'  p_result in out nocopy apex_plugin.t_item_validation_result )',
'is',
'  c_checked_value   constant varchar2(32767) := nvl(p_item.attribute_01, 1);',
'  c_unchecked_value constant varchar2(32767) := nvl(p_item.attribute_02, 0);',
'begin',
'  if not (p_param.value in (c_checked_value, c_unchecked_value)',
'          or (p_param.value is null and c_unchecked_value is null)',
'         )',
'  then',
'    p_result.message := ''Checkbox contains invalid value ('' || p_param.value || '')'';',
'  end if;',
'end validate_ig_simple_checkbox;',
''))
,p_api_version=>2
,p_render_function=>'render_ig_simple_checkbox'
,p_meta_data_function=>'metadata_ig_simple_checkbox'
,p_validation_function=>'validate_ig_simple_checkbox'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ICON:ENCRYPT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'18.2.3'
,p_about_url=>'https://github.com/rafael-trevisan/apex-plugin-ig_simple_checkbox'
,p_files_version=>10
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(50152306524139440507)
,p_plugin_id=>wwv_flow_api.id(50150980605794276782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Checked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'1'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(50152308532040442001)
,p_plugin_id=>wwv_flow_api.id(50150980605794276782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Unchecked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'0'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E612D47562D636F6C756D6E4974656D202E69672D73696D706C652D636865636B626F7820696E7075745B747970653D746578745D2C2E612D47562D636F6C756D6E4974656D202E69672D73696D706C652D636865636B626F7820696E7075745B747970';
wwv_flow_api.g_varchar2_table(2) := '653D746578745D3A666F6375732C2E69672D73696D706C652D636865636B626F7820696E7075745B747970653D746578745D2C2E69672D73696D706C652D636865636B626F7820696E7075745B747970653D746578745D3A666F6375737B626F72646572';
wwv_flow_api.g_varchar2_table(3) := '2D77696474683A3021696D706F7274616E743B6865696768743A3021696D706F7274616E743B70616464696E673A3021696D706F7274616E743B77696474683A3021696D706F7274616E747D2E69672D73696D706C652D636865636B626F787B70616464';
wwv_flow_api.g_varchar2_table(4) := '696E672D6C6566743A303B746578742D616C69676E3A63656E7465723B77696474683A313030257D2E69672D73696D706C652D636865636B626F782E636865636B626F785F67726F75702E617065782D6974656D2D636865636B626F787B746578742D61';
wwv_flow_api.g_varchar2_table(5) := '6C69676E3A63656E7465727D2E69672D73696D706C652D636865636B626F782E636865636B626F785F67726F757020696E7075747B626F726465723A303B636C69703A726563742830203020302030293B6865696768743A3170783B6D617267696E3A2D';
wwv_flow_api.g_varchar2_table(6) := '3170783B6F766572666C6F773A68696464656E3B70616464696E673A303B706F736974696F6E3A6162736F6C7574653B77696474683A3170787D2E69672D73696D706C652D636865636B626F782E636865636B626F785F67726F757020696E7075742B6C';
wwv_flow_api.g_varchar2_table(7) := '6162656C7B637572736F723A706F696E7465723B646973706C61793A696E6C696E652D626C6F636B3B6D696E2D6865696768743A313670783B70616464696E672D6C6566743A313670783B706F736974696F6E3A72656C61746976653B76657274696361';
wwv_flow_api.g_varchar2_table(8) := '6C2D616C69676E3A746F707D2E69672D73696D706C652D636865636B626F782E636865636B626F785F67726F757020696E7075742B6C6162656C3A3A6265666F72657B6261636B67726F756E642D636F6C6F723A236639663966393B626F726465723A31';
wwv_flow_api.g_varchar2_table(9) := '707820736F6C6964207267626128302C302C302C2E32293B626F726465722D7261646975733A3270783B636F6E74656E743A27273B646973706C61793A626C6F636B3B6865696768743A313670783B6C6566743A303B706F736974696F6E3A6162736F6C';
wwv_flow_api.g_varchar2_table(10) := '7574653B746F703A303B2D7765626B69742D7472616E736974696F6E3A2E32357320656173653B7472616E736974696F6E3A2E32357320656173653B77696474683A313670783B7A2D696E6465783A39307D2E69672D73696D706C652D636865636B626F';
wwv_flow_api.g_varchar2_table(11) := '782E636865636B626F785F67726F7570206C6162656C7B636F6C6F723A233464346434643B666F6E742D73697A653A312E3272656D3B6C696E652D6865696768743A312E3672656D7D2E69672D73696D706C652D636865636B626F782E636865636B626F';
wwv_flow_api.g_varchar2_table(12) := '785F67726F757020696E7075742B6C6162656C3A3A61667465727B6261636B67726F756E642D706F736974696F6E3A3530253B6261636B67726F756E642D7265706561743A6E6F2D7265706561743B6261636B67726F756E642D73697A653A313670783B';
wwv_flow_api.g_varchar2_table(13) := '636F6E74656E743A27273B646973706C61793A626C6F636B3B6865696768743A313670783B6C6566743A303B6F7061636974793A303B706F736974696F6E3A6162736F6C7574653B746F703A303B2D7765626B69742D7472616E736974696F6E3A2E3235';
wwv_flow_api.g_varchar2_table(14) := '7320656173653B7472616E736974696F6E3A2E32357320656173653B77696474683A313670783B7A2D696E6465783A3130307D2E69672D73696D706C652D636865636B626F782E636865636B626F785F67726F757020696E7075743A636865636B65642B';
wwv_flow_api.g_varchar2_table(15) := '6C6162656C3A3A61667465727B2D7765626B69742D616E696D6174696F6E3A636865636B6D61726B202E32357320656173652D696E2D6F75743B616E696D6174696F6E3A636865636B6D61726B202E32357320656173652D696E2D6F75743B2D7765626B';
wwv_flow_api.g_varchar2_table(16) := '69742D616E696D6174696F6E2D66696C6C2D6D6F64653A666F7277617264733B616E696D6174696F6E2D66696C6C2D6D6F64653A666F7277617264733B636F6C6F723A236666663B636F6E74656E743A275C65303037273B666F6E742D66616D696C793A';
wwv_flow_api.g_varchar2_table(17) := '617065782D352D69636F6E2D666F6E7421696D706F7274616E743B666F6E742D73697A653A313470783B2D6D6F7A2D6F73782D666F6E742D736D6F6F7468696E673A677261797363616C653B2D7765626B69742D666F6E742D736D6F6F7468696E673A61';
wwv_flow_api.g_varchar2_table(18) := '6E7469616C69617365643B666F6E742D7374796C653A6E6F726D616C21696D706F7274616E743B666F6E742D76617269616E743A6E6F726D616C21696D706F7274616E743B666F6E742D7765696768743A34303021696D706F7274616E743B6865696768';
wwv_flow_api.g_varchar2_table(19) := '743A313470783B6C696E652D6865696768743A313B6F7061636974793A313B70616464696E673A3170783B737065616B3A6E6F6E653B746578742D7472616E73666F726D3A6E6F6E6521696D706F7274616E743B2D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(20) := '6D3A7363616C652831293B7472616E73666F726D3A7363616C652831293B77696474683A313470787D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(50577919924595564926)
,p_plugin_id=>wwv_flow_api.id(50150980605794276782)
,p_file_name=>'css/ca_trevis_apex_ig_simple_checkbox.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722063615F7472657669735F617065785F69675F73696D706C655F636865636B626F783D66756E6374696F6E2861297B66756E6374696F6E20622864297B696628635B645D2972657475726E20635B645D2E6578706F7274733B76617220653D635B';
wwv_flow_api.g_varchar2_table(2) := '645D3D7B693A642C6C3A21312C6578706F7274733A7B7D7D3B72657475726E20615B645D2E63616C6C28652E6578706F7274732C652C652E6578706F7274732C62292C652E6C3D21302C652E6578706F7274737D76617220633D7B7D3B72657475726E20';
wwv_flow_api.g_varchar2_table(3) := '622E6D3D612C622E633D632C622E643D66756E6374696F6E28612C632C64297B622E6F28612C63297C7C4F626A6563742E646566696E6550726F706572747928612C632C7B636F6E666967757261626C653A21312C656E756D657261626C653A21302C67';
wwv_flow_api.g_varchar2_table(4) := '65743A647D297D2C622E6E3D66756E6374696F6E2861297B76617220633D612626612E5F5F65734D6F64756C653F66756E6374696F6E28297B72657475726E20615B2764656661756C74275D7D3A66756E6374696F6E28297B72657475726E20617D3B72';
wwv_flow_api.g_varchar2_table(5) := '657475726E20622E6428632C2761272C63292C637D2C622E6F3D66756E6374696F6E28612C62297B72657475726E204F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28612C62297D2C622E703D27272C622862';
wwv_flow_api.g_varchar2_table(6) := '2E733D30297D285B66756E6374696F6E28612C622C63297B612E6578706F7274733D632831297D2C66756E6374696F6E28612C622C63297B2775736520737472696374273B4F626A6563742E646566696E6550726F706572747928622C275F5F65734D6F';
wwv_flow_api.g_varchar2_table(7) := '64756C65272C7B76616C75653A21307D292C632E6428622C27696E6974272C66756E6374696F6E28297B72657475726E20647D293B2F2A2A0A202A2040617574686F722052616661656C20547265766973616E203C72616661656C407472657669732E63';
wwv_flow_api.g_varchar2_table(8) := '613E0A202A20406C6963656E73650A202A20436F707972696768742028632920323031382052616661656C20547265766973616E0A202A0A202A205065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F6620636861';
wwv_flow_api.g_varchar2_table(9) := '7267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F70790A202A206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468652027536F66';
wwv_flow_api.g_varchar2_table(10) := '747761726527292C20746F206465616C0A202A20696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E20746865207269676874730A202A20';
wwv_flow_api.g_varchar2_table(11) := '746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C0A202A20636F70696573206F662074686520536F6674776172652C';
wwv_flow_api.g_varchar2_table(12) := '20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F6674776172652069730A202A206675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720706C617965';
wwv_flow_api.g_varchar2_table(13) := '72733A0A202A0A202A205468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E20616C6C0A202A20636F70696573206F';
wwv_flow_api.g_varchar2_table(14) := '72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0A202A0A202A2054484520534F4654574152452049532050524F564944454420274153204953272C20574954484F55542057415252414E5459204F4620';
wwv_flow_api.g_varchar2_table(15) := '414E59204B494E442C2045585052455353204F520A202A20494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C0A202A20';
wwv_flow_api.g_varchar2_table(16) := '4649544E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C205448450A202A20415554484F5253204F5220434F5059524947485420';
wwv_flow_api.g_varchar2_table(17) := '484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F544845520A202A204C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F';
wwv_flow_api.g_varchar2_table(18) := '5254204F52204F54484552574953452C2041524953494E472046524F4D2C0A202A204F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C';
wwv_flow_api.g_varchar2_table(19) := '494E475320494E205448450A202A20534F4654574152452E0A202A2F636F6E737420643D28612C62293D3E7B636F6E73747B636865636B656456616C75653A632C756E636865636B656456616C75653A642C726561644F6E6C793A657D3D623B6C657420';
wwv_flow_api.g_varchar2_table(20) := '663D303B636F6E737420673D24286023247B617D60292C683D672E616464436C6173732827752D76682069732D666F63757361626C6527292E7772617028273C64697620636C6173733D2269672D73696D706C652D636865636B626F782069672D73696D';
wwv_flow_api.g_varchar2_table(21) := '706C652D636865636B626F782D6974656D2069672D73696D706C652D636865636B626F782D656E61626C6564223E3C2F6469763E27292E706172656E7428292C693D28622C67293D3E7B636F6E737420683D617065782E7574696C2E68746D6C4275696C';
wwv_flow_api.g_varchar2_table(22) := '64657228293B72657475726E20682E6D61726B757028273C64697627292E617474722827636C617373272C2769672D73696D706C652D636865636B626F7820636865636B626F785F67726F757020617065782D6974656D2D636865636B626F7827292E6D';
wwv_flow_api.g_varchar2_table(23) := '61726B757028273E3C696E70757427292E61747472282774797065272C27636865636B626F7827292E6174747228276964272C60247B617D5F247B667D5F3060292E6174747228276E616D65272C60247B617D5F247B667D60292E61747472282776616C';
wwv_flow_api.g_varchar2_table(24) := '7565272C67292E617474722827746162696E646578272C2D31292E617474722827646174612D636865636B65642D76616C7565272C63292E617474722827646174612D756E636865636B65642D76616C7565272C64292E6F7074696F6E616C4174747228';
wwv_flow_api.g_varchar2_table(25) := '27636865636B6564272C673D3D3D63292E6F7074696F6E616C41747472282764697361626C6564272C65292E6D61726B75702827202F3E3C6C6162656C27292E617474722827666F72272C60247B617D5F247B667D5F3060292E6D61726B757028273E27';
wwv_flow_api.g_varchar2_table(26) := '292E636F6E74656E74282727292E6D61726B757028273C2F6C6162656C3E27292C662B3D312C682E746F537472696E6728297D2C6A3D2862293D3E7B636F6E737420633D622E636C6F736573742827747227292E646174612827696427292C643D242862';
wwv_flow_api.g_varchar2_table(27) := '2E706172656E747328272E612D49472729292E617474722827696427292E736C69636528302C2D33292C653D617065782E726567696F6E2864292E77696467657428292C7B6D6F64656C3A667D3D652E696E746572616374697665477269642827676574';
wwv_flow_api.g_varchar2_table(28) := '5669657773272C276772696427292C683D662E6765745265636F72642863292C693D652E696E746572616374697665477269642827676574566965777327292E677269642E6D6F64656C2E6765744F7074696F6E28276669656C647327293B6C6574206A';
wwv_flow_api.g_varchar2_table(29) := '3D27273B4F626A6563742E6B6579732869292E666F7245616368282862293D3E7B695B625D2E656C656D656E7449643D3D3D612626286A3D62297D292C662E73657456616C756528682C6A2C672E76616C2829297D2C6B3D28293D3E7B636F6E73742061';
wwv_flow_api.g_varchar2_table(30) := '3D682E66696E642827696E7075745B747970653D22636865636B626F78225D27293B612E70726F702827636865636B6564272C672E76616C28293D3D3D63292C2828293D3E7B2428272E69672D73696D706C652D636865636B626F7827292E6561636828';
wwv_flow_api.g_varchar2_table(31) := '28612C62293D3E7B242862292E706172656E74732827746427292E6F666628272E696773696D706C65636865636B626F7827292E6F6E28276B6579646F776E2E696773696D706C65636865636B626F78272C2861293D3E7B69662833323D3D3D612E7768';
wwv_flow_api.g_varchar2_table(32) := '696368297B636F6E737420613D242862292E66696E642827696E7075745B747970653D22636865636B626F78225D27293B72657475726E20672E76616C28612E70726F702827636865636B656427293F643A63292E6368616E676528292C6A2867292C6B';
wwv_flow_api.g_varchar2_table(33) := '28292C21317D72657475726E21307D297D297D2928297D3B682E617070656E6428692829292C682E66696E642827696E7075745B747970653D22636865636B626F78225D27292E6F6E28276368616E6765272C2861293D3E7B636F6E737420623D242861';
wwv_flow_api.g_varchar2_table(34) := '2E63757272656E74546172676574293B672E76616C28622E70726F702827636865636B656427293F633A64292E6368616E676528292C6A2862292C672E666F63757328297D292C6B28292C622E726561644F6E6C79262628672E636C6F7365737428272E';
wwv_flow_api.g_varchar2_table(35) := '69672D73696D706C652D636865636B626F7827292E72656D6F7665436C617373282769672D73696D706C652D636865636B626F782D64697361626C656427292C672E636C6F7365737428272E69672D73696D706C652D636865636B626F7827292E616464';
wwv_flow_api.g_varchar2_table(36) := '436C617373282769672D73696D706C652D636865636B626F782D656E61626C65642729292C617065782E6974656D2E63726561746528612C7B73657456616C75652861297B672E76616C2861292C6B28297D2C64697361626C6528297B672E636C6F7365';
wwv_flow_api.g_varchar2_table(37) := '737428272E69672D73696D706C652D636865636B626F7827292E616464436C617373282769672D73696D706C652D636865636B626F782D64697361626C656427292C672E636C6F7365737428272E69672D73696D706C652D636865636B626F7827292E72';
wwv_flow_api.g_varchar2_table(38) := '656D6F7665436C617373282769672D73696D706C652D636865636B626F782D656E61626C656427292C672E70726F70282764697361626C6564272C2130297D2C656E61626C6528297B622E726561644F6E6C797C7C28672E636C6F7365737428272E6967';
wwv_flow_api.g_varchar2_table(39) := '2D73696D706C652D636865636B626F7827292E72656D6F7665436C617373282769672D73696D706C652D636865636B626F782D64697361626C656427292C672E636C6F7365737428272E69672D73696D706C652D636865636B626F7827292E616464436C';
wwv_flow_api.g_varchar2_table(40) := '617373282769672D73696D706C652D636865636B626F782D656E61626C656427292C672E70726F70282764697361626C6564272C213129297D2C646973706C617956616C7565466F722861297B72657475726E20692821302C61297D7D297D7D5D293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(50577920873422567404)
,p_plugin_id=>wwv_flow_api.id(50150980605794276782)
,p_file_name=>'js/ca_trevis_apex_ig_simple_checkbox.bundle.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(7115282923066139)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(6986864584066210)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(7080192304066164)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(7114987981066140)
,p_nav_bar_list_template_id=>wwv_flow_api.id(7082182641066163)
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
,p_user_interface_id=>wwv_flow_api.id(7115282923066139)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220905100304'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(7115282923066139)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'singular certificate'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220905100304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7126135306066090)
,p_plug_name=>'singular certificate'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7029225223066184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(7115282923066139)
,p_name=>'Certificate_Insurance'
,p_step_title=>'Certificate_Insurance'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220908142500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7136687868044445)
,p_plug_name=>'Certificate Of Insurance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(7036630269066182)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CERTIFICATE_INSURANCE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(7136969113044444)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_IDCERTIFICATE:\#IDCERTIFICATE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'FPEREZ'
,p_internal_uid=>7136969113044444
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7137027980044443)
,p_db_column_name=>'IDCERTIFICATE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Idcertificate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7137465392044442)
,p_db_column_name=>'PRODUCER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Producer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7137828941044442)
,p_db_column_name=>'INSURED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Insured'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7138256611044442)
,p_db_column_name=>'DESCRIPTION_OPERATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description Operation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7138613014044442)
,p_db_column_name=>'CERTIFICATE_HOLDER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Certificate Holder'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7139025670044442)
,p_db_column_name=>'DATE_CERTIFICATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Date Certificate'
,p_column_type=>'DATE'
,p_format_mask=>'MM/DD/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(7142099636031422)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDCERTIFICATE:PRODUCER:INSURED:DESCRIPTION_OPERATION:CERTIFICATE_HOLDER:DATE_CERTIFICATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7139503269044441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7136687868044445)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(7115282923066139)
,p_name=>'Certificate_insurance_data'
,p_step_title=>'Certificate_insurance_data'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220920111625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21788860137188535)
,p_plug_name=>'Certificate Of Insurance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(7036630269066182)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDCERTIFICATE,',
'       nropoliza,',
'       PRODUCER,',
'       INSURED,',
'       DESCRIPTION_OPERATION,',
'       CERTIFICATE_HOLDER,',
'       DATE_CERTIFICATE',
'  from CERTIFICATE_INSURANCE'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21805570160530085)
,p_plug_name=>'Type Insurance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7036630269066182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDCERTIFICATE , ',
'	   IDECERTIFICATETYPE , ',
'       INDADDINS,',
'       INDCOLTR,',
'	   TYPE_CODE  , ',
'	   TYPE_NAME , ',
'	   POLICYNUMBER , ',
'	   POLICYDATEEFF , ',
'	   POLICYDATEEXP',
'  from CERTIFICATE_TYPE',
'where idcertificate = :P5_IDCERTIFICATE;   ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_IDCERTIFICATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21805756391530087)
,p_name=>'IDCERTIFICATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21805864054530088)
,p_name=>'IDECERTIFICATETYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDECERTIFICATETYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21805932500530089)
,p_name=>'TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21806062802530090)
,p_name=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type Insurance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21806315863530093)
,p_name=>'POLICYNUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICYNUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Policy Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21806417765530094)
,p_name=>'POLICYDATEEFF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICYDATEEFF'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Policy EFF.<br>DATE (MM/DD/YYYY)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'MM/DD/YYYY'
,p_item_width=>10
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21806514397530095)
,p_name=>'POLICYDATEEXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICYDATEEXP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Policy Exp.<br>DATE (MM/DD/YYYY)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'MM/DD/YYYY'
,p_item_width=>10
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21806697918530096)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21806732819530097)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21834114762717989)
,p_name=>'INDCOLTR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDCOLTR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CO. LTR'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21834253171717990)
,p_name=>'INDADDINS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDADDINS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ADDL INDRD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(21805629558530086)
,p_internal_uid=>21805629558530086
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();  ',
'',
'  config.toolbarData = toolbarData;',
'',
'   // Elimina el paginado del interactive grid del Footer ',
'  config.defaultGridViewOptions = { ',
'     footer: false',
'     }; ',
'',
'  return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(21811178778377257)
,p_interactive_grid_id=>wwv_flow_api.id(21805629558530086)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(21811218128377257)
,p_report_id=>wwv_flow_api.id(21811178778377257)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21811752342377251)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(21805756391530087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21812225284377246)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(21805864054530088)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21812779717377244)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(21805932500530089)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21813224050377242)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(21806062802530090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21814760698377236)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(21806315863530093)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>187
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21815268378377234)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(21806417765530094)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21815770658377232)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(21806514397530095)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21817114050362594)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21806697918530096)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21851900999741244)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(21834114762717989)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21862858188330379)
,p_view_id=>wwv_flow_api.id(21811218128377257)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(21834253171717990)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21877149658689788)
,p_plug_name=>'Limits'
,p_region_name=>'limits'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7036630269066182)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idlimit,idcertificate,idcertificatetype,limitind,limitname,limitamount',
'from certificate_limit;',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(21805570160530085)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21877326870689790)
,p_name=>'IDLIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDLIMIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21877511560689791)
,p_name=>'IDCERTIFICATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_api.id(21805756391530087)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21877572942689792)
,p_name=>'IDCERTIFICATETYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATETYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_api.id(21805932500530089)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21877662142689793)
,p_name=>'LIMITIND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMITIND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21877733320689794)
,p_name=>'LIMITNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMITNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Limit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21877841722689795)
,p_name=>'LIMITAMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMITAMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21878011117689796)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21878056067689797)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(21877309598689789)
,p_internal_uid=>21877309598689789
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();  ',
'',
'  config.toolbarData = toolbarData;',
'',
'   // Elimina el paginado del interactive grid del Footer ',
'  config.defaultGridViewOptions = { ',
'     footer: false',
'     }; ',
'',
'  return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(21910056705252079)
,p_interactive_grid_id=>wwv_flow_api.id(21877309598689789)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(21910204148252078)
,p_report_id=>wwv_flow_api.id(21910056705252079)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21910698517252075)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(21877326870689790)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21911148156252072)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(21877511560689791)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21911615840252070)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(21877572942689792)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21912140193252068)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(21877662142689793)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21912656731252066)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(21877733320689794)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>456.59400000000005
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21913168414252064)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(21877841722689795)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21923820966901265)
,p_view_id=>wwv_flow_api.id(21910204148252078)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21878011117689796)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21879102621689807)
,p_plug_name=>'Covers'
,p_region_name=>'covers'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7036630269066182)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idcover,idcertificate,idcertificatetype,covertind, covername',
'  from certificate_cover;'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(21805570160530085)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879298558689809)
,p_name=>'COVERTIND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COVERTIND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Indicador'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_item_width=>1
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879355477689810)
,p_name=>'COVERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COVERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cover'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879484463689811)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879594319689812)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879783522689814)
,p_name=>'IDCERTIFICATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_api.id(21805756391530087)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879895539689815)
,p_name=>'IDCERTIFICATETYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATETYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_api.id(21805932500530089)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21879993764689816)
,p_name=>'IDCOVER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCOVER'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(21879209529689808)
,p_internal_uid=>21879209529689808
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();  ',
'',
'  config.toolbarData = toolbarData;',
'',
'   // Elimina el paginado del interactive grid del Footer ',
'  config.defaultGridViewOptions = { ',
'     footer: false',
'     }; ',
'',
'  return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(21936583612774261)
,p_interactive_grid_id=>wwv_flow_api.id(21879209529689808)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(21936695088774261)
,p_report_id=>wwv_flow_api.id(21936583612774261)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21937125327774260)
,p_view_id=>wwv_flow_api.id(21936695088774261)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(21879298558689809)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107.57
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21937621986774258)
,p_view_id=>wwv_flow_api.id(21936695088774261)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(21879355477689810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21938134308774256)
,p_view_id=>wwv_flow_api.id(21936695088774261)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21879484463689811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21939023581774252)
,p_view_id=>wwv_flow_api.id(21936695088774261)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(21879783522689814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21939591303774250)
,p_view_id=>wwv_flow_api.id(21936695088774261)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(21879895539689815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21943269882719689)
,p_view_id=>wwv_flow_api.id(21936695088774261)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(21879993764689816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11593327230011604)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(21788860137188535)
,p_button_name=>'PDF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7092708964066157)
,p_button_image_alt=>'Pdf'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7351213583393353)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21788860137188535)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P5_IDCERTIFICATE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save-as'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7350847706393353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21788860137188535)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-circle-arrow-in-nw'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7351641187393353)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(21788860137188535)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P5_IDCERTIFICATE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7350425686393353)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21788860137188535)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_IDCERTIFICATE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-eraser'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7373350531393341)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7350847706393353)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11619382954056202)
,p_branch_name=>'PrintPDF'
,p_branch_action=>'f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=test:&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11593327230011604)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7352041855393353)
,p_name=>'P5_IDCERTIFICATE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_default=>'CERTIFICATE_INSURANCE_SEQ'
,p_item_default_type=>'SEQUENCE'
,p_source=>'IDCERTIFICATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7352403290393353)
,p_name=>'P5_NROPOLIZA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_prompt=>'Policy Number'
,p_source=>'NROPOLIZA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_POLIZAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR(cp.capo_casu_cd_sucursal)||'' ''||TO_CHAR(cp.capo_carp_cd_ramo)||'' ''||to_char(cp.capo_nu_poliza)||'' ''||'' ( ''||',
'       cl.cacn_cd_nacionalidad||'' ''||cl.cacn_nu_cedula_rif||'' - ''||cl.cacn_nm_apellido_razon||'' )'' nbrecliente,',
'       TO_CHAR(cp.capo_casu_cd_sucursal)||'' ''||TO_CHAR(cp.capo_carp_cd_ramo)||'' ''||to_char(cp.capo_nu_poliza) nropoliza',
' from cartera.cart_polizas cp, cartera.Cart_Clientes cl',
'where cp.capo_cacn_nu_cedula_rif   = cl.cacn_nu_cedula_rif',
'  and cp.capo_cacn_cd_nacionalidad = cl.cacn_cd_nacionalidad'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>18
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7352837326393352)
,p_name=>'P5_DATE_CERTIFICATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Date Certificate'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_CERTIFICATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7353259222393352)
,p_name=>'P5_PRODUCER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_prompt=>'Producer'
,p_source=>'PRODUCER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7353658292393352)
,p_name=>'P5_INSURED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_prompt=>'Insured'
,p_source=>'INSURED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7354030080393352)
,p_name=>'P5_DESCRIPTION_OPERATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_prompt=>'Description Operation'
,p_source=>'DESCRIPTION_OPERATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7354421191393352)
,p_name=>'P5_CERTIFICATE_HOLDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(21788860137188535)
,p_item_source_plug_id=>wwv_flow_api.id(21788860137188535)
,p_prompt=>'Certificate Holder'
,p_source=>'CERTIFICATE_HOLDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7372301273393341)
,p_name=>'Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_NROPOLIZA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7372837723393341)
,p_event_id=>wwv_flow_api.id(7372301273393341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_INSURED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' cApellido_razon cart_clientes.cacn_nm_apellido_razon%type;',
'begin',
' begin',
'   select cl.cacn_nm_apellido_razon',
'     into cApellido_razon',
'     from cartera.Cart_Clientes cl,cartera.cart_polizas cp',
'    where cl.cacn_nu_cedula_rif   = cp.capo_cacn_nu_cedula_rif ',
'      and cl.cacn_cd_nacionalidad = cp.capo_cacn_cd_nacionalidad ',
'      and cp.capo_casu_cd_sucursal||'' ''||cp.capo_carp_cd_ramo||'' ''||cp.capo_nu_poliza = :p5_nropoliza;',
' exception',
'   when others then',
'        cApellido_razon := null;',
' end;',
' return cApellido_razon;',
'end;',
''))
,p_attribute_07=>'P5_NROPOLIZA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7340563575716304)
,p_name=>'ChangeType'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(21805570160530085)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7340636146716305)
,p_event_id=>wwv_flow_api.id(7340563575716304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("covers").widget().interactiveGrid("getActions").invoke("refresh");',
'apex.region("limits").widget().interactiveGrid("getActions").invoke("refresh");'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7355237087393351)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21788860137188535)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Certificate_insurance_data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7371939690393342)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CrearRegistroType'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5_idcertificate, ''01'', ''GENERAL LIABILITY'',NULL,NULL,:p5_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''01'',''GENERAL AGGREGATE'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''01'',''PRODUCTS COMP/OP AGG'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''01'',''PERSONAL & ADV INJURY'',0);   ',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''01'',''EACH OCCURRENCE'',0);   ',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''01'',''FIRE DAMAGE (ANY ONE FIRE)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''01'',''MED EXP (ANY ONE PERSON)'',0); ',
'  ',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''01'',null,''COMMERCIAL GENERAL LIABILITY'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''01'',null,''CLAIMS MADE'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''01'',null,''OCCURANCE'');',
'  ',
'  ',
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5_idcertificate, ''02'', ''AUTOMOBILE LIABILITY'',NULL,NULL,:p5_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''02'',''COMBINED SINGLE LIMIT (EACH OCCURRRENCE)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''02'',''BODILY INJURY (PER PERSON)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''02'',''BODILY INJURY (PER ACCIDENT)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''02'',''PORPERTY DAMAGE'',0);',
'',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''02'',null,''ANY AUTO'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''02'',null,''ALL OWNED AUTOS'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''02'',null,''SCHEDULED AUTOS'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''02'',null,''HIRED AUTOS'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''02'',null,''NON-OWNED AUTOS'');',
'  ',
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5_idcertificate, ''03'', ''EXCESS LIABILITY'',NULL,NULL,:p5_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''03'',''EACH OCCURRENCE'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''03'',''AGGREGATE'',0);',
'',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''03'',null,''UNBRELLA FORM'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''03'',null,''OTHER THAT UMBRELLA FORM'');',
'  ',
'  ',
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5_idcertificate, ''04'', ''EMPLOYERS LIABILITY'',NULL,NULL,:p5_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''04'',''WC STATUTORY LIMITS-OTHER'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''04'',''EL EACH ACCIDENT'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''04'',''EL DISEASE-POLICY LIMIT'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''04'',''EL DISEASE-EACH EMPLOYEE'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''04'',''AUTO LOAN LEASE GAP'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5_idcertificate, ''04'',''WC STATUTORY LIMITS-OTHER'',0); ',
'  ',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''04'',null,''STOP GAP'');  ',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''04'',null,''PHYSICAL DAMAGE'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''04'',null,''COMPREHENSIVE'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5_idcertificate, ''04'',null,''COLLISION'');',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7351641187393353)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7360951868393348)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21805570160530085)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Certificate Type - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7365406008393346)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21877149658689788)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Certificate_Limits - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7369407418393343)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21879102621689807)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Certificate_Cover - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7354883246393352)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(21788860137188535)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Certificate_insurance_data'
);
end;
/
prompt --application/pages/page_05000
begin
wwv_flow_api.create_page(
 p_id=>5000
,p_user_interface_id=>wwv_flow_api.id(7115282923066139)
,p_name=>'Certificate_insurance_data'
,p_step_title=>'Certificate_insurance_data'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220908110858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14438968147795181)
,p_plug_name=>'Certificate Of Insurance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(7036630269066182)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDCERTIFICATE,',
'       nropoliza,',
'       PRODUCER,',
'       INSURED,',
'       DESCRIPTION_OPERATION,',
'       CERTIFICATE_HOLDER,',
'       DATE_CERTIFICATE',
'  from CERTIFICATE_INSURANCE'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14455678171136731)
,p_plug_name=>'Certificate Type'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7035529429066182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDCERTIFICATE , ',
'	   IDECERTIFICATETYPE , ',
'       INDADDINS,',
'       INDCOLTR,',
'	   TYPE_CODE  , ',
'	   TYPE_NAME , ',
'	   POLICYNUMBER , ',
'	   POLICYDATEEFF , ',
'	   POLICYDATEEXP',
'  from CERTIFICATE_TYPE',
'where idcertificate = :P5000_IDCERTIFICATE;   ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5000_IDCERTIFICATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14455864402136733)
,p_name=>'IDCERTIFICATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IDCERTIFICATE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14455972065136734)
,p_name=>'IDECERTIFICATETYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDECERTIFICATETYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IDECERTIFICATETYPE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456040511136735)
,p_name=>'TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456170813136736)
,p_name=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type Insurance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456423874136739)
,p_name=>'POLICYNUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICYNUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Policy Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456525776136740)
,p_name=>'POLICYDATEEFF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICYDATEEFF'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Policy EFF.<br>DATE (MM/DD/YYYY)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'MM/DD/YYYY'
,p_item_width=>10
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456622408136741)
,p_name=>'POLICYDATEEXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICYDATEEXP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Policy Exp.<br>DATE (MM/DD/YYYY)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'MM/DD/YYYY'
,p_item_width=>10
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456805929136742)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14456840830136743)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14484222773324635)
,p_name=>'INDCOLTR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDCOLTR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CO. LTR'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14484361182324636)
,p_name=>'INDADDINS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDADDINS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ADDL INDRD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(14455737569136732)
,p_internal_uid=>14455737569136732
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();  ',
'',
'  config.toolbarData = toolbarData;',
'',
'   // Elimina el paginado del interactive grid del Footer ',
'  config.defaultGridViewOptions = { ',
'     footer: false',
'     }; ',
'',
'  return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(14461286788983903)
,p_interactive_grid_id=>wwv_flow_api.id(14455737569136732)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(14461326138983903)
,p_report_id=>wwv_flow_api.id(14461286788983903)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14461860352983897)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(14455864402136733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14462333294983892)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(14455972065136734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14462887727983890)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(14456040511136735)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14463332060983888)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(14456170813136736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14464868708983882)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(14456423874136739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>187.26600000000002
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14465376388983880)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(14456525776136740)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210.26600000000002
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14465878668983878)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(14456622408136741)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14467222060969240)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(14456805929136742)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14502009010347890)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(14484222773324635)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81.641
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14512966198937025)
,p_view_id=>wwv_flow_api.id(14461326138983903)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(14484361182324636)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106.64099999999999
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14527257669296434)
,p_plug_name=>'Limits'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7035529429066182)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idlimit,idcertificate,idcertificatetype,limitind,limitname,limitamount',
'from certificate_limit;',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14527434881296436)
,p_name=>'IDLIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDLIMIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14527619571296437)
,p_name=>'IDCERTIFICATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'idcertificate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14527680953296438)
,p_name=>'IDCERTIFICATETYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATETYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IDCERTIFICATETYPE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14527770153296439)
,p_name=>'LIMITIND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMITIND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14527841331296440)
,p_name=>'LIMITNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMITNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Limit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14527949733296441)
,p_name=>'LIMITAMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMITAMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14528119128296442)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14528164078296443)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(14527417609296435)
,p_internal_uid=>14527417609296435
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();  ',
'',
'  config.toolbarData = toolbarData;',
'',
'   // Elimina el paginado del interactive grid del Footer ',
'  config.defaultGridViewOptions = { ',
'     footer: false',
'     }; ',
'',
'  return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(14560164715858725)
,p_interactive_grid_id=>wwv_flow_api.id(14527417609296435)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(14560312158858724)
,p_report_id=>wwv_flow_api.id(14560164715858725)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14560806527858721)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(14527434881296436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14561256166858718)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(14527619571296437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14561723850858716)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(14527680953296438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14562248203858714)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(14527770153296439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14562764741858712)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(14527841331296440)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>456.59400000000005
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14563276424858710)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(14527949733296441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14573928977507911)
,p_view_id=>wwv_flow_api.id(14560312158858724)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(14528119128296442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14529210632296453)
,p_plug_name=>'Covers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7035529429066182)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idcover,idcertificate,idcertificatetype,covertind, covername',
'  from certificate_cover;'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(14455678171136731)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14529406569296455)
,p_name=>'COVERTIND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COVERTIND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Indicador'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_item_width=>1
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14529463488296456)
,p_name=>'COVERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COVERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cover'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14529592474296457)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14529702330296458)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14529891533296460)
,p_name=>'IDCERTIFICATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IDCERTIFICATE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_api.id(14455864402136733)
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14530003550296461)
,p_name=>'IDCERTIFICATETYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCERTIFICATETYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IDCERTIFICATETYPE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_api.id(14456040511136735)
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14530101775296462)
,p_name=>'IDCOVER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDCOVER'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(14529317540296454)
,p_internal_uid=>14529317540296454
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();  ',
'',
'  config.toolbarData = toolbarData;',
'',
'   // Elimina el paginado del interactive grid del Footer ',
'  config.defaultGridViewOptions = { ',
'     footer: false',
'     }; ',
'',
'  return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(14586691623380907)
,p_interactive_grid_id=>wwv_flow_api.id(14529317540296454)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(14586803099380907)
,p_report_id=>wwv_flow_api.id(14586691623380907)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14587233338380906)
,p_view_id=>wwv_flow_api.id(14586803099380907)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(14529406569296455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107.57
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14587729997380904)
,p_view_id=>wwv_flow_api.id(14586803099380907)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(14529463488296456)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14588242319380902)
,p_view_id=>wwv_flow_api.id(14586803099380907)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(14529592474296457)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14589131592380898)
,p_view_id=>wwv_flow_api.id(14586803099380907)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(14529891533296460)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14589699314380896)
,p_view_id=>wwv_flow_api.id(14586803099380907)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(14530003550296461)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14593377893326335)
,p_view_id=>wwv_flow_api.id(14586803099380907)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(14530101775296462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7311761733750719)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14438968147795181)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P5000_IDCERTIFICATE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save-as'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7310931779750719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14438968147795181)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-circle-arrow-in-nw'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7312157584750719)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14438968147795181)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P5000_IDCERTIFICATE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7311368102750719)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14438968147795181)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7092845758066156)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5000_IDCERTIFICATE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-eraser'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7333904687750694)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7310931779750719)
,p_branch_sequence=>1
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7312501092750717)
,p_name=>'P5000_IDCERTIFICATE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_default=>'CERTIFICATE_INSURANCE_SEQ'
,p_item_default_type=>'SEQUENCE'
,p_source=>'IDCERTIFICATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7312974721750716)
,p_name=>'P5000_NROPOLIZA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_prompt=>'Policy Number'
,p_source=>'NROPOLIZA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_POLIZAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR(cp.capo_casu_cd_sucursal)||'' ''||TO_CHAR(cp.capo_carp_cd_ramo)||'' ''||to_char(cp.capo_nu_poliza)||'' ''||'' ( ''||',
'       cl.cacn_cd_nacionalidad||'' ''||cl.cacn_nu_cedula_rif||'' - ''||cl.cacn_nm_apellido_razon||'' )'' nbrecliente,',
'       TO_CHAR(cp.capo_casu_cd_sucursal)||'' ''||TO_CHAR(cp.capo_carp_cd_ramo)||'' ''||to_char(cp.capo_nu_poliza) nropoliza',
' from cartera.cart_polizas cp, cartera.Cart_Clientes cl',
'where cp.capo_cacn_nu_cedula_rif   = cl.cacn_nu_cedula_rif',
'  and cp.capo_cacn_cd_nacionalidad = cl.cacn_cd_nacionalidad'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>18
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7313346102750716)
,p_name=>'P5000_DATE_CERTIFICATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Date Certificate'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_CERTIFICATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7313706658750715)
,p_name=>'P5000_PRODUCER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_prompt=>'Producer'
,p_source=>'PRODUCER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7314125425750715)
,p_name=>'P5000_INSURED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_prompt=>'Insured'
,p_source=>'INSURED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7314584032750715)
,p_name=>'P5000_DESCRIPTION_OPERATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_prompt=>'Description Operation'
,p_source=>'DESCRIPTION_OPERATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7314998577750715)
,p_name=>'P5000_CERTIFICATE_HOLDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14438968147795181)
,p_item_source_plug_id=>wwv_flow_api.id(14438968147795181)
,p_prompt=>'Certificate Holder'
,p_source=>'CERTIFICATE_HOLDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(7091623564066158)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7332961806750697)
,p_name=>'Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5000_NROPOLIZA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7333410728750696)
,p_event_id=>wwv_flow_api.id(7332961806750697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5000_INSURED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' cApellido_razon cart_clientes.cacn_nm_apellido_razon%type;',
'begin',
' begin',
'   select cl.cacn_nm_apellido_razon',
'     into cApellido_razon',
'     from cartera.Cart_Clientes cl,cartera.cart_polizas cp',
'    where cl.cacn_nu_cedula_rif   = cp.capo_cacn_nu_cedula_rif ',
'      and cl.cacn_cd_nacionalidad = cp.capo_cacn_cd_nacionalidad ',
'      and cp.capo_casu_cd_sucursal||'' ''||cp.capo_carp_cd_ramo||'' ''||cp.capo_nu_poliza = :p5000_nropoliza;',
' exception',
'   when others then',
'        cApellido_razon := null;',
' end;',
' return cApellido_razon;',
'end;',
''))
,p_attribute_07=>'P5000_NROPOLIZA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7315775108750713)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(14438968147795181)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Certificate_insurance_data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7332523486750698)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CrearRegistroType'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5000_idcertificate, ''01'', ''GENERAL LIABILITY'',NULL,NULL,:p5000_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''01'',''GENERAL AGGREGATE'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''01'',''PRODUCTS COMP/OP AGG'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''01'',''PERSONAL & ADV INJURY'',0);   ',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''01'',''EACH OCCURRENCE'',0);   ',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''01'',''FIRE DAMAGE (ANY ONE FIRE)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''01'',''MED EXP (ANY ONE PERSON)'',0); ',
'  ',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''01'',null,''COMMERCIAL GENERAL LIABILITY'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''01'',null,''CLAIMS MADE'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''01'',null,''OCCURANCE'');',
'  ',
'  ',
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5000_idcertificate, ''02'', ''AUTOMOBILE LIABILITY'',NULL,NULL,:p5000_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''02'',''COMBINED SINGLE LIMIT (EACH OCCURRRENCE)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''02'',''BODILY INJURY (PER PERSON)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''02'',''BODILY INJURY (PER ACCIDENT)'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''02'',''PORPERTY DAMAGE'',0);',
'',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''02'',null,''ANY AUTO'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''02'',null,''ALL OWNED AUTOS'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''02'',null,''SCHEDULED AUTOS'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''02'',null,''HIRED AUTOS'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''02'',null,''NON-OWNED AUTOS'');',
'  ',
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5000_idcertificate, ''03'', ''EXCESS LIABILITY'',NULL,NULL,:p5000_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''03'',''EACH OCCURRENCE'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''03'',''AGGREGATE'',0);',
'',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''03'',null,''UNBRELLA FORM'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''03'',null,''OTHER THAT UMBRELLA FORM'');',
'  ',
'  ',
'insert into certificate_type',
'  ( idcertificate, type_code, type_name, indcoltr, indaddins,policynumber,policydateeff, policydateexp)',
'values',
'  ( :p5000_idcertificate, ''04'', ''EMPLOYERS LIABILITY'',NULL,NULL,:p5000_nropoliza,SYSDATE,SYSDATE);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''04'',''WC STATUTORY LIMITS-OTHER'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''04'',''EL EACH ACCIDENT'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''04'',''EL DISEASE-POLICY LIMIT'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''04'',''EL DISEASE-EACH EMPLOYEE'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''04'',''AUTO LOAN LEASE GAP'',0);',
'insert into certificate_limit',
'  ( idcertificate,idcertificatetype,limitname,limitamount)',
'values',
'  ( :p5000_idcertificate, ''04'',''WC STATUTORY LIMITS-OTHER'',0); ',
'  ',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''04'',null,''STOP GAP'');  ',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''04'',null,''PHYSICAL DAMAGE'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''04'',null,''COMPREHENSIVE'');',
'insert into certificate_cover',
'  (idcertificate, idcertificatetype, covertind, covername)',
'values',
'  (:p5000_idcertificate, ''04'',null,''COLLISION'');',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7312157584750719)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7321438131750705)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(14455678171136731)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Certificate Type - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7325918508750703)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(14527257669296434)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Certificate_Limits - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7330095147750701)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(14529210632296453)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Certificate_Cover - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7315315664750714)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(14438968147795181)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Certificate_insurance_data'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(7115282923066139)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'singular certificate - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(6991776443066199)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'FPEREZ'
,p_last_upd_yyyymmddhh24miss=>'20220905100304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7119381910066108)
,p_plug_name=>'singular certificate'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7036175971066182)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7124083589066096)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(7119381910066108)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7011427855066190)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7122154067066097)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7119381910066108)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7092708964066157)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7119799336066107)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7119381910066108)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7091386332066159)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7120159047066106)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7119381910066108)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7091386332066159)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7121227374066104)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7119381910066108)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(7120401148066105)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7091386332066159)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7122934660066097)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7122584675066097)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7123747315066096)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7123393188066096)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
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
