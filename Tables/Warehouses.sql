CREATE TABLE Warehouses(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    Code VARCHAR(100) , 
    Name VARCHAR(250) , 
    BranchId INT NOT NULL , 
    Address VARCHAR(250) , 
    Contact VARCHAR(150) , 
    Telephone VARCHAR(100) , 
    IsLocked INT NOT NULL DEFAULT 0 , 
    EnableToDownloadStock INT NOT NULL DEFAULT 0 ,
    DownloadAt DATETIME NOT NULL DEFAULT NOW() , 
    ExternalId INT NOT NULL DEFAULT 0 , 
    StatusId INT NOT NULL DEFAULT 1 ,
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()  
)