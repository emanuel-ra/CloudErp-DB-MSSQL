CREATE TABLE ProductsGallery(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    ProductId INT NOT NULL , 
    ImageUrl VARCHAR(500) ,
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)