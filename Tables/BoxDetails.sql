CREATE TABLE BoxDetails (
    Id INT IDENTITY(1,1) NOT NULL,
    BoxId INT NOT NULL,
    UserId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
);

----


CREATE TABLE PackedOrderBoxesDetail (
    Id INT IDENTITY(1,1) NOT NULL,
    BoxId INT NOT NULL,
    UserId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
);