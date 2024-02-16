CREATE TABLE FrontendRoutes(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    ParentId INT NOT NULL ,
    Title VARCHAR(250) , 
    Path VARCHAR(250) , 
    Element VARCHAR(150) , 
    isEnable int not null default 0 , 
     CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)