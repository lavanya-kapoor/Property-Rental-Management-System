prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
--   Manifest
--     AUTHENTICATION: Oracle APEX Accounts
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>137183636994838360186
,p_default_application_id=>195840
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAVANYAKAPOOR'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(159005430793115465621)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'15758026135169'
,p_created_on=>wwv_flow_imp.dz('20260417004146Z')
,p_updated_on=>wwv_flow_imp.dz('20260417004146Z')
,p_created_by=>'LK4803@G.RIT.EDU'
,p_updated_by=>'LK4803@G.RIT.EDU'
);
wwv_flow_imp.component_end;
end;
/
