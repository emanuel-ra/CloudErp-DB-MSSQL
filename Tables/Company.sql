CREATE TABLE Companies(
    Id INT PRIMARY KEY AUTO_INCREMENT , 
    Name VARCHAR(250) , 
    LogoUrl VARCHAR(250) , 
    Email VARCHAR(250) , 
    ContactEmail VARCHAR(250) , 
    ContactName VARCHAR(250) , 
    TaxId  VARCHAR(20) , 
    TaxName VARCHAR(250) , 
    TaxRegimeCode VARCHAR(250) , 
    TaxZipCode VARCHAR(5) ,
    TaxAddress VARCHAR(500) , 
    TaxEmail VARCHAR(250) ,
    StatusId INT NOT NULL , 
    UserId INT NOT NULL ,
    ExternalId INT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW() 
)