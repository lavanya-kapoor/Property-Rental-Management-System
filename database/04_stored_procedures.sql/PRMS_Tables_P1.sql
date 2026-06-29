-- PROCEDURE 1: Add or Update a Property Listing
CREATE OR REPLACE PROCEDURE sp_save_property (
    p_property_id  IN  NUMBER,
    p_landlord_id  IN  NUMBER,
    p_address      IN  VARCHAR2,
    p_city         IN  VARCHAR2,
    p_state        IN  VARCHAR2,
    p_zip          IN  VARCHAR2,
    p_type         IN  VARCHAR2,
    p_bedrooms     IN  NUMBER,
    p_bathrooms    IN  NUMBER,
    p_sqft         IN  NUMBER,
    p_rent         IN  NUMBER,
    p_deposit      IN  NUMBER,
    p_status       IN  VARCHAR2,
    p_year_built   IN  NUMBER,
    p_out_id       OUT NUMBER
)
AS
BEGIN
    IF p_property_id = 0 THEN
        INSERT INTO Property
            (LandlordID, Address, City, State, Zip, PropertyType,
             Bedrooms, Bathrooms, SqFt, RentAmount, DepositAmount, Status, YearBuilt)
        VALUES
            (p_landlord_id, p_address, p_city, p_state, p_zip, p_type,
             p_bedrooms, p_bathrooms, p_sqft, p_rent, p_deposit, p_status, p_year_built)
        RETURNING PropertyID INTO p_out_id;
    ELSE
        UPDATE Property SET
            LandlordID    = p_landlord_id,
            Address       = p_address,
            City          = p_city,
            State         = p_state,
            Zip           = p_zip,
            PropertyType  = p_type,
            Bedrooms      = p_bedrooms,
            Bathrooms     = p_bathrooms,
            SqFt          = p_sqft,
            RentAmount    = p_rent,
            DepositAmount = p_deposit,
            Status        = p_status,
            YearBuilt     = p_year_built
        WHERE PropertyID = p_property_id;
        p_out_id := p_property_id;
    END IF;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END sp_save_property;
 
 
