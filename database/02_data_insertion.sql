-- LANDLORDS (5 records)

INSERT INTO Landlord (FirstName, LastName, Phone, Email, Address, BankAccount, TaxID, JoinDate)
VALUES ('Robert',   'Smith',    '585-555-0101', 'r.smith@email.com',     '10 Main St, Rochester NY',   '****1234', 'TAX-001', DATE '2020-01-15');

INSERT INTO Landlord (FirstName, LastName, Phone, Email, Address, BankAccount, TaxID, JoinDate)
VALUES ('Linda',    'Johnson',  '585-555-0102', 'l.johnson@email.com',   '22 Oak Ave, Buffalo NY',     '****5678', 'TAX-002', DATE '2021-03-10');

INSERT INTO Landlord (FirstName, LastName, Phone, Email, Address, BankAccount, TaxID, JoinDate)
VALUES ('James',    'Williams', '585-555-0103', 'j.williams@email.com',  '5 Pine Rd, Syracuse NY',     '****9012', 'TAX-003', DATE '2022-06-01');

INSERT INTO Landlord (FirstName, LastName, Phone, Email, Address, BankAccount, TaxID, JoinDate)
VALUES ('Patricia', 'Moore',    '585-555-0104', 'p.moore@email.com',     '18 Lakeview Dr, Albany NY',  '****3456', 'TAX-004', DATE '2023-02-20');

INSERT INTO Landlord (FirstName, LastName, Phone, Email, Address, BankAccount, TaxID, JoinDate)
VALUES ('Thomas',   'Anderson', '585-555-0105', 't.anderson@email.com',  '33 Sunset Blvd, Troy NY',    '****7890', 'TAX-005', DATE '2023-08-05');


-- PROPERTIES (15 records across all 5 landlords)
-- Mix of: Occupied, Available, Under Maintenance, Inactive

-- Landlord 1 (Robert Smith) - 4 properties
INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (1, '45 Maple St',     'Rochester', 'NY', '14607', 'Apartment', 2, 1,   850, 1200.00, 2400.00, 'Occupied',          2005);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (1, '88 Elm Dr',       'Rochester', 'NY', '14610', 'House',     3, 2,  1400, 1800.00, 3600.00, 'Available',         1998);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (1, '14 Spruce Ct',    'Rochester', 'NY', '14612', 'Studio',    1, 1,   500,  850.00, 1700.00, 'Occupied',          2018);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (1, '200 River Rd',    'Rochester', 'NY', '14613', 'Condo',     2, 2,  1050, 1350.00, 2700.00, 'Inactive',          2001);

-- Landlord 2 (Linda Johnson) - 3 properties
INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (2, '12 Cedar Ln',     'Buffalo',   'NY', '14201', 'Condo',     2, 1.5,1100, 1400.00, 2800.00, 'Occupied',          2010);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (2, '99 Willow Way',   'Buffalo',   'NY', '14202', 'House',     4, 2.5,2000, 2200.00, 4400.00, 'Available',         2000);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (2, '55 Niagara Blvd', 'Buffalo',   'NY', '14207', 'Apartment', 1, 1,   620,  950.00, 1900.00, 'Occupied',          2012);

-- Landlord 3 (James Williams) - 3 properties
INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (3, '7 Birch Blvd',    'Syracuse',  'NY', '13201', 'Apartment', 1, 1,   600,  900.00, 1800.00, 'Under Maintenance', 2015);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (3, '30 Onondaga Ave', 'Syracuse',  'NY', '13204', 'House',     3, 2,  1350, 1650.00, 3300.00, 'Occupied',          1995);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (3, '62 Salt Springs', 'Syracuse',  'NY', '13208', 'Condo',     2, 1,   900, 1100.00, 2200.00, 'Available',         2008);

-- Landlord 4 (Patricia Moore) - 3 properties
INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (4, '9 Capitol View',  'Albany',    'NY', '12201', 'Apartment', 2, 1,   780, 1150.00, 2300.00, 'Occupied',          2014);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (4, '47 Hudson St',    'Albany',    'NY', '12202', 'House',     4, 3,  1800, 2100.00, 4200.00, 'Occupied',          2003);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (4, '15 Park Place',   'Albany',    'NY', '12205', 'Studio',    1, 1,   480,  800.00, 1600.00, 'Available',         2019);

-- Landlord 5 (Thomas Anderson) - 2 properties
INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (5, '22 Troy Hill Rd', 'Troy',      'NY', '12180', 'House',     3, 2,  1250, 1550.00, 3100.00, 'Occupied',          1999);

INSERT INTO Property (LandlordID, Address, City, State, Zip, PropertyType, Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
VALUES (5, '88 Federal St',   'Troy',      'NY', '12182', 'Apartment', 2, 1,   720, 1050.00, 2100.00, 'Under Maintenance', 2007);


-- TENANTS (10 records)
-- Mix of: verified/unverified, various credit scores

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Maria',   'Gonzalez', DATE '1990-05-14', '585-555-0201', 'm.gonzalez@email.com',  'Carlos Gonzalez 585-555-9001', 'Y', 720, DATE '2024-05-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('James',   'Brown',    DATE '1985-11-22', '585-555-0202', 'j.brown@email.com',     'Susan Brown 585-555-9002',     'Y', 680, DATE '2024-06-15');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Priya',   'Patel',    DATE '1995-03-08', '585-555-0203', 'p.patel@email.com',     'Raj Patel 585-555-9003',       'Y', 760, DATE '2025-01-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Kevin',   'Lee',      DATE '1992-07-30', '585-555-0204', 'k.lee@email.com',       'Amy Lee 585-555-9004',         'N', 640, DATE '2025-03-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Sarah',   'Thompson', DATE '1988-09-17', '585-555-0205', 's.thompson@email.com',  'Mike Thompson 585-555-9005',   'Y', 745, DATE '2024-08-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Daniel',  'Martinez', DATE '1993-12-04', '585-555-0206', 'd.martinez@email.com',  'Rosa Martinez 585-555-9006',   'Y', 700, DATE '2024-09-15');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Ashley',  'Wilson',   DATE '1997-02-28', '585-555-0207', 'a.wilson@email.com',    'Tom Wilson 585-555-9007',      'Y', 780, DATE '2025-02-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Michael', 'Taylor',   DATE '1983-06-11', '585-555-0208', 'm.taylor@email.com',    'Jane Taylor 585-555-9008',     'N', 610, DATE '2025-04-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Jennifer','Davis',    DATE '1991-10-22', '585-555-0209', 'j.davis@email.com',     'Paul Davis 585-555-9009',      'Y', 730, DATE '2024-11-01');

INSERT INTO Tenant (FirstName, LastName, DOB, Phone, Email, EmergencyContact, IDVerified, CreditScore, MoveInDate)
VALUES ('Ryan',    'Garcia',   DATE '1996-04-15', '585-555-0210', 'r.garcia@email.com',    'Ana Garcia 585-555-9010',      'Y', 695, DATE '2025-05-01');


-- STAFF (7 records)
-- All roles covered: Admin, Leasing Agent, Maintenance, Inspector

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('Alice',   'Turner',  'Admin',         '585-555-0301', 'a.turner@prms.com',  NULL);

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('Bob',     'Harris',  'Maintenance',   '585-555-0302', 'b.harris@prms.com',  'Plumbing');

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('Carol',   'White',   'Inspector',     '585-555-0303', 'c.white@prms.com',   'General');

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('David',   'Clark',   'Leasing Agent', '585-555-0304', 'd.clark@prms.com',   NULL);

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('Emma',    'Davis',   'Maintenance',   '585-555-0305', 'e.davis@prms.com',   'Electric');

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('Frank',   'Miller',  'Maintenance',   '585-555-0306', 'f.miller@prms.com',  'General');

INSERT INTO Staff (FirstName, LastName, Role, Phone, Email, Specialty)
VALUES ('Grace',   'Wilson',  'Leasing Agent', '585-555-0307', 'g.wilson@prms.com',  NULL);


-- LEASES (14 records)
-- Mix of: Active, Expired, Terminated
-- Some properties have prior expired lease + current active lease
-- LeaseIDs will be: 1-14 in order of insert

-- Property 1 (45 Maple St) - Tenant 1 (Maria Gonzalez): expired then renewed
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (1, 1, 1, DATE '2024-05-01', DATE '2025-04-30', 1200.00, 2400.00, 'Expired', 'Y', DATE '2024-04-25');

INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (1, 1, 1, DATE '2025-05-01', DATE '2026-04-30', 1250.00, 2400.00, 'Active',  'Y', DATE '2025-04-20');

-- Property 3 (14 Spruce Ct) - Tenant 5 (Sarah Thompson): active
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (3, 5, 1, DATE '2024-08-01', DATE '2025-07-31',  850.00, 1700.00, 'Expired', 'N', DATE '2024-07-28');

INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (3, 5, 1, DATE '2025-08-01', DATE '2026-07-31',  850.00, 1700.00, 'Active',  'N', DATE '2025-07-25');

-- Property 5 (12 Cedar Ln) - Tenant 2 (James Brown): active
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (5, 2, 2, DATE '2024-06-15', DATE '2025-06-14', 1400.00, 2800.00, 'Expired', 'N', DATE '2024-06-10');

INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (5, 2, 2, DATE '2025-06-15', DATE '2026-06-14', 1450.00, 2900.00, 'Active',  'Y', DATE '2025-06-10');

-- Property 7 (55 Niagara Blvd) - Tenant 6 (Daniel Martinez): active
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (7, 6, 2, DATE '2024-09-15', DATE '2025-09-14',  950.00, 1900.00, 'Active',  'Y', DATE '2024-09-10');

-- Property 9 (30 Onondaga Ave) - Tenant 3 (Priya Patel): active, expiring soon (within 60 days)
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (9, 3, 3, DATE '2025-05-01', DATE '2026-05-15', 1650.00, 3300.00, 'Active',  'Y', DATE '2025-04-28');

-- Property 11 (9 Capitol View) - Tenant 7 (Ashley Wilson): active
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (11, 7, 4, DATE '2025-02-01', DATE '2026-01-31', 1150.00, 2300.00, 'Active',  'N', DATE '2025-01-28');

-- Property 12 (47 Hudson St) - Tenant 9 (Jennifer Davis): active
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (12, 9, 4, DATE '2024-11-01', DATE '2025-10-31', 2100.00, 4200.00, 'Active',  'Y', DATE '2024-10-28');

-- Property 14 (22 Troy Hill Rd) - Tenant 4 (Kevin Lee): terminated early
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (14, 4, 5, DATE '2025-01-01', DATE '2025-12-31', 1550.00, 3100.00, 'Terminated', 'N', DATE '2024-12-28');

-- Property 14 (22 Troy Hill Rd) - Tenant 10 (Ryan Garcia): new active lease after termination
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (14, 10, 5, DATE '2025-05-01', DATE '2026-04-30', 1550.00, 3100.00, 'Active', 'Y', DATE '2025-04-25');

-- Property 12 (47 Hudson St) - Tenant 8 (Michael Taylor): expiring very soon (within 60 days)
INSERT INTO Lease (PropertyID, TenantID, LandlordID, StartDate, EndDate, MonthlyRent, DepositPaid, LeaseStatus, RenewalOption, SignedDate)
VALUES (12, 8, 4, DATE '2025-05-01', DATE '2026-05-31', 2100.00, 4200.00, 'Active',  'N', DATE '2025-04-30');

-- PAYMENTS (25 records)
-- LeaseID reference: 2=active(prop1), 4=active(prop3),
-- 6=active(prop5), 7=active(prop7), 8=active(prop9),
-- 9=active(prop11), 10=active(prop12), 12=active(prop14-Ryan)
-- Mix of: Paid, Overdue, Partial across multiple months

-- Lease 2 - Maria Gonzalez, Property 1 ($1250/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (2, 1, 1250.00, DATE '2025-06-01', DATE '2025-06-01', 'Bank Transfer', 'TXN-10001', 'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (2, 1, 1250.00, DATE '2025-07-01', DATE '2025-07-02', 'Bank Transfer', 'TXN-10002', 'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (2, 1, 1250.00, DATE '2025-08-01', DATE '2025-08-01', 'Bank Transfer', 'TXN-10003', 'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (2, 1, 1250.00, DATE '2026-01-01', DATE '2026-01-01', 'Bank Transfer', 'TXN-10004', 'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (2, 1, 1250.00, DATE '2026-02-01', DATE '2026-02-03', 'Bank Transfer', 'TXN-10005', 'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (2, 1, 1250.00, DATE '2026-03-01', NULL,              'Bank Transfer', NULL,        'Overdue');

-- Lease 4 - Sarah Thompson, Property 3 ($850/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (4, 5,  850.00, DATE '2025-09-01', DATE '2025-09-01', 'Online',        'ONL-2001',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (4, 5,  850.00, DATE '2025-10-01', DATE '2025-10-01', 'Online',        'ONL-2002',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (4, 5,  850.00, DATE '2026-01-01', DATE '2026-01-02', 'Online',        'ONL-2003',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (4, 5,  850.00, DATE '2026-02-01', DATE '2026-02-05', 'Online',        'ONL-2004',  'Paid');

-- Lease 6 - James Brown, Property 5 ($1450/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (6, 2, 1450.00, DATE '2025-07-15', DATE '2025-07-14', 'Check',         'CHK-3001',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (6, 2,  700.00, DATE '2026-01-15', DATE '2026-01-15', 'Cash',          'CSH-3002',  'Partial');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (6, 2, 1450.00, DATE '2026-02-15', NULL,              'Check',         NULL,        'Overdue');

-- Lease 7 - Daniel Martinez, Property 7 ($950/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (7, 6,  950.00, DATE '2025-10-15', DATE '2025-10-15', 'Bank Transfer', 'TXN-4001',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (7, 6,  950.00, DATE '2025-11-15', DATE '2025-11-14', 'Bank Transfer', 'TXN-4002',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (7, 6,  950.00, DATE '2026-01-15', DATE '2026-01-15', 'Bank Transfer', 'TXN-4003',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (7, 6,  950.00, DATE '2026-02-15', NULL,              'Bank Transfer', NULL,        'Overdue');

-- Lease 8 - Priya Patel, Property 9 ($1650/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (8, 3, 1650.00, DATE '2025-06-01', DATE '2025-06-01', 'Credit Card',   'CC-5001',   'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (8, 3, 1650.00, DATE '2026-01-01', DATE '2026-01-01', 'Credit Card',   'CC-5002',   'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (8, 3, 1650.00, DATE '2026-02-01', DATE '2026-02-01', 'Credit Card',   'CC-5003',   'Paid');

-- Lease 9 - Ashley Wilson, Property 11 ($1150/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (9, 7, 1150.00, DATE '2025-03-01', DATE '2025-03-01', 'Online',        'ONL-6001',  'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (9, 7,  500.00, DATE '2026-01-01', DATE '2026-01-10', 'Online',        'ONL-6002',  'Partial');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (9, 7, 1150.00, DATE '2026-02-01', NULL,              'Online',        NULL,        'Overdue');

-- Lease 12 - Ryan Garcia, Property 14 ($1550/mo)
INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (12, 10, 1550.00, DATE '2025-06-01', DATE '2025-06-01', 'Bank Transfer', 'TXN-7001', 'Paid');

INSERT INTO Payment (LeaseID, TenantID, AmountPaid, DueDate, PaidDate, PaymentMethod, ReferenceNo, Status)
VALUES (12, 10, 1550.00, DATE '2026-01-01', DATE '2026-01-01', 'Bank Transfer', 'TXN-7002', 'Paid');


-- MAINTENANCE REQUESTS (12 records)
-- All priorities (Low, Medium, High, Emergency)
-- All statuses (Open, In Progress, Resolved, Closed)


INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (1,  1, 2,    'Leaking kitchen faucet dripping constantly',              'Medium',    'Resolved',    DATE '2025-06-10', DATE '2025-06-13', 120.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (5,  2, 5,    'Electrical outlet in bedroom not working',                'High',      'In Progress', DATE '2026-02-20', NULL,              0.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (7,  6, 2,    'Bathroom toilet clogged - overflow risk',                 'Emergency', 'Resolved',    DATE '2025-10-01', DATE '2025-10-02', 250.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (1,  1, NULL, 'HVAC filter replacement needed - routine',                'Low',       'Open',        DATE '2026-03-15', NULL,              0.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (9,  3, 6,    'Broken window latch in bedroom - security concern',       'High',      'Resolved',    DATE '2025-08-05', DATE '2025-08-07', 180.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (11, 7, 2,    'Water heater making loud noise and not heating properly', 'High',      'In Progress', DATE '2026-02-10', NULL,              0.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (3,  5, 6,    'Ceiling paint peeling in living room',                   'Low',       'Closed',      DATE '2025-09-20', DATE '2025-10-01',  95.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (12, 9, 5,    'Air conditioning unit not cooling - compressor issue',    'Emergency', 'Resolved',    DATE '2025-07-15', DATE '2025-07-16', 420.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (14, 10, 2,   'Kitchen sink drain blocked completely',                   'Medium',    'Open',        DATE '2026-03-20', NULL,              0.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (5,  2, NULL, 'Front door lock stiff and hard to turn',                 'Medium',    'Open',        DATE '2026-03-25', NULL,              0.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (9,  3, 6,    'Mold spotted in bathroom ceiling corner',                'High',      'In Progress', DATE '2026-03-10', NULL,              0.00);

INSERT INTO MaintenanceRequest (PropertyID, TenantID, AssignedStaffID, IssueDescription, Priority, Status, DateSubmitted, DateResolved, Cost)
VALUES (7,  6, 5,    'Garage door opener not responding to remote',            'Low',       'Resolved',    DATE '2025-12-01', DATE '2025-12-03',  60.00);


-- INSPECTIONS (10 records)
-- All types: Move-In, Move-Out, Routine, Emergency
-- Mix of Pass and Fail outcomes


INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (1,  3, DATE '2024-05-01', 'Move-In',   'All appliances working. Minor scuff on living room wall noted.',           'P', DATE '2025-05-01');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (5,  3, DATE '2024-06-15', 'Move-In',   'Good condition. Noted outdated smoke detector - replaced on site.',        'P', DATE '2025-06-15');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (9,  3, DATE '2025-05-01', 'Move-In',   'Property in acceptable condition. HVAC filter needs replacement soon.',    'P', DATE '2026-05-01');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (2,  3, DATE '2026-02-10', 'Routine',   'Vacant property inspection. Roof tiles intact. Yard overgrown.',           'F', DATE '2026-08-10');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (7,  3, DATE '2025-10-05', 'Emergency', 'Emergency visit post toilet overflow. Water damage to bathroom floor.',    'F', DATE '2026-04-05');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (11, 3, DATE '2025-02-01', 'Move-In',   'New tenant move-in. All systems functional. No issues noted.',             'P', DATE '2026-02-01');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (12, 3, DATE '2024-11-01', 'Move-In',   'Property in excellent condition. Updated kitchen and bathrooms.',          'P', DATE '2025-11-01');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (14, 3, DATE '2025-05-01', 'Move-In',   'New lease. Minor wear on carpet in master bedroom. Noted for records.',   'P', DATE '2026-05-01');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (3,  3, DATE '2025-08-01', 'Routine',   'Annual inspection. Appliances in good shape. Touch-up paint needed.',     'P', DATE '2026-08-01');

INSERT INTO Inspection (PropertyID, StaffID, InspectionDate, InspectionType, Findings, PassFail, NextDueDate)
VALUES (1,  3, DATE '2025-05-10', 'Routine',   'Annual check. Faucet leak resolved per maintenance log. Good condition.', 'P', DATE '2026-05-10');


COMMIT;
