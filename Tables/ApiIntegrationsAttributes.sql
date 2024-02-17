CREATE TABLE ApiIntegrationsAttributes(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    IntegrationId INT NOT NULL ,
    Key VARCHAR(50) NOT NULL , 
    Value VARCHAR(50) NOT NULL , 
    Version VARCHAR(50) , 
    Description VARCHAR(500) , 
    StatusId INT NOT NULL , 
    UserId INT NOT NULL ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)