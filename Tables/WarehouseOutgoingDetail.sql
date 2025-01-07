CREATE TABLE WarehouseOutgoingDetail (
    Id INT PRIMARY KEY IDENTITY(1,1), -- Unique identifier for the entry
    WarehouseOutgoingId INT NOT NULL, -- Foreign key to the WarehouseEntry table  
    ProductId INT NOT NULL, -- Foreign key to the Product table
    Quantity INT NOT NULL, -- Quantity of the product in the entry      
    ExternalId INT NULL, -- External identifier for the entry
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(), -- Timestamp of when the entry was created    
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE() -- Timestamp of when the entry was created        
);