
CREATE TABLE ProductListPriceRelation(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    AccountId INT NOT NULL , 
    PriceId INT NOT NULL , 
    ProductId INT NOT NULL , 
    Price DECIMAL(18,2) ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)