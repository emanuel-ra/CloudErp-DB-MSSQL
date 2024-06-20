-- ProductsColors
CREATE TABLE ProductsColorsRelation(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    ProductId INT NOT NULL , 
    ColorId INT NOT NULL ,     
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)