INSERT INTO Companies (
    AccountId, Name, LogoUrl, Email, ContactEmail, ContactName, 
    TaxId, TaxName, TaxRegimeCode, TaxZipCode, TaxAddress, TaxEmail, 
    StatusId, UserId, ExternalId, CreatedAt, UpdatedAt
) VALUES (
    1, 'Tech Innovators Inc.', 'http://example.com/logo1.png', 'info@techinnovators.com', 'contact@techinnovators.com', 'Alice Johnson',
    '1234567890', 'Tech Innovators', 'TIR123', '12345', '123 Tech Street, Tech City, TC 12345', 'tax@techinnovators.com',
    1, 1, 0, GETDATE(), GETDATE()
);

INSERT INTO Companies (
    AccountId, Name, LogoUrl, Email, ContactEmail, ContactName, 
    TaxId, TaxName, TaxRegimeCode, TaxZipCode, TaxAddress, TaxEmail, 
    StatusId, UserId, ExternalId, CreatedAt, UpdatedAt
) VALUES (
    1, 'Green Energy Solutions', 'http://example.com/logo2.png', 'info@greenenergy.com', 'contact@greenenergy.com', 'Bob Smith',
    '2345678901', 'Green Energy', 'GER456', '23456', '456 Green Lane, Eco Town, ET 23456', 'tax@greenenergy.com',
    2, 2, 0, GETDATE(), GETDATE()
);

INSERT INTO Companies (
    AccountId, Name, LogoUrl, Email, ContactEmail, ContactName, 
    TaxId, TaxName, TaxRegimeCode, TaxZipCode, TaxAddress, TaxEmail, 
    StatusId, UserId, ExternalId, CreatedAt, UpdatedAt
) VALUES (
    1, 'HealthTech Corp.', 'http://example.com/logo3.png', 'info@healthtech.com', 'contact@healthtech.com', 'Charlie Davis',
    '3456789012', 'HealthTech', 'HTR789', '34567', '789 Health Avenue, Medical City, MC 34567', 'tax@healthtech.com',
    3, 3, 0, GETDATE(), GETDATE()
);

INSERT INTO Companies (
    AccountId, Name, LogoUrl, Email, ContactEmail, ContactName, 
    TaxId, TaxName, TaxRegimeCode, TaxZipCode, TaxAddress, TaxEmail, 
    StatusId, UserId, ExternalId, CreatedAt, UpdatedAt
) VALUES (
    1, 'FinTech Innovations', 'http://example.com/logo4.png', 'info@fintech.com', 'contact@fintech.com', 'Dana Lee',
    '4567890123', 'FinTech', 'FTR012', '45678', '012 Finance Street, Bank City, BC 45678', 'tax@fintech.com',
    4, 4, 0, GETDATE(), GETDATE()
);

INSERT INTO Companies (
    AccountId, Name, LogoUrl, Email, ContactEmail, ContactName, 
    TaxId, TaxName, TaxRegimeCode, TaxZipCode, TaxAddress, TaxEmail, 
    StatusId, UserId, ExternalId, CreatedAt, UpdatedAt
) VALUES (
    1, 'EduTech Learning', 'http://example.com/logo5.png', 'info@edutech.com', 'contact@edutech.com', 'Evan Wilson',
    '5678901234', 'EduTech', 'ETR345', '56789', '345 Education Road, Learning City, LC 56789', 'tax@edutech.com',
    5, 5, 0, GETDATE(), GETDATE()
);
