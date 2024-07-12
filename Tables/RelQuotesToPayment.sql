CREATE TABLE RelQuotesToPayment (
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    QuoteId INT NOT NULL , 
    PaymentId INT NOT NULL
);