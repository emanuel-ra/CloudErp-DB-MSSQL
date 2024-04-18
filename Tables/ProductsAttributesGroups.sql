-- ProductsAttributesGroups

CREATE TABLE ProductsAttributesGroups (
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    Name VARCHAR(250) , 
    Type VARCHAR(50) , 
    StatusId INT NOT NULL ,    
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)