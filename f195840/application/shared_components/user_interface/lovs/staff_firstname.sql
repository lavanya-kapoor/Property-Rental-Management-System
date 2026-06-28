prompt --application/shared_components/user_interface/lovs/staff_firstname
begin
--   Manifest
--     STAFF.FIRSTNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>137183636994838360186
,p_default_application_id=>195840
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAVANYAKAPOOR'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(159005794584723467139)
,p_lov_name=>'STAFF.FIRSTNAME'
,p_static_id=>'staff-firstname'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STAFF'
,p_return_column_name=>'STAFFID'
,p_display_column_name=>'FIRSTNAME'
,p_default_sort_column_name=>'FIRSTNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'15758026317606'
,p_created_on=>wwv_flow_imp.dz('20260417004201Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004201Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp.component_end;
end;
/
