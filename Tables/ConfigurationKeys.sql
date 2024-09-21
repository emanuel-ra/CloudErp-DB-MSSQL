CREATE TABLE ConfigurationKeys (
    Id INT PRIMARY KEY IDENTITY(1,1),
    KeyName VARCHAR(255) NOT NULL UNIQUE,  -- Unique identifier for the setting
    Description VARCHAR(255) NULL,           -- Optional description for the setting
    CreatedAt DATETIME DEFAULT GETDATE(),    -- Timestamp for when the key was created
    UpdatedAt DATETIME DEFAULT GETDATE()     -- Timestamp for when the key was last updated
);
