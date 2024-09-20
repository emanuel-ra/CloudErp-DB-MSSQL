CREATE TABLE CustomersCredit (
    Id INT PRIMARY KEY IDENTITY(1,1),
    CustomerId INT NOT NULL, 
    CreditLimit DECIMAL(18,2) NOT NULL, -- Maximum credit allowed for the customer
    CreditUsed DECIMAL(18,2) DEFAULT 0, -- Amount of credit the customer has used
    AvailableCredit AS (CreditLimit - CreditUsed) PERSISTED, -- Automatically calculated available credit
    CreditExpiryDate DATETIME, -- Optional: Expiry date for the credit limit
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(), 
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerID) -- Foreign key linking to Customers table
);
