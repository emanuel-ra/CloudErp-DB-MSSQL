CREATE TABLE Services(    
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    AccountId INT NOT NULL , 
    Code VARCHAR(100) , 
    Name VARCHAR(250) , 
    SatUseCode VARCHAR(10) ,
    SatUnitCode VARCHAR(10) ,
    UserId INT NOT NULL , 
    ExternalId INT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)