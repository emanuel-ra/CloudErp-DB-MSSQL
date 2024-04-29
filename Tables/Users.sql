CREATE TABLE Users(
    Id INT PRIMARY KEY AUTO_INCREMENT , 
    Name VARCHAR(250) , 
    UserName VARCHAR(250) , 
    ProfilePhoto VARCHAR(250) , 
    Email VARCHAR(250) , 
    Password VARCHAR(250) , 
    StatusId INT NOT NULL , 
    RoleId INT NOT NULL , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)