-- PROCEDURE 2: Register or Update a Tenant

CREATE OR REPLACE PROCEDURE sp_save_tenant (
    p_tenant_id    IN  NUMBER,
    p_first_name   IN  VARCHAR2,
    p_last_name    IN  VARCHAR2,
    p_dob          IN  DATE,
    p_phone        IN  VARCHAR2,
    p_email        IN  VARCHAR2,
    p_emergency    IN  VARCHAR2,
    p_id_verified  IN  CHAR,
    p_credit_score IN  NUMBER,
    p_move_in_date IN  DATE,
    p_out_id       OUT NUMBER
)
AS
BEGIN
    IF p_tenant_id = 0 THEN
        INSERT INTO Tenant
            (FirstName, LastName, DOB, Phone, Email, EmergencyContact,
             IDVerified, CreditScore, MoveInDate)
        VALUES
            (p_first_name, p_last_name, p_dob, p_phone, p_email, p_emergency,
             p_id_verified, p_credit_score, p_move_in_date)
        RETURNING TenantID INTO p_out_id;
    ELSE
        UPDATE Tenant SET
            FirstName        = p_first_name,
            LastName         = p_last_name,
            DOB              = p_dob,
            Phone            = p_phone,
            Email            = p_email,
            EmergencyContact = p_emergency,
            IDVerified       = p_id_verified,
            CreditScore      = p_credit_score,
            MoveInDate       = p_move_in_date
        WHERE TenantID = p_tenant_id;
        p_out_id := p_tenant_id;
    END IF;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_save_tenant;
 
