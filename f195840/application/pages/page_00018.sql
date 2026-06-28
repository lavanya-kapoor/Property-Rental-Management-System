prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>137183636994838360186
,p_default_application_id=>195840
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAVANYAKAPOOR'
);
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Search'
,p_alias=>'SEARCH'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260417013924Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_last_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159012033095808811451)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(159005431000110465621)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260417013924Z')
,p_updated_on=>wwv_flow_imp.dz('20260417013924Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(159008083660198247011)
,p_name=>'New'
,p_static_id=>'new'
,p_title=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Property'' AS RecordType,',
'       TO_CHAR(p.PropertyID) AS RecordID,',
'       p.Address || '', '' || p.City AS Description,',
'       p.Status AS StatusField,',
'       ''Rent: $'' || TO_CHAR(p.RentAmount,''FM999,999.00'') AS ExtraInfo',
'FROM Property p',
'WHERE UPPER(p.Address) LIKE UPPER(''%'' || :P_SEARCH || ''%'')',
'   OR UPPER(p.City) LIKE UPPER(''%'' || :P_SEARCH || ''%'')',
'UNION ALL',
'SELECT ''Tenant'',',
'       TO_CHAR(t.TenantID),',
'       t.FirstName || '' '' || t.LastName,',
'       CASE WHEN t.IDVerified = ''Y'' THEN ''Verified'' ELSE ''Unverified'' END,',
'       t.Email',
'FROM Tenant t',
'WHERE UPPER(t.FirstName || '' '' || t.LastName) LIKE UPPER(''%'' || :P_SEARCH || ''%'')',
'   OR UPPER(t.Email) LIKE UPPER(''%'' || :P_SEARCH || ''%'')',
'UNION ALL',
'SELECT ''Lease'',',
'       TO_CHAR(l.LeaseID),',
'       ''Lease #'' || l.LeaseID || '' | Property '' || l.PropertyID,',
'       l.LeaseStatus,',
'       ''Rent: $'' || TO_CHAR(l.MonthlyRent,''FM999,999.00'')',
'FROM Lease l',
'WHERE UPPER(l.LeaseStatus) LIKE UPPER(''%'' || :P_SEARCH || ''%'')',
'ORDER BY 1, 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260417014400Z')
,p_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159008083964773247014)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159008084160517247016)
,p_query_column_id=>5
,p_column_alias=>'EXTRAINFO'
,p_column_display_sequence=>50
,p_column_heading=>'Extrainfo'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159008083820716247013)
,p_query_column_id=>2
,p_column_alias=>'RECORDID'
,p_column_display_sequence=>20
,p_column_heading=>'Recordid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159008083705071247012)
,p_query_column_id=>1
,p_column_alias=>'RECORDTYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Recordtype'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159008084018026247015)
,p_query_column_id=>4
,p_column_alias=>'STATUSFIELD'
,p_column_display_sequence=>40
,p_column_heading=>'Statusfield'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260417014400Z')
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159008083511040247010)
,p_button_sequence=>20
,p_button_name=>'SEARCH_BTN'
,p_static_id=>'search-btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Search'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260417014225Z')
,p_updated_on=>wwv_flow_imp.dz('20260417014225Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159008083401190247009)
,p_name=>'P_SEARCH'
,p_item_sequence=>10
,p_prompt=>'Search'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417014144Z')
,p_updated_on=>wwv_flow_imp.dz('20260417014144Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp.component_end;
end;
/
