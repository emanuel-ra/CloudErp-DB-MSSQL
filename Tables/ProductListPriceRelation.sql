CREATE TABLE ProductListPriceRelation(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    PriceId INT NOT NULL , 
    ProductId INT NOT NULL , 
    Price DECIMAL(18,2) ,
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)