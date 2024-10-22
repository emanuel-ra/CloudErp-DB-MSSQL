-- parcel-service | local-pickup | freight-companies | internal-deliver-service   
CREATE TABLE DeliveryTypes (
    Id INT PRIMARY KEY IDENTITY(1,1), -- Auto-incremented primary key
    KeyCode VARCHAR(100) NOT NULL UNIQUE,
    Name VARCHAR(100) NOT NULL,       -- Name of the delivery type    
    BaseCost DECIMAL(10, 2) NOT NULL, -- Base cost for the delivery type    
    StatusId INT NOT NULL DEFAULT 1,  -- 1 if active, 0 if inactive
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(), -- Date when the record is created
    UpdateAt DATETIME NOT NULL DEFAULT GETDATE()  -- Date when the record is last modified
);
