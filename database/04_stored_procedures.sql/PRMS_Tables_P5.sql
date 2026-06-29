-- PROCEDURE 5: Submit a Maintenance Request

CREATE OR REPLACE PROCEDURE sp_submit_maintenance (
    p_property_id    IN  NUMBER,
    p_tenant_id      IN  NUMBER,
    p_description    IN  VARCHAR2,
    p_priority       IN  VARCHAR2,
    p_out_request_id OUT NUMBER
)
AS
BEGIN
    INSERT INTO MaintenanceRequest
        (PropertyID, TenantID, IssueDescription, Priority, Status, DateSubmitted)
    VALUES
        (p_property_id, p_tenant_id, p_description, p_priority, 'Open', SYSDATE)
    RETURNING RequestID INTO p_out_request_id;
 
    IF p_priority = 'Emergency' THEN
        UPDATE Property
           SET Status = 'Under Maintenance'
         WHERE PropertyID = p_property_id;
    END IF;
 
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_submit_maintenance;