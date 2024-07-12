CREATE TABLE Customers_deliveries(
        ID INT PRIMARY KEY IDENTITY(1,1),
        Customer_id INT NOT NULL,
        Address varchar(500) NULL,
        ZipCode varchar(250),
        District varchar(500) NULL,
        City varchar(500) NULL,
        Num_Ext varchar(50) NULL,
        Num_Int varchar(50) NULL,
        Commentary varchar(1000) NULL,
        State varchar(100) NULL,
        ExternalID int NULL,
        Phone varchar(200) NULL
) 