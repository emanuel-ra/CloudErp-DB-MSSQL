CREATE TABLE Routes(
    Id  INT PRIMARY KEY IDENTITY(1,1) ,     
    ParentId INT ,
    Code VARCHAR(250) UNIQUE , 
    Title VARCHAR(250) , 
    isEnable int not null default 0 , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() 
)