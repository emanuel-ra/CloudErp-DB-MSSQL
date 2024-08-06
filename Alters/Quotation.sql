ALTER TABLE Quotation ADD CompanyID INT NOT NULL

ALTER TABLE Quotation ADD ShippingCompany VARCHAR(50)

ALTER TABLE Quotation ADD RequirePacking int not null default 1 