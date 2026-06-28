prompt --application/shared_components/user_interface/lovs/lease_leasestatus
begin
--   Manifest
--     LEASE.LEASESTATUS
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
 p_id=>wwv_flow_imp.id(159005687277942466191)
,p_lov_name=>'LEASE.LEASESTATUS'
,p_static_id=>'lease-leasestatus'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'LEASE'
,p_return_column_name=>'LEASEID'
,p_display_column_name=>'LEASESTATUS'
,p_default_sort_column_name=>'LEASESTATUS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'15758026205560'
,p_created_on=>wwv_flow_imp.dz('20260417004151Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004151Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp.component_end;
end;
/
