CREATE TABLE DeliveryQuotationRequest (
    Id INT PRIMARY KEY IDENTITY(1,1), -- Unique identifier for the request
    AccountId INT NOT NULL ,          -- Reference to the related account
    QuoteId INT NOT NULL,             -- Reference to the related quotation
    UserId INT NOT NULL,              -- User making the request
    GrantedUserId INT NOT NULL,       -- User who grants/approves the request
    DeliveryTypeId INT NOT NULL,      -- Type of delivery (e.g., standard, express)
    ParcelServiceId INT NULL,         -- Optional: ID of the parcel service, if applicable
    FreightCompanyId INT NULL,        -- Optional: ID of the freight company, if applicable
    RequiredPacking BIT,              -- Indicates if packing is required (0 or 1)
    RequiredSafeguard BIT,            -- Indicates if safeguarding is required (0 or 1)

    -- Address details
    Address VARCHAR(500),             -- Full delivery address
    ZipCode VARCHAR(15),              -- ZIP/Postal code
    Region VARCHAR(500),              -- Region name
    State VARCHAR(200),               -- State name
    City VARCHAR(50),                 -- City name
    ExteriorNumber VARCHAR(50),       -- Exterior number of the building
    InteriorNumber VARCHAR(50),       -- Interior number/unit, if any

    Comments VARCHAR(500),            -- Additional comments or details
    StatusId INT NOT NULL,            -- Current status of the request (e.g., Pending, Approved)

    -- Timestamps
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(), -- Request creation timestamp
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE(), -- Last updated timestamp
    Granted DATETIME2 NULL                          -- Timestamp when the request was granted
);