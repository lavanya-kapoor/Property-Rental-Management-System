CREATE TABLE Landlord (
    LandlordID   NUMBER         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    FirstName    VARCHAR2(50)   NOT NULL,
    LastName     VARCHAR2(50)   NOT NULL,
    Phone        VARCHAR2(20),
    Email        VARCHAR2(100)  NOT NULL UNIQUE,
    Address      VARCHAR2(200),
    BankAccount  VARCHAR2(30),
    TaxID        VARCHAR2(20),
    JoinDate     DATE           DEFAULT SYSDATE
);

CREATE TABLE Property (
    PropertyID     NUMBER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    LandlordID     NUMBER          NOT NULL,
    Address        VARCHAR2(200)   NOT NULL,
    City           VARCHAR2(100)   NOT NULL,
    State          VARCHAR2(50)    NOT NULL,
    Zip            VARCHAR2(10),
    PropertyType   VARCHAR2(30)    DEFAULT 'Apartment'
                                   CHECK (PropertyType IN ('Apartment','House','Condo','Commercial','Studio')),
    Bedrooms       NUMBER(2)       DEFAULT 1,
    Bathrooms      NUMBER(3,1)     DEFAULT 1,
    SqFt           NUMBER(6),
    RentAmount     NUMBER(10,2)    NOT NULL CHECK (RentAmount >= 0),
    DepositAmount  NUMBER(10,2)    CHECK (DepositAmount >= 0),
    Status         VARCHAR2(20)    DEFAULT 'Available'
                                   CHECK (Status IN ('Available','Occupied','Under Maintenance','Inactive')),
    YearBuilt      NUMBER(4),
    CONSTRAINT fk_prop_landlord FOREIGN KEY (LandlordID) REFERENCES Landlord(LandlordID)
);

CREATE TABLE Tenant (
    TenantID         NUMBER         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    FirstName        VARCHAR2(50)   NOT NULL,
    LastName         VARCHAR2(50)   NOT NULL,
    DOB              DATE,
    Phone            VARCHAR2(20),
    Email            VARCHAR2(100)  UNIQUE,
    EmergencyContact VARCHAR2(200),
    IDVerified       CHAR(1)        DEFAULT 'N' CHECK (IDVerified IN ('Y','N')),
    CreditScore      NUMBER(3)      CHECK (CreditScore BETWEEN 300 AND 850),
    MoveInDate       DATE
);

CREATE TABLE Staff (
    StaffID    NUMBER        GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    FirstName  VARCHAR2(50)  NOT NULL,
    LastName   VARCHAR2(50)  NOT NULL,
    Role       VARCHAR2(50)  NOT NULL
               CHECK (Role IN ('Admin','Leasing Agent','Maintenance','Inspector')),
    Phone      VARCHAR2(20),
    Email      VARCHAR2(100) UNIQUE,
    Specialty  VARCHAR2(50)
);

CREATE TABLE Lease (
    LeaseID        NUMBER         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    PropertyID     NUMBER         NOT NULL,
    TenantID       NUMBER         NOT NULL,
    LandlordID     NUMBER         NOT NULL,
    StartDate      DATE           NOT NULL,
    EndDate        DATE           NOT NULL,
    MonthlyRent    NUMBER(10,2)   NOT NULL CHECK (MonthlyRent > 0),
    DepositPaid    NUMBER(10,2)   DEFAULT 0,
    LeaseStatus    VARCHAR2(20)   DEFAULT 'Active'
                                  CHECK (LeaseStatus IN ('Active','Expired','Terminated')),
    RenewalOption  CHAR(1)        DEFAULT 'N' CHECK (RenewalOption IN ('Y','N')),
    SignedDate     DATE           DEFAULT SYSDATE,
    CONSTRAINT chk_lease_dates   CHECK (EndDate > StartDate),
    CONSTRAINT fk_lease_property FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID),
    CONSTRAINT fk_lease_tenant   FOREIGN KEY (TenantID)   REFERENCES Tenant(TenantID),
    CONSTRAINT fk_lease_landlord FOREIGN KEY (LandlordID) REFERENCES Landlord(LandlordID)
);

CREATE TABLE Payment (
    PaymentID      NUMBER         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    LeaseID        NUMBER         NOT NULL,
    TenantID       NUMBER         NOT NULL,
    AmountPaid     NUMBER(10,2)   NOT NULL CHECK (AmountPaid >= 0),
    DueDate        DATE           NOT NULL,
    PaidDate       DATE,
    PaymentMethod  VARCHAR2(30)   DEFAULT 'Bank Transfer'
                                  CHECK (PaymentMethod IN ('Bank Transfer','Check','Cash','Online','Credit Card')),
    ReferenceNo    VARCHAR2(50),
    Status         VARCHAR2(20)   DEFAULT 'Paid'
                                  CHECK (Status IN ('Paid','Overdue','Partial')),
    CONSTRAINT fk_pay_lease  FOREIGN KEY (LeaseID)  REFERENCES Lease(LeaseID)  ON DELETE CASCADE,
    CONSTRAINT fk_pay_tenant FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID)
);

CREATE TABLE MaintenanceRequest (
    RequestID        NUMBER         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    PropertyID       NUMBER         NOT NULL,
    TenantID         NUMBER         NOT NULL,
    AssignedStaffID  NUMBER,
    IssueDescription CLOB           NOT NULL,
    Priority         VARCHAR2(20)   DEFAULT 'Medium'
                                    CHECK (Priority IN ('Low','Medium','High','Emergency')),
    Status           VARCHAR2(20)   DEFAULT 'Open'
                                    CHECK (Status IN ('Open','In Progress','Resolved','Closed')),
    DateSubmitted    DATE           DEFAULT SYSDATE,
    DateResolved     DATE,
    Cost             NUMBER(10,2)   DEFAULT 0 CHECK (Cost >= 0),
    CONSTRAINT fk_mr_property FOREIGN KEY (PropertyID)      REFERENCES Property(PropertyID),
    CONSTRAINT fk_mr_tenant   FOREIGN KEY (TenantID)        REFERENCES Tenant(TenantID),
    CONSTRAINT fk_mr_staff    FOREIGN KEY (AssignedStaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE Inspection (
    InspectionID    NUMBER         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    PropertyID      NUMBER         NOT NULL,
    StaffID         NUMBER         NOT NULL,
    InspectionDate  DATE           NOT NULL,
    InspectionType  VARCHAR2(30)   DEFAULT 'Routine'
                                   CHECK (InspectionType IN ('Move-In','Move-Out','Routine','Emergency')),
    Findings        CLOB,
    PassFail        CHAR(1)        CHECK (PassFail IN ('P','F')),
    NextDueDate     DATE,
    CONSTRAINT fk_insp_property FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID),
    CONSTRAINT fk_insp_staff    FOREIGN KEY (StaffID)    REFERENCES Staff(StaffID)
);