CREATE TABLE BankPayments
(
    Id INT PRIMARY KEY IDENTITY(1,1) ,       
    Folio AS ('PD-' + CAST(Id AS VARCHAR(16)), 
    AccountId INT NOT NULL ,
    CustomerId INT NOT NULL ,
    AccountName VARCHAR(200) , 
    BankName VARCHAR(500) , 
    PaymentMethod VARCHAR(500) , 
    Amount DECIMAL (18, 6) NOT NULL DEFAULT 0 ,
    PaymentNotes VARCHAR(500) , 
    ValidationComment VARCHAR(500) , 
    UserId INT NOT NULL  , 
    ValidatedByUserId INT NULL , 
    PaymentDate DATE NULL ,
    ClientReceiptImageId varchar(255) ,
    ClientReceiptImageUrl varchar(255) ,   
    BankDepositImageId varchar(255) ,   
    BankDepositImageUrl varchar(255) ,   
    StartedAt DATETIME NULL , 
    ValidatedAt DATETIME  NULL  , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() ,     
    StatusId INT NOT NULL DEFAULT 1 ,
    IsPaymentValid BIT NOT NULL DEFAULT 0
)