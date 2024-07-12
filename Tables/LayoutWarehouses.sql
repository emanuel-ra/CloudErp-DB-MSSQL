CREATE TABLE LayoutWarehouses (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    ParentId INT NOT NULL DEFAULT 0  , 
    BranchId INT NOT NULL DEFAULT 0  , 
    WarehouseId INT NOT NULL DEFAULT 0  , 
    LayoutCode VARCHAR(250) , 
    LayoutName VARCHAR(250) , 
    LayoutNote VARCHAR(250) , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() ,
    UserId INT NOT NULL ,
    StatusId INT NOT NULL 
);