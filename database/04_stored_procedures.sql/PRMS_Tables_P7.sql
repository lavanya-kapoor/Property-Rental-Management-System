-- PROCEDURE 7: Log a Property Inspection

CREATE OR REPLACE PROCEDURE sp_log_inspection (
    p_property_id       IN  NUMBER,
    p_staff_id          IN  NUMBER,
    p_inspection_date   IN  DATE,
    p_type              IN  VARCHAR2,
    p_findings          IN  VARCHAR2,
    p_pass_fail         IN  CHAR,
    p_next_due_date     IN  DATE,
    p_out_inspection_id OUT NUMBER
)
AS
BEGIN
    INSERT INTO Inspection
        (PropertyID, StaffID, InspectionDate, InspectionType,
         Findings, PassFail, NextDueDate)
    VALUES
        (p_property_id, p_staff_id, p_inspection_date, p_type,
         p_findings, p_pass_fail, p_next_due_date)
    RETURNING InspectionID INTO p_out_inspection_id;
 
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_log_inspection;
