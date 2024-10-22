CREATE TABLE SalesOrdersDetail(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    OrderId INT NOT NULL ,
    ProductId INT NOT NULL , 
    Price DECIMAL(16,6) NOT NULL DEFAULT 0 ,
    Discount DECIMAL(16,6)  NOT NULL DEFAULT 0 ,     
    Quantity INT NOT NULL ,         
    Comments  varchar(300) ,
    IsPromotion BIT NOT NULL DEFAULT 0 , 
    IsPreSale BIT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
)