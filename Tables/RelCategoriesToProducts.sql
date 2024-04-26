CREATE TABLE RelCategoriesToProducts(
    Id INT PRIMARY KEY AUTO_INCREMENT , 
    CategoryId  INT NOT NULL , 
    ProductId  INT NOT NULL , 
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW() 
)