CREATE TABLE Company(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    Name VARCHAR(250) , 
    LogoUrl VARCHAR(250) , 
    Email
    ContactEmail
    ContactName
    TaxId  VARCHAR(20) , 
    TaxName VARCHAR(250) , 
    TaxRegimeCode VARCHAR(250) , 
    TaxZipCode VARCHAR(5) 
    TaxAddress VARCHAR(500) , 
    TaxEmail VARCHAR(250) ,
    StatusId INT NOT NULL , 
    UserId INT NOT NULL ,
    ExternalId INT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
)