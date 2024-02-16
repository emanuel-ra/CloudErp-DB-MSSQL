CREATE TABLE Warehouses(
    ID INT PRIMARY KEY IDENTITY(1,1) , 
    code VARCHAR(100) , 
    name VARCHAR(250) , 
    branch_id INT NOT NULL , 
    address VARCHAR(250) , 
    contact VARCHAR(150) , 
    tel VARCHAR(100) , 
    is_locked INT NOT NULL DEFAULT 0 , 
    enable_to_download_stock INT NOT NULL DEFAULT 0 ,
    download_at DATETIME NOT NULL DEFAULT GETDATE() , 
    external_id INT NOT NULL DEFAULT 0 , 
    idStatus INT NOT NULL DEFAULT 1 
)