CREATE TABLE DiscountsByCategory(
	Id int IDENTITY(1,1) NOT NULL,
	CategoryId int NOT NULL,
	UserId int NOT NULL,
	Min decimal(10, 2) NOT NULL,
	Max decimal(10, 2) NULL,
	Percentage decimal(5, 2) NOT NULL,
	Active bit NOT NULL,
	StartDate date NOT NULL,
	EndDate date NOT NULL,
	CreatedAt datetime NOT NULL,
	UpdateAt datetime NOT NULL,
	StatusId int NOT NULL,
	AccountId int NOT NULL
)

