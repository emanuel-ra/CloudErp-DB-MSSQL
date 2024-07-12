CREATE TABLE PaymentsVouches (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    PaymentId INT NOT NULL DEFAULT 0  , 
    VoucherImage VARCHAR(500) , 
    Commentary VARCHAR(500) ,  
    UserId INT NOT NULL DEFAULT 0  , 
    AccountName VARCHAR(250) , 
    BankName VARCHAR(250) , 
    PaymentMethod VARCHAR(250) ,     
    Ammount DECIMAL (16, 6) NOT NULL ,
    ValidationUserId INT NOT NULL DEFAULT 0  , 
    Reference VARCHAR(250) , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    PaymentDate DATE , 
    StatusId INT NOT NULL DEFAULT 1 
);