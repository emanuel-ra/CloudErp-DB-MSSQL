CREATE TABLE QuotationLogs (
    Id INT PRIMARY KEY IDENTITY(1,1),
	QuoteId INT NOT NULL , 
    MovementType VARCHAR(50) NOT NULL,
    Description VARCHAR(500) NULL,    
	JsonData NVARCHAR(MAX) ,
    UserId INT NOT NULL,
	CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,       
	CHECK(MovementType IN('INSERT','UPDATE','DELETE'))
);
