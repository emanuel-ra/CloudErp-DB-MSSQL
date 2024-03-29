CREATE TABLE Categories(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    ParentId INT  , 
    Name VARCHAR(250) , 
    Logo VARCHAR(250) , 
    IsEnableECommerce INT NOT NULL DEFAULT 0 ,
    StatusId INT NOT NULL ,
    UserId INT NOT NULL ,
    ExternalId INT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)