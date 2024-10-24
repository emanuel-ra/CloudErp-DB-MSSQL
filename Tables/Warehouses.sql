CREATE TABLE Warehouses(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    Code VARCHAR(100) , 
    Name VARCHAR(250) , 
    BranchId INT NOT NULL , 
    Address VARCHAR(250) , 
    Contact VARCHAR(150) , 
    Telephone VARCHAR(100) , 
    IsLocked INT NOT NULL DEFAULT 0 , 
    EnableToDownloadStock INT NOT NULL DEFAULT 0 ,
    ExternalId INT NOT NULL DEFAULT 0 , 
    StatusId INT NOT NULL DEFAULT 1 ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()  
)

