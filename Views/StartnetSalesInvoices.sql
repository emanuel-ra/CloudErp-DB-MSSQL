CREATE TABLE StartnetSalesInvoices (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    StartnetOrderId INT not null ,
    BillCode VARCHAR(250) , 
    BillDate DATETIME  , 
    BranchId INT NOT NULL DEFAULT 0  , 
    BranchName VARCHAR(250) , 
    WarehouseId INT NOT NULL DEFAULT 0  , 
    WarehouseName VARCHAR(250) , 
    CustomBillCode VARCHAR(250) , 
    Remark VARCHAR(250) , 
    BillTotalQuantity DECIMAL (16, 6) NOT NULL DEFAULT 0  , 
    BillTotalAmount DECIMAL (16, 6) NOT NULL DEFAULT 0  , 
    HandlerId INT NOT NULL DEFAULT 0  , 
    HandlerName VARCHAR(250) , 
    FinalReviewedDate DATETIME  , 
    ReviewOperatorId INT NOT NULL DEFAULT 0  , 
    ModifyTime DATETIME  , 
    IsCancelled INT NOT NULL DEFAULT 0  , 
    DownloadAt DATETIME  , 
    ReferencedSalesOrderId INT NOT NULL DEFAULT 0  , 
    ReferencedSalesOrderBillCode VARCHAR(250) , 
    LarkId VARCHAR(250)
);