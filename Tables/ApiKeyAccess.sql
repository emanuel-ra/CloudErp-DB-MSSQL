CREATE TABLE ApiKeyAccess(
    Id INT PRIMARY KEY IDENTITY(1,1) ,
    Description VARCHAR(250) ,
    Token VARCHAR(50) NOT NULL DEFAULT NEWID() ,
    IsEnable SMALLINT NOT NULL DEFAULT 1 , 
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)