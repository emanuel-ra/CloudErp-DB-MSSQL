CREATE TABLE CatStatus(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    Name VARCHAR(250) , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
)