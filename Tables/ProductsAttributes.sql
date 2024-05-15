-- ProductsAttributes
CREATE TABLE ProductsAttributes(
    Id  INT PRIMARY KEY AUTO_INCREMENT , 
    GroupId INT NOT NULL , 
    Name VARCHAR(250) ,
    StatusId INT NOT NULL ,    
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)