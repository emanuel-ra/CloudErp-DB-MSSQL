-- ProductsColors
CREATE TABLE ProductsColors(
    Id  INT PRIMARY KEY AUTO_INCREMENT , 
    Name VARCHAR(250) ,
    Color VARCHAR(250) UNIQUE ,
    StatusId INT NOT NULL ,    
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)