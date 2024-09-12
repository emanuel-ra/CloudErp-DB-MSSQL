CREATE TABLE FreightCompanies (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- Unique identifier for each freight company
    CompanyName NVARCHAR(255) NOT NULL,              -- Name of the freight company
    ContactName NVARCHAR(255) NULL,                  -- Contact person's name
    PhoneNumber NVARCHAR(50) NULL,                   -- Contact phone number
    Email NVARCHAR(255) NULL,                        -- Contact email
    Address NVARCHAR(500) NULL,                      -- Address of the company
    City NVARCHAR(100) NULL,                         -- City where the company is located
    State NVARCHAR(100) NULL,                        -- State or region
    PostalCode NVARCHAR(20) NULL,                    -- Postal/ZIP code
    Country NVARCHAR(100) NULL,                      -- Country
    TaxID NVARCHAR(50) NULL,                         -- Tax identification number
	FixedCost decimal(16, 6) NOT NULL DEFAULT 0 ,	 -- Fixed cost 
    CreatedAt DATETIME2 DEFAULT SYSDATETIME(),       -- Record creation timestamp
    UpdatedAt DATETIME2 DEFAULT SYSDATETIME()        -- Last updated timestamp
);