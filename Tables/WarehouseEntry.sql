CREATE TABLE WarehouseEntry (
    Id INT PRIMARY KEY IDENTITY(1,1), -- Unique identifier for the entry  
    Folio VARCHAR(100) NULL, -- Unique identifier for the entry 
    BranchId INT NOT NULL, -- Foreign key to the branch table   
    WarehouseId INT NOT NULL, -- Foreign key to the warehouse table      
    TotalQuantity INT NOT NULL DEFAULT 0, -- Total quantity of items in the entry   
    Notes NVARCHAR(500) NULL , -- Additional notes or comments
    UserId INT NOT NULL , -- Foreign key to the user table    
    StatusId INT NOT NULL, -- Foreign key to the status table
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(), -- Timestamp of when the entry was created    
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE() -- Timestamp of when the entry was created        
);

