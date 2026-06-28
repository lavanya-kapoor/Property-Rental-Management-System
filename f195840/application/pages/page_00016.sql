prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'Maintenance Form'
,p_alias=>'MAINTENANCE-FORM'
,p_step_title=>'Maintenance Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260417004159Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_last_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159005803303471467149)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(159005431000110465621)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159005792861053467133)
,p_plug_name=>'Maintenancerequest'
,p_static_id=>'maintenancerequest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MAINTENANCEREQUEST'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005800504460467147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005801941981467148)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P16_REQUESTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005801142954467148)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P16_REQUESTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005801519493467148)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P16_REQUESTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005794467302467139)
,p_name=>'P16_ASSIGNEDSTAFFID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assignedstaffid'
,p_source=>'ASSIGNEDSTAFFID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STAFF.FIRSTNAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005797181040467143)
,p_name=>'P16_COST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005796718448467142)
,p_name=>'P16_DATERESOLVED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dateresolved'
,p_source=>'DATERESOLVED'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005796311580467141)
,p_name=>'P16_DATESUBMITTED'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Datesubmitted'
,p_source=>'DATESUBMITTED'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005795160018467140)
,p_name=>'P16_ISSUEDESCRIPTION'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issuedescription'
,p_source=>'ISSUEDESCRIPTION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005795576643467140)
,p_name=>'P16_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005793684583467136)
,p_name=>'P16_PROPERTYID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Propertyid'
,p_source=>'PROPERTYID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROPERTY.ADDRESS'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005793207126467136)
,p_name=>'P16_REQUESTID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requestid'
,p_source=>'REQUESTID'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005795929937467141)
,p_name=>'P16_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005794048934467138)
,p_name=>'P16_TENANTID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_item_source_plug_id=>wwv_flow_imp.id(159005792861053467133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tenantid'
,p_source=>'TENANTID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TENANT.FIRSTNAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159005802372904467149)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(159005792861053467133)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Maintenance Form'
,p_static_id=>'initialize-form-maintenance-form'
,p_internal_uid=>159005802372904467149
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159005802763593467149)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(159005792861053467133)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Maintenance Form'
,p_static_id=>'process-form-maintenance-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>159005802763593467149
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp.component_end;
end;
/
