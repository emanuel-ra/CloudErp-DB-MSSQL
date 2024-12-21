ALTER TABLE Quotation ADD CompanyID INT NOT NULL

ALTER TABLE Quotation ADD ShippingCompany VARCHAR(50)

ALTER TABLE Quotation ADD RequirePacking int not null default 1 



ALTER TABLE Quotation ADD Address VARCHAR(500)  
ALTER TABLE Quotation ADD ZipCode VARCHAR(15)  
ALTER TABLE Quotation ADD Region VARCHAR(500) 
ALTER TABLE Quotation ADD State VARCHAR(100)  
ALTER TABLE Quotation ADD City VARCHAR(200)  
ALTER TABLE Quotation ADD ExteriorNumber VARCHAR(50)  
ALTER TABLE Quotation ADD InteriorNumber VARCHAR(50)  
ALTER TABLE Quotation ADD Phone VARCHAR(200)  

ALTER TABLE Quotation ADD Folio VARCHAR(100)
