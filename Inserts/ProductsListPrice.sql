DECLARE @ACCOUNTID INT 

SET @ACCOUNTID  = 1 

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Market Price','MXN',GETDATE(),GETDATE())

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Wholesale Price','MXN',GETDATE(),GETDATE())

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Member Price','MXN',GETDATE(),GETDATE())

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Box Price','MXN',GETDATE(),GETDATE())

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Vip Price','MXN',GETDATE(),GETDATE())

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Premium Price','MXN',GETDATE(),GETDATE())

INSERT INTO ProductListPrice (AccountId,Name,Currency,CreatedAt,UpdatedAt)
	VALUES (@ACCOUNTID ,'Plus Price','MXN',GETDATE(),GETDATE())