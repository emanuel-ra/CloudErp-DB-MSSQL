
CREATE TABLE QuotationDetail(
	ID INT PRIMARY KEY IDENTITY(1,1) , 
	Quote_id int NOT NULL,
	Product_id int NULL,
	Branch_id int NOT NULL,
	Warehouse_id int NOT NULL,
	Quantity int NOT NULL,
	Is_service bit NOT NULL,
	Price decimal(16, 6) NULL,
	Comments varchar(300) NULL,
	IsModified bit NULL,
	Preorder bit NULL,
	LarkID varchar(1000) NULL
)
