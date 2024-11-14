CREATE TABLE SalesOrdersDetail(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    OrderId INT NOT NULL ,
    ProductId INT NOT NULL , 
    Quantity INT NOT NULL ,         
    Price DECIMAL(16,6) NOT NULL DEFAULT 0 ,
    SubTotal DECIMAL(16, 6) NULL ,
    Discount DECIMAL(16,6)  NOT NULL DEFAULT 0 ,     
    Total DECIMAL(16, 6) NULL ,    
    Comments  varchar(300) ,
    IsPromotion BIT NOT NULL DEFAULT 0 ,
    IsPreSale BIT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
)