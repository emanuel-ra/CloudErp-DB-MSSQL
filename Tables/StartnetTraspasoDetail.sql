CREATE TABLE StartnetTraspasoDetail(
	Id INT PRIMARY KEY IDENTITY(1,1) ,
	TraspasoId int NOT NULL,
	StartnetId int NOT NULL,
	TraspasoBarcode varchar(150) NOT NULL,
	ProdId int NOT NULL,
	Quantity decimal(18, 0) NOT NULL,
	CreatedAt datetime2 NULL,
	LarkID varchar(1000) NULL
)