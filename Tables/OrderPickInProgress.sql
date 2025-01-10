 CREATE TABLE OrderPickInProgress 
 (
    Id INT PRIMARY KEY IDENTITY(1,1),         
    AssignId INT ,                    
    OrderId INT,                      
    ProductId INT,                   
    Quantity INT ,            
    OrderQuantity INT NOT NULL,              
    UserId INT NOT NULL , 
	CreatedAt DATETIME2 DEFAULT GETDATE()
);
