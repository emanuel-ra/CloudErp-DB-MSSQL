CREATE TABLE CustomerAddresses(
        Id INT PRIMARY KEY IDENTITY(1,1),
        CustomerId INT NOT NULL,
        Address varchar(500) NULL,
        ZipCode varchar(250),
        Region varchar(500) NULL,
        State varchar(100) NULL,
        City varchar(500) NULL,
        ExteriorNumber varchar(50) NULL,
        InteriorNumber varchar(50) NULL,
        Commentary varchar(1000) NULL,
        Phone varchar(200) NULL ,
        ExternalId int NULL       
) 