CREATE TABLE Promotions (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    AccountId INT NOT NULL ,
    StartDate DATETIME NOT NULL DEFAULT GETDATE() , 
    EndDate DATETIME NOT NULL DEFAULT GETDATE() , 
    Title VARCHAR(250) , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() ,    
    StatusId INT NOT NULL 
);