CREATE TABLE Vehicles (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Unique ID for each vehicle, auto-incremented
    AccountId INT NOT NULL ,
    LicensePlate NVARCHAR(15) NOT NULL UNIQUE, -- Vehicle license plate
    Make NVARCHAR(50) NOT NULL,               -- Vehicle manufacturer (e.g., Toyota, Ford)
    Model NVARCHAR(50) NOT NULL,              -- Vehicle model (e.g., Corolla, F-150)
    Year INT NOT NULL,                        -- Year of manufacture
    Color NVARCHAR(30),                       -- Vehicle color
    Mileage INT,                              -- Current mileage (in kilometers or miles)
    VehicleType NVARCHAR(20) NOT NULL CHECK (VehicleType IN ('Car', 'Truck', 'Van', 'Motorcycle', 'Other')), -- Type of vehicle
    StatusId INT NOT NULL ,                   -- Vehicle status 
    UserId INT ,                   -- Vehicle status 
    PurchaseDate DATE,                        -- Date when the vehicle was purchased    
    CreatedAt DATETIME DEFAULT GETDATE(),     -- Record creation timestamp
    UpdatedAt DATETIME DEFAULT GETDATE()      -- Last update timestamp
);