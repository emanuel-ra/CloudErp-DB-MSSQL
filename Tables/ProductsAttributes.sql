-- ProductsAttributes
CREATE TABLE ProductsAttributes(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    GroupId INT NOT NULL , 
    Name VARCHAR(250) ,
    StatusId INT NOT NULL ,    
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)