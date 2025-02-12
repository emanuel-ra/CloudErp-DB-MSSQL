CREATE TABLE CustomerBalance(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    CustomerId INT NOT NULL , 
    TotalPurchases DECIMAL(18,2) DEFAULT 0 ,
    TotalInvoiced DECIMAL(18,2) DEFAULT 0 ,
    TotalPaid DECIMAL(18,2) DEFAULT 0 ,
    Balance DECIMAL(18,2) DEFAULT 0 ,
    FrozenBalance DECIMAL(18,2) DEFAULT 0 ,
    AvailableBalance DECIMAL(18,2) DEFAULT 0 ,
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
)