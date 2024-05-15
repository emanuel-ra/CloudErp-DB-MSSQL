-- ProductsAttributesRelation
CREATE TABLE ProductsAttributesRelation (
    Id  INT PRIMARY KEY AUTO_INCREMENT , 
    ProductId INT NOT NULL , 
    AttributeId INT NOT NULL , 
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)