prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Inspection Form'
,p_alias=>'INSPECTION-FORM'
,p_step_title=>'Inspection Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_last_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159005814953662467277)
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
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159005806110612467264)
,p_plug_name=>'Inspection'
,p_static_id=>'inspection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'INSPECTION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005812087403467274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005813506653467276)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P17_INSPECTIONID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005812750669467275)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(159005806110612467264)
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
,p_button_condition=>'P17_INSPECTIONID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159005813148849467275)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P17_INSPECTIONID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005808445679467269)
,p_name=>'P17_FINDINGS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Findings'
,p_source=>'FINDINGS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005807660533467268)
,p_name=>'P17_INSPECTIONDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspectiondate'
,p_source=>'INSPECTIONDATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
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
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005806424177467266)
,p_name=>'P17_INSPECTIONID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspectionid'
,p_source=>'INSPECTIONID'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005808050369467269)
,p_name=>'P17_INSPECTIONTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspectiontype'
,p_source=>'INSPECTIONTYPE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005809266404467271)
,p_name=>'P17_NEXTDUEDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nextduedate'
,p_source=>'NEXTDUEDATE'
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
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005808811363467270)
,p_name=>'P17_PASSFAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passfail'
,p_source=>'PASSFAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005806806852467267)
,p_name=>'P17_PROPERTYID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
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
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159005807264278467268)
,p_name=>'P17_STAFFID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_item_source_plug_id=>wwv_flow_imp.id(159005806110612467264)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Staffid'
,p_source=>'STAFFID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STAFF.FIRSTNAME'
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
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004204Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159005813978553467276)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(159005806110612467264)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Inspection Form'
,p_static_id=>'initialize-form-inspection-form'
,p_internal_uid=>159005813978553467276
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159005814304155467276)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(159005806110612467264)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Inspection Form'
,p_static_id=>'process-form-inspection-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>159005814304155467276
,p_created_on=>wwv_flow_imp.dz('20260417004202Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004202Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp.component_end;
end;
/
