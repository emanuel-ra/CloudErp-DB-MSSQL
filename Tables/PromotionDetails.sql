CREATE TABLE PromotionDetails (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    PromotionId INT NOT NULL ,    
    ProductId INT NOT NULL ,
    Price DECIMAL (18, 2) NOT NULL ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() ,  
);