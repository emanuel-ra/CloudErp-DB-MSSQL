CREATE TABLE Employees(
    Id INT PRIMARY KEY AUTO_INCREMENT , 
    Code VARCHAR(50) , 
    Name VARCHAR(250) , 
    ForeignName  VARCHAR(250) ,  
    Gender VARCHAR(20) , 
    Position VARCHAR(100) , 
    Telephone VARCHAR(20) , 
    ContactMobile VARCHAR(20) , 
    Email  VARCHAR(250) , 
    Address  VARCHAR(500) , 
    Birthday  VARCHAR(250) , 
    Memo  VARCHAR(250) , 
    ExternalId INT NOT NULL DEFAULT 0 ,
    StatusId INT NOT NULL ,
    CreatedAt DATETIME NOT NULL DEFAULT NOW() , 
    UpdatedAt DATETIME NOT NULL DEFAULT NOW()
)