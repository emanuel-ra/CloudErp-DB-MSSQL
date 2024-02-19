SET IDENTITY_INSERT Companies ON
INSERT INTO Companies (Id,Name , LogoUrl ,Email ,ContactEmail ,ContactName ,TaxId ,TaxName ,TaxRegimeCode ,TaxZipCode ,TaxAddress ,TaxEmail ,StatusId ,UserId ,ExternalId ,CreatedAt ,UpdatedAt)
VALUES (1,'DEMO' , '' ,'demo@mail.com' ,'contact@mail.com' ,'Jhon Snow' ,'XAXX010101000' ,'Demo SA de CV' ,'601' ,'44100' ,'Ramon Corona 148' ,'tax@mail.com' ,1 ,1 ,0 ,GETDATE() ,GETDATE())
SET IDENTITY_INSERT Companies OFF