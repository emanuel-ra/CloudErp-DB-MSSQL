 /*
  every time that the order is pause, it progress will be store in this table 
 */
 CREATE TABLE OrderValidationProgress 
 (
    Id INT PRIMARY KEY IDENTITY(1,1),         
    AssignId INT ,                    
    OrderId INT,                      
    ProductId INT,                   
    Quantity INT ,             -- cantidad escaneada
    OrderQuantity INT NOT NULL,                -- la cantidad que se pide    
    UserId INT NOT NULL , 
	CreatedAt DATETIME2 DEFAULT GETDATE() ,  -- cuando se creo
	UpdatedAt DATETIME2 DEFAULT GETDATE() ,  -- ultima actualización
);
