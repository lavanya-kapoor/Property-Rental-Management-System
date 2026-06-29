-- ---- Q1: Property Listing by Landlord (Requirement R1) ----
-- Shows all properties with landlord name and current status.
SELECT
    p.PropertyID,
    l.FirstName || ' ' || l.LastName            AS LandlordName,
    p.Address || ', ' || p.City || ' ' || p.State AS FullAddress,
    p.PropertyType,
    p.Bedrooms,
    p.Bathrooms,
    p.SqFt,
    p.RentAmount,
    p.DepositAmount,
    p.Status,
    p.YearBuilt
FROM Property p
JOIN Landlord l ON p.LandlordID = l.LandlordID
ORDER BY l.LastName, p.Address;
 
 
-- ---- Q2: Tenant Directory (Requirement R2) ----
-- Full tenant list with verification status.
SELECT
    t.TenantID,
    t.FirstName || ' ' || t.LastName AS TenantName,
    t.Phone,
    t.Email,
    t.IDVerified,
    t.CreditScore,
    t.MoveInDate
FROM Tenant t
ORDER BY t.LastName, t.FirstName;
 
 
-- ---- Q3: Active Lease Summary (Requirement R3) ----
-- Shows active leases with linked property and tenant details.
SELECT
    l.LeaseID,
    p.Address || ', ' || p.City        AS PropertyAddress,
    t.FirstName || ' ' || t.LastName   AS TenantName,
    ld.FirstName || ' ' || ld.LastName AS LandlordName,
    l.StartDate,
    l.EndDate,
    l.MonthlyRent,
    l.DepositPaid,
    l.LeaseStatus,
    l.RenewalOption,
    ROUND(l.EndDate - SYSDATE)          AS DaysUntilExpiry
FROM Lease    l
JOIN Property p  ON l.PropertyID = p.PropertyID
JOIN Tenant   t  ON l.TenantID   = t.TenantID
JOIN Landlord ld ON l.LandlordID = ld.LandlordID
ORDER BY l.EndDate;
 
 
-- ---- Q4: Rent Payment Tracking (Requirement R4) ----
-- All payments with tenant and lease details; highlights overdue.
SELECT
    pay.PaymentID,
    t.FirstName || ' ' || t.LastName AS TenantName,
    p.Address                         AS PropertyAddress,
    pay.DueDate,
    pay.PaidDate,
    pay.AmountPaid,
    pay.PaymentMethod,
    pay.ReferenceNo,
    pay.Status,
    CASE
        WHEN pay.Status = 'Overdue' THEN ROUND(SYSDATE - pay.DueDate)
        ELSE 0
    END AS DaysOverdue
FROM Payment  pay
JOIN Lease    l ON pay.LeaseID  = l.LeaseID
JOIN Tenant   t ON pay.TenantID = t.TenantID
JOIN Property p ON l.PropertyID = p.PropertyID
ORDER BY pay.DueDate DESC;
 
 
-- ---- Q5: Open Maintenance Requests (Requirement R5) ----
-- Lists all open or in-progress requests with staff assignment.
SELECT
    mr.RequestID,
    p.Address || ', ' || p.City        AS PropertyAddress,
    t.FirstName || ' ' || t.LastName   AS TenantName,
    s.FirstName || ' ' || s.LastName   AS AssignedStaff,
    s.Specialty,
    mr.IssueDescription,
    mr.Priority,
    mr.Status,
    mr.DateSubmitted,
    mr.DateResolved,
    mr.Cost,
    ROUND(SYSDATE - mr.DateSubmitted)   AS DaysOpen
FROM MaintenanceRequest mr
JOIN Property           p  ON mr.PropertyID      = p.PropertyID
JOIN Tenant             t  ON mr.TenantID        = t.TenantID
LEFT JOIN Staff         s  ON mr.AssignedStaffID = s.StaffID
WHERE mr.Status IN ('Open', 'In Progress')
ORDER BY
    CASE mr.Priority
        WHEN 'Emergency' THEN 1
        WHEN 'High'      THEN 2
        WHEN 'Medium'    THEN 3
        WHEN 'Low'       THEN 4
    END,
    mr.DateSubmitted;
 
 
-- ---- Q6: Landlord Portfolio Dashboard (Requirement R6) ----
-- Summary per landlord: property count, occupancy, income.
SELECT
    ld.LandlordID,
    ld.FirstName || ' ' || ld.LastName AS LandlordName,
    COUNT(p.PropertyID)                AS TotalProperties,
    SUM(CASE WHEN p.Status = 'Occupied'  THEN 1 ELSE 0 END) AS OccupiedCount,
    SUM(CASE WHEN p.Status = 'Available' THEN 1 ELSE 0 END) AS VacantCount,
    ROUND(
        SUM(CASE WHEN p.Status = 'Occupied' THEN 1 ELSE 0 END) * 100.0
        / NULLIF(COUNT(p.PropertyID), 0), 1
    )                                  AS OccupancyPct,
    SUM(CASE WHEN p.Status = 'Occupied' THEN p.RentAmount ELSE 0 END) AS MonthlyIncome
FROM Landlord ld
LEFT JOIN Property p ON ld.LandlordID = p.LandlordID
GROUP BY ld.LandlordID, ld.FirstName, ld.LastName
ORDER BY ld.LastName;
 
 
-- ---- Q7: Universal Search Query (Requirement R7) ----
-- Parameterized search across Property, Tenant, and Lease.
-- In Oracle APEX: bind :SEARCH_TERM to a Text Field item (e.g. P1_SEARCH).
SELECT 'Property' AS RecordType,
       TO_CHAR(p.PropertyID) AS RecordID,
       p.Address || ', ' || p.City || ' ' || p.State AS Description,
       p.Status AS StatusField,
       'Rent: $' || TO_CHAR(p.RentAmount, 'FM999,999.00') AS ExtraInfo
FROM Property p
WHERE UPPER(p.Address) LIKE UPPER('%' || :SEARCH_TERM || '%')
   OR UPPER(p.City)    LIKE UPPER('%' || :SEARCH_TERM || '%')
   OR TO_CHAR(p.PropertyID) = :SEARCH_TERM
 
UNION ALL
 
SELECT 'Tenant' AS RecordType,
       TO_CHAR(t.TenantID) AS RecordID,
       t.FirstName || ' ' || t.LastName AS Description,
       CASE WHEN t.IDVerified = 'Y' THEN 'Verified' ELSE 'Unverified' END AS StatusField,
       t.Email AS ExtraInfo
FROM Tenant t
WHERE UPPER(t.FirstName || ' ' || t.LastName) LIKE UPPER('%' || :SEARCH_TERM || '%')
   OR UPPER(t.Email) LIKE UPPER('%' || :SEARCH_TERM || '%')
   OR TO_CHAR(t.TenantID) = :SEARCH_TERM
 
UNION ALL
 
SELECT 'Lease' AS RecordType,
       TO_CHAR(l.LeaseID) AS RecordID,
       'Lease #' || l.LeaseID || ' - Property ' || l.PropertyID AS Description,
       l.LeaseStatus AS StatusField,
       'Rent: $' || TO_CHAR(l.MonthlyRent, 'FM999,999.00') AS ExtraInfo
FROM Lease l
WHERE TO_CHAR(l.LeaseID) = :SEARCH_TERM
   OR UPPER(l.LeaseStatus) LIKE UPPER('%' || :SEARCH_TERM || '%')
 
ORDER BY 1, 2;
 
 
-- ---- Q8: Reporting Queries (Requirement R8) ----
 
-- Q8a: Occupancy Summary Report - grouped by property type
SELECT
    p.PropertyType,
    COUNT(*)                                                           AS TotalUnits,
    SUM(CASE WHEN p.Status = 'Occupied'  THEN 1 ELSE 0 END)           AS Occupied,
    SUM(CASE WHEN p.Status = 'Available' THEN 1 ELSE 0 END)           AS Vacant,
    SUM(CASE WHEN p.Status = 'Under Maintenance' THEN 1 ELSE 0 END)   AS UnderMaintenance,
    ROUND(AVG(p.RentAmount), 2)                                        AS AvgRent,
    SUM(CASE WHEN p.Status = 'Occupied' THEN p.RentAmount ELSE 0 END) AS TotalMonthlyRevenue
FROM Property p
GROUP BY p.PropertyType
ORDER BY p.PropertyType;
 
-- Q8b: Monthly Revenue Report - total collected per month
SELECT
    TO_CHAR(pay.PaidDate, 'YYYY-MM') AS PaymentMonth,
    COUNT(*)                          AS PaymentsReceived,
    SUM(pay.AmountPaid)               AS TotalCollected
FROM Payment pay
WHERE pay.Status = 'Paid'
GROUP BY TO_CHAR(pay.PaidDate, 'YYYY-MM')
ORDER BY PaymentMonth DESC;
 
-- Q8c: Lease Expiration Report - leases expiring within 60 days
SELECT
    l.LeaseID,
    p.Address || ', ' || p.City      AS PropertyAddress,
    t.FirstName || ' ' || t.LastName AS TenantName,
    t.Phone,
    t.Email,
    l.EndDate,
    ROUND(l.EndDate - SYSDATE)        AS DaysRemaining,
    l.RenewalOption
FROM Lease    l
JOIN Property p ON l.PropertyID = p.PropertyID
JOIN Tenant   t ON l.TenantID   = t.TenantID
WHERE l.LeaseStatus = 'Active'
  AND l.EndDate BETWEEN SYSDATE AND SYSDATE + 60
ORDER BY l.EndDate;
 
-- Q8d: Maintenance Summary Report - by priority and status
SELECT
    mr.Priority,
    mr.Status,
    COUNT(*)     AS RequestCount,
    ROUND(AVG(
        CASE WHEN mr.DateResolved IS NOT NULL
             THEN mr.DateResolved - mr.DateSubmitted
             ELSE NULL END
    ), 1)        AS AvgResolutionDays,
    SUM(mr.Cost) AS TotalCost
FROM MaintenanceRequest mr
GROUP BY mr.Priority, mr.Status
ORDER BY
    CASE mr.Priority
        WHEN 'Emergency' THEN 1
        WHEN 'High'      THEN 2
        WHEN 'Medium'    THEN 3
        WHEN 'Low'       THEN 4
    END,
    mr.Status;
 
-- Q8e: Overdue Payments Report - all overdue accounts with contact info
SELECT
    pay.PaymentID,
    t.FirstName || ' ' || t.LastName AS TenantName,
    t.Phone,
    t.Email,
    p.Address || ', ' || p.City      AS PropertyAddress,
    pay.DueDate,
    ROUND(SYSDATE - pay.DueDate)      AS DaysOverdue,
    pay.AmountPaid                    AS AmountDue
FROM Payment  pay
JOIN Lease    l ON pay.LeaseID  = l.LeaseID
JOIN Tenant   t ON pay.TenantID = t.TenantID
JOIN Property p ON l.PropertyID = p.PropertyID
WHERE pay.Status = 'Overdue'
ORDER BY pay.DueDate;
 
-- Q8f: Landlord Revenue Report - income per landlord YTD
SELECT
    ld.FirstName || ' ' || ld.LastName AS LandlordName,
    COUNT(DISTINCT p.PropertyID)        AS TotalProperties,
    SUM(CASE WHEN p.Status = 'Occupied' THEN 1 ELSE 0 END) AS OccupiedUnits,
    SUM(CASE WHEN p.Status = 'Occupied' THEN p.RentAmount ELSE 0 END) AS MonthlyExpected,
    NVL(SUM(CASE WHEN pay.Status = 'Paid'
                  AND EXTRACT(YEAR FROM pay.PaidDate) = EXTRACT(YEAR FROM SYSDATE)
                 THEN pay.AmountPaid ELSE 0 END), 0) AS CollectedYTD
FROM Landlord ld
LEFT JOIN Property p   ON ld.LandlordID = p.LandlordID
LEFT JOIN Lease    l   ON p.PropertyID  = l.PropertyID AND l.LeaseStatus = 'Active'
LEFT JOIN Payment  pay ON l.LeaseID     = pay.LeaseID
GROUP BY ld.LandlordID, ld.FirstName, ld.LastName
ORDER BY ld.LastName;