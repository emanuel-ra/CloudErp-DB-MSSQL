CREATE TABLE Employees(
    ID INT PRIMARY KEY IDENTITY(1,1) , 
    Code VARCHAR(50) , 
    Name VARCHAR(250) , 
    Foreign_name  VARCHAR(250) ,  
    Gender VARCHAR(20) , 
    Position VARCHAR(100) , 
    Tel VARCHAR(20) , 
    Contact_mobile VARCHAR(20) , 
    Email  VARCHAR(250) , 
    Address  VARCHAR(500) , 
    Birthday  VARCHAR(250) , 
    Memo  VARCHAR(250) , 
    External_id INT NOT NULL DEFAULT 0 ,
    idStatus INT NOT NULL 
)