
CREATE TABLE Quotation(
    ID  INT PRIMARY KEY IDENTITY(1,1) , 
    CustomerID int NOT NULL,
    UserID int NULL,
    StatusID int NULL,
    Commentary varchar(500) NULL,
    Price_type int NOT NULL,
    Quantity int NULL,
    Total decimal(16, 6) NULL,
    Total_deliver decimal(16, 6) NULL,
    Total_of_assured decimal(16, 6) NULL,
    Is_checkplus int NOT NULL,
    Is_deliver int NOT NULL,
    Created_at datetime NOT NULL,
    Updated_at datetime NOT NULL,
    AddressID int NULL,
    Is_packed bit NULL,
    Detail_packed varchar(250) NULL,
    LarkID varchar(500) NULL,
    IsModified bit NULL,
    Total_initial decimal(16, 6) NULL
)