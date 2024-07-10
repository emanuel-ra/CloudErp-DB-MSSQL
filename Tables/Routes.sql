CREATE TABLE Routes(
    Id  INT PRIMARY KEY IDENTITY(1,1) ,     
    ParentId INT ,
    Code VARCHAR(250) UNIQUE , 
    Title VARCHAR(250) , 
    Type VARCHAR(250) , 
    Icon VARCHAR(250) , 
    Url VARCHAR(250) , 
    IsEnable int not null default 0 , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)