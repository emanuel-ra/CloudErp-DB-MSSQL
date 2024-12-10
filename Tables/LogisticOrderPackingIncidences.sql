CREATE TABLE LogisticOrderPackingIncidences(
    Id INT PRIMARY KEY IDENTITY(1,1),
	OrderId INT NOT NULL , 
    UserId INT NOT NULL,
    UserName VARCHAR(250) ,
    ProductId INT NOT NULL ,
    Quantity INT NOT NULL , 
    Type VARCHAR(50) NOT NULL,
    Description VARCHAR(500) NULL,    
	CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,       	
)