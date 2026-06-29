-- PROCEDURE 4: Record a Rent Payment

CREATE OR REPLACE PROCEDURE sp_record_payment (
    p_lease_id       IN  NUMBER,
    p_tenant_id      IN  NUMBER,
    p_amount_paid    IN  NUMBER,
    p_due_date       IN  DATE,
    p_paid_date      IN  DATE,
    p_method         IN  VARCHAR2,
    p_reference_no   IN  VARCHAR2,
    p_out_payment_id OUT NUMBER
)
AS
    v_monthly_rent NUMBER;
    v_status       VARCHAR2(20);
BEGIN
    SELECT MonthlyRent INTO v_monthly_rent
    FROM Lease WHERE LeaseID = p_lease_id;
 
    IF p_amount_paid >= v_monthly_rent THEN
        v_status := 'Paid';
    ELSIF p_amount_paid > 0 THEN
        v_status := 'Partial';
    ELSE
        v_status := 'Overdue';
    END IF;
 
    INSERT INTO Payment
        (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
    VALUES
        (p_lease_id, p_tenant_id, p_amount_paid, p_due_date, p_paid_date,
         p_method, p_reference_no, v_status)
    RETURNING PaymentID INTO p_out_payment_id;
 
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_record_payment;