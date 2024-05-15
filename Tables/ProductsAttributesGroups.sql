-- ProductsAttributesGroups

CREATE TABLE ProductsAttributesGroups (
    Id  INT PRIMARY KEY AUTO_INCREMENT , 
    Name VARCHAR(250) , 
    Type VARCHAR(50) , 
    StatusId INT NOT NULL ,    
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)