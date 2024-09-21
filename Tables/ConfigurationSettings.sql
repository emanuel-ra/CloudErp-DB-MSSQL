CREATE TABLE ConfigurationSettings (
    Id INT PRIMARY KEY IDENTITY(1,1),
    AccountId INT NOT NULL , 
    KeyId INT NOT NULL,
    Value VARCHAR(MAX) NOT NULL,
    FOREIGN KEY (KeyId) REFERENCES ConfigurationKeys(Id),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME DEFAULT GETDATE()
);
