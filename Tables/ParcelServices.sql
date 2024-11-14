-- Servicio de paquetería
CREATE TABLE ParcelServices(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    Code VARCHAR(100) NOT NULL UNIQUE ,    
    Name VARCHAR(250) NOT NULL ,        
    BaseCost DECIMAL(16, 2) , 
    Percentage DECIMAL(4, 2) ,
    StatusId INT NOT NULL DEFAULT 1 , 
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE() 
)