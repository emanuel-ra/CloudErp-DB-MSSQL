CREATE TABLE IntegrationFedEx(
	Id INT PRIMARY KEY IDENTITY(1,1) , 
	CompanyId INT NOT NULL , 
	StreetLines VARCHAR(35) ,
	City VARCHAR(35) ,
	StateOrProvidenceCode VARCHAR(2) ,
	PostalCode VARCHAR(10) ,
	CountryCode VARCHAR(2) ,
	residential bit not null default 0 ,
	StatusId INT NOT NULL DEFAULT 1 , 
	UserId INT NOT NULL , 
	CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() , 
	UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
)
