CREATE TABLE StartnetOrdersDetails(
    id INT PRIMARY KEY IDENTITY(1,1) ,,
    ExternalID int,
    OrderID int NULL,
    ProductID int NULL,
    ProductName varchar(250) NULL,
    ProductAlias varchar(250) NULL,
    OrderQuantity decimal(15, 6) NULL,
    ApprovedQuantity decimal(15, 6) NULL,
    UnitPrice decimal(15, 6) NULL,
    DiscountRate decimal(15, 6) NULL,
    TaxRate decimal(15, 6) NULL,
    UnitPriceTax decimal(15, 6) NULL,
    OrderAmount decimal(15, 6) NULL,
    Memo varchar(500) NULL,
    Inform varchar(250) NULL
)