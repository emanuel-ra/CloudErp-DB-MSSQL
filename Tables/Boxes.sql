CREATE TABLE PackedOrderBoxes (
    Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    BoxNum INT NOT NULL,
    OrderId INT NOT NULL,
    UserId INT NOT NULL,
    Shipping VARCHAR(250) NOT NULL,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
    BoxLength DECIMAL(10,2) NULL,
    BoxWidth DECIMAL(10,2) NULL,
    BoxWeight DECIMAL(10,2) NULL,
    BoxHeight DECIMAL(10,2) NULL,
    UrlPicture VARCHAR(250) NULL,
    NamePicture VARCHAR(250) NULL,
    TrackingNumber VARCHAR(250) NULL,
    UrlDocument VARCHAR(250) NULL,
    NameDocument VARCHAR(250) NULL,
    Review INT NULL,
    IsOut INT NULL,
    DateOut DATETIME NULL,
    UserIdOut INT NULL,
    IsCombined INT NULL ,
    ImagePublicId VARCHAR(100) NULL,
);
