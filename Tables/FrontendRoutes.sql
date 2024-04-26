CREATE TABLE FrontendRoutes(
    Id  INT PRIMARY KEY AUTO_INCREMENT , 
    ParentId INT ,
    Title VARCHAR(250) , 
    Path VARCHAR(250) , 
    Element VARCHAR(150) , 
    IsEnable int not null default 0 , 
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW() 
)