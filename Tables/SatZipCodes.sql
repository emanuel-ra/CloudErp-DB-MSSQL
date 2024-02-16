CREATE TABLE SatZipCodes(
    Id INT PRIMARY KEY IDENTITY(1,1) ,
    Code VARCHAR(50) , 
    StateCode VARCHAR(50) , 
    CountryCode VARCHAR(50) , 
    LocalityCode VARCHAR(50) , 
    StatusId INT NOT NULL ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)