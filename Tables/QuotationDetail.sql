
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

-- 

CREATE TABLE QuotationDetail(
	Id INT PRIMARY KEY IDENTITY(1,1) ,
	QuoteId INT NOT NULL ,
	ProductId INT NULL ,
	BranchId INT NOT NULL ,
	WarehouseId INT NOT NULL ,
	Quantity INT NOT NULL DEFAULT 0 ,
	Price DECIMAL(16, 6) NULL ,	
	SubTotal DECIMAL(16, 6) NULL ,
	Discount DECIMAL(16, 6) NULL ,
	Total DECIMAL(16, 6) NULL ,
	Comments VARCHAR(500) NULL ,
	IsPromotion BIT NOT NULL DEFAULT 0 ,
	IsModified BIT NOT NULL DEFAULT 0 ,
	IsService BIT NOT NULL DEFAULT 0 ,
	IsPreSale BIT NOT NULL DEFAULT 0 ,
	Preorder bit NULL,
	CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
)
