CREATE TABLE ProductsGallery(
    Id  INT PRIMARY KEY AUTO_INCREMENT , 
    ProductId INT NOT NULL ,     
    Width int , 
    Height int , 
    Version int , 
    Format VARCHAR(10) ,    
    PublicId VARCHAR(200) ,    
    Url VARCHAR(500) ,
    secureUrl VARCHAR(500) ,        
    UserId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)