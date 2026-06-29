-- PROCEDURE 3: Create a New Lease Agreement
CREATE OR REPLACE PROCEDURE sp_create_lease (
    p_property_id    IN  NUMBER,
    p_tenant_id      IN  NUMBER,
    p_landlord_id    IN  NUMBER,
    p_start_date     IN  DATE,
    p_end_date       IN  DATE,
    p_monthly_rent   IN  NUMBER,
    p_deposit_paid   IN  NUMBER,
    p_renewal_option IN  CHAR,
    p_out_lease_id   OUT NUMBER
)
AS
BEGIN
    IF p_end_date <= p_start_date THEN
        RAISE_APPLICATION_ERROR(-20001, 'Lease end date must be after start date.');
    END IF;
 
    INSERT INTO Lease
        (PropertyID, TenantID, LandlordID, StartDate, EndDate,
         MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
    VALUES
        (p_property_id, p_tenant_id, p_landlord_id, p_start_date, p_end_date,
         p_monthly_rent, p_deposit_paid, 'Active', p_renewal_option, SYSDATE)
    RETURNING LeaseID INTO p_out_lease_id;
 
    UPDATE Property
       SET Status = 'Occupied'
     WHERE PropertyID = p_property_id;
 
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_create_lease;
 
 
