-- THIS TABLE COULD BE DELETE 
CREATE TABLE Payments (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    UploadUserId INT NOT NULL DEFAULT 0  , 
    ValidationUserId INT NOT NULL DEFAULT 0  , 
    AccountName VARCHAR(200) , 
    Ammount DECIMAL (16, 6) NOT NULL DEFAULT 0 ,
    ConfirmationAmmount DECIMAL (16, 6) NOT NULL DEFAULT 0 ,
    IsAccepted INT NOT NULL DEFAULT 0  , 
    Commentary VARCHAR(500) , 
    ValidationCommentary VARCHAR(500) ,  
    BankName VARCHAR(500) , 
    PaymentMethod VARCHAR(500) , 
    CodeSalesInvoices VARCHAR(500) , 
    DatesPayment VARCHAR(250) , 
    IsCancel INT NOT NULL DEFAULT 0  , 
    AmmountsPayments VARCHAR(250) ,     
    ValidateAt DATETIME ,
    InitValid DATETIME , 
    EndOrder DATETIME, 
    PaymentDate DATETIME,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() ,     
    StatusId INT NOT NULL DEFAULT 1
);

