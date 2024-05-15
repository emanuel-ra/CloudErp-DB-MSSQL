CREATE TABLE SatZipCodes(
    Id INT PRIMARY KEY AUTO_INCREMENT ,
    Code VARCHAR(50) , 
    Version VARCHAR(10) , 
    StateCode VARCHAR(50) , 
    CountryCode VARCHAR(50) , 
    LocalityCode VARCHAR(50) ,     
    StatusId INT NOT NULL ,
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW() 
)