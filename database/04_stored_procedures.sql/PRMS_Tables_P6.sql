-- PROCEDURE 6: Assign Staff and Update Maintenance Request

CREATE OR REPLACE PROCEDURE sp_update_maintenance (
    p_request_id    IN NUMBER,
    p_staff_id      IN NUMBER,
    p_status        IN VARCHAR2,
    p_cost          IN NUMBER,
    p_date_resolved IN DATE
)
AS
BEGIN
    UPDATE MaintenanceRequest
    SET
        AssignedStaffID = p_staff_id,
        Status          = p_status,
        Cost            = NVL(p_cost, Cost),
        DateResolved    = CASE
                              WHEN p_status IN ('Resolved','Closed')
                              THEN NVL(p_date_resolved, SYSDATE)
                              ELSE DateResolved
                          END
    WHERE RequestID = p_request_id;
 
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_update_maintenance;