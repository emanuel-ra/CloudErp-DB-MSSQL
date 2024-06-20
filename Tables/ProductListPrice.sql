CREATE TABLE ProductListPrice(
    Id INT PRIMARY KEY IDENTITY(1,1) ,
    AccountId INT NOT NULL , 
    Name VARCHAR(250) , 
    Currency VARCHAR(5) , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)