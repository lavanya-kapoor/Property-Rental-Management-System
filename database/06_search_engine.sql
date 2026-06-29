CREATE OR REPLACE PROCEDURE sp_universal_search (
    p_search_term   IN  VARCHAR2,
    p_result_cursor OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN p_result_cursor FOR
        SELECT 'Property' AS RecordType,
               TO_CHAR(p.PropertyID) AS RecordID,
               p.Address || ', ' || p.City || ' ' || p.State AS Description,
               p.Status AS StatusField,
               'Rent: $' || TO_CHAR(p.RentAmount, 'FM999,999.00') AS ExtraInfo
        FROM Property p
        WHERE UPPER(p.Address) LIKE UPPER('%' || p_search_term || '%')
           OR UPPER(p.City)    LIKE UPPER('%' || p_search_term || '%')
           OR TO_CHAR(p.PropertyID) = p_search_term
 
        UNION ALL
 
        SELECT 'Tenant',
               TO_CHAR(t.TenantID),
               t.FirstName || ' ' || t.LastName,
               CASE WHEN t.IDVerified = 'Y' THEN 'Verified' ELSE 'Unverified' END,
               t.Email
        FROM Tenant t
        WHERE UPPER(t.FirstName || ' ' || t.LastName) LIKE UPPER('%' || p_search_term || '%')
           OR UPPER(t.Email) LIKE UPPER('%' || p_search_term || '%')
           OR TO_CHAR(t.TenantID) = p_search_term
 
        UNION ALL
 
        SELECT 'Lease',
               TO_CHAR(l.LeaseID),
               'Lease #' || l.LeaseID || ' | Property ' || l.PropertyID,
               l.LeaseStatus,
               'Rent: $' || TO_CHAR(l.MonthlyRent, 'FM999,999.00')
        FROM Lease l
        WHERE TO_CHAR(l.LeaseID) = p_search_term
           OR UPPER(l.LeaseStatus) LIKE UPPER('%' || p_search_term || '%')
 
        ORDER BY 1, 2;
END sp_universal_search;
 