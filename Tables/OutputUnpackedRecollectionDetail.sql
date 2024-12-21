CREATE TABLE OutputUnpackedRecollectionDetail (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId INT NOT NULL ,
    ProductId INT NOT NULL ,
    ProductCode VARCHAR(500) NOT NULL , 
    Quantity INT NOT NULL ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() ,
    UpdateAt DATETIME NOT NULL DEFAULT GETDATE() ,
    StatusId INT NOT NULL DEFAULT 1
);