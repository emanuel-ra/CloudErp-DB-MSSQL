CREATE TABLE IntegrationStartNetAccess(
	Id INT PRIMARY KEY IDENTITY(1,1) ,
	AccountId INT NOT NULL , 
	AppId VARCHAR(100) NOT NULL  ,
	AppKey VARCHAR(100) NOT NULL  ,
	AppUrl VARCHAR(250) NOT NULL  ,
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)