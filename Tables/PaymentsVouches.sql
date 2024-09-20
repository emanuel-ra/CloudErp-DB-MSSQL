--- V1 
CREATE TABLE PaymentsVouches (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    PaymentId INT NOT NULL DEFAULT 0  , 
    ImagePublicId varchar(255)
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

-- V2 
CREATE TABLE PaymentsVouchers (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    PaymentId INT NOT NULL DEFAULT 0  ,
    CustomerId INT NOT NULL , 
    ImagePublicId varchar(255) ,
    VoucherImage VARCHAR(500) , 
    Commentary VARCHAR(500) ,  
    UserId INT NOT NULL DEFAULT 0  , 
    AccountName VARCHAR(250) , 
    BankName VARCHAR(250) , 
    PaymentMethod VARCHAR(250) ,     
    Amount DECIMAL (18, 6) NOT NULL ,
    ValidationUserId INT NOT NULL DEFAULT 0  , 
    Reference VARCHAR(250) , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME NOT NULL DEFAULT GETDATE() , 
    PaymentDate DATE , 
    StatusId INT NOT NULL DEFAULT 1 
);