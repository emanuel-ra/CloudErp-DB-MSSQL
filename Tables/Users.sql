CREATE TABLE Users(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    Name VARCHAR(250) , 
    UserName VARCHAR(250) , 
    PublicId VARCHAR(200) ,
    ProfilePhoto VARCHAR(250) , 
    Email VARCHAR(250) , 
    Password VARCHAR(250) , 
    StatusId INT NOT NULL , 
    RoleId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE()
)