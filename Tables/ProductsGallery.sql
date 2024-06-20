CREATE TABLE ProductsGallery(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    ProductId INT NOT NULL ,     
    Width int , 
    Height int , 
    Version int , 
    Format VARCHAR(10) ,    
    PublicId VARCHAR(200) ,    
    Url VARCHAR(500) ,
    SecureUrl VARCHAR(500) ,        
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()  , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)