CREATE TABLE Branches(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    Code  VARCHAR(25) , 
    Name  VARCHAR(250) , 
    ZipCode  VARCHAR(10) , 
    Address  VARCHAR(500) , 
    Email  VARCHAR(250) , 
    CompanyId INT NOT NULL , 
    IsEnable INT NOT NULL ,
    StatusId INT NOT NULL , 
    UserId INT NOT NULL ,
    ExternalId INT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)