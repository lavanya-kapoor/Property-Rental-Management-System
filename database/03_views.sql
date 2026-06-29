-- View 1: All active leases with full property, tenant, landlord details
CREATE OR REPLACE VIEW v_active_leases AS
SELECT
    l.LeaseID,
    l.LeaseStatus,
    l.StartDate,
    l.EndDate,
    l.MonthlyRent,
    l.RenewalOption,
    ROUND(l.EndDate - SYSDATE) AS DaysUntilExpiry,
    p.PropertyID,
    p.Address || ', ' || p.City || ' ' || p.State AS PropertyAddress,
    p.PropertyType,
    p.Status AS PropertyStatus,
    t.TenantID,
    t.FirstName || ' ' || t.LastName AS TenantName,
    t.Phone   AS TenantPhone,
    t.Email   AS TenantEmail,
    ld.LandlordID,
    ld.FirstName || ' ' || ld.LastName AS LandlordName
FROM Lease    l
JOIN Property p  ON l.PropertyID = p.PropertyID
JOIN Tenant   t  ON l.TenantID   = t.TenantID
JOIN Landlord ld ON l.LandlordID = ld.LandlordID
WHERE l.LeaseStatus = 'Active';
 
-- View 2: Overdue payments with tenant contact info
CREATE OR REPLACE VIEW v_overdue_payments AS
SELECT
    pay.PaymentID,
    pay.DueDate,
    pay.AmountPaid,
    ROUND(SYSDATE - pay.DueDate)      AS DaysOverdue,
    t.TenantID,
    t.FirstName || ' ' || t.LastName  AS TenantName,
    t.Phone,
    t.Email,
    p.Address || ', ' || p.City       AS PropertyAddress
FROM Payment  pay
JOIN Lease    l ON pay.LeaseID  = l.LeaseID
JOIN Tenant   t ON pay.TenantID = t.TenantID
JOIN Property p ON l.PropertyID = p.PropertyID
WHERE pay.Status = 'Overdue'
ORDER BY pay.DueDate;
 
-- View 3: Open and in-progress maintenance requests with priority sort
CREATE OR REPLACE VIEW v_open_maintenance AS
SELECT
    mr.RequestID,
    mr.Priority,
    mr.Status,
    mr.DateSubmitted,
    mr.IssueDescription,
    ROUND(SYSDATE - mr.DateSubmitted) AS DaysOpen,
    p.PropertyID,
    p.Address || ', ' || p.City       AS PropertyAddress,
    t.FirstName || ' ' || t.LastName  AS TenantName,
    s.FirstName || ' ' || s.LastName  AS AssignedStaff,
    s.Specialty
FROM MaintenanceRequest mr
JOIN Property p   ON mr.PropertyID      = p.PropertyID
JOIN Tenant   t   ON mr.TenantID        = t.TenantID
LEFT JOIN Staff s ON mr.AssignedStaffID = s.StaffID
WHERE mr.Status IN ('Open', 'In Progress');
 
-- View 4: Landlord revenue and occupancy summary
CREATE OR REPLACE VIEW v_landlord_revenue AS
SELECT
    ld.LandlordID,
    ld.FirstName || ' ' || ld.LastName AS LandlordName,
    COUNT(DISTINCT p.PropertyID)        AS TotalProperties,
    SUM(CASE WHEN p.Status = 'Occupied' THEN 1 ELSE 0 END) AS OccupiedUnits,
    SUM(CASE WHEN p.Status = 'Occupied' THEN p.RentAmount ELSE 0 END) AS MonthlyExpectedIncome,
    NVL(SUM(pay.AmountPaid), 0)         AS TotalCollectedYTD
FROM Landlord ld
LEFT JOIN Property p   ON ld.LandlordID = p.LandlordID
LEFT JOIN Lease    l   ON p.PropertyID  = l.PropertyID AND l.LeaseStatus = 'Active'
LEFT JOIN Payment  pay ON l.LeaseID     = pay.LeaseID
                       AND pay.Status   = 'Paid'
                       AND EXTRACT(YEAR FROM pay.PaidDate) = EXTRACT(YEAR FROM SYSDATE)
GROUP BY ld.LandlordID, ld.FirstName, ld.LastName;
 
-- View 5: Leases expiring within 60 days
CREATE OR REPLACE VIEW v_expiring_leases AS
SELECT
    l.LeaseID,
    l.EndDate,
    ROUND(l.EndDate - SYSDATE)        AS DaysRemaining,
    l.RenewalOption,
    l.MonthlyRent,
    p.PropertyID,
    p.Address || ', ' || p.City       AS PropertyAddress,
    t.TenantID,
    t.FirstName || ' ' || t.LastName  AS TenantName,
    t.Phone,
    t.Email,
    ld.FirstName || ' ' || ld.LastName AS LandlordName
FROM Lease    l
JOIN Property p  ON l.PropertyID = p.PropertyID
JOIN Tenant   t  ON l.TenantID   = t.TenantID
JOIN Landlord ld ON l.LandlordID = ld.LandlordID
WHERE l.LeaseStatus = 'Active'
  AND l.EndDate BETWEEN SYSDATE AND SYSDATE + 60
ORDER BY l.EndDate;
 
-- View 6: Full inspection history per property
CREATE OR REPLACE VIEW v_inspection_history AS
SELECT
    i.InspectionID,
    i.InspectionDate,
    i.InspectionType,
    i.PassFail,
    i.Findings,
    i.NextDueDate,
    p.PropertyID,
    p.Address || ', ' || p.City       AS PropertyAddress,
    s.FirstName || ' ' || s.LastName  AS InspectorName
FROM Inspection i
JOIN Property p ON i.PropertyID = p.PropertyID
JOIN Staff    s ON i.StaffID    = s.StaffID
ORDER BY i.InspectionDate DESC;