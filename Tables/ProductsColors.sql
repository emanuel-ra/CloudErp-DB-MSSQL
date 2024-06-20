-- ProductsColors
CREATE TABLE ProductsColors(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    Name VARCHAR(250) ,
    Color VARCHAR(250) UNIQUE ,
    StatusId INT NOT NULL ,    
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)