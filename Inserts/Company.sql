SET IDENTITY_INSERT Companies ON
INSERT INTO Companies (Id,Name , LogoUrl ,Email ,ContactEmail ,ContactName ,TaxId ,TaxName ,TaxRegimeCode ,TaxZipCode ,TaxAddress ,TaxEmail ,StatusId ,UserId ,ExternalId ,CreatedAt ,UpdatedAt)
VALUES (1,'DEMO' , '' ,'demo@mail.com' ,'contact@mail.com' ,'Jhon Snow' ,'XAXX010101000' ,'Demo SA de CV' ,'601' ,'44100' ,'Ramon Corona 148' ,'tax@mail.com' ,1 ,1 ,0 ,GETDATE() ,GETDATE())
SET IDENTITY_INSERT Companies OFF

--- GDL

INSERT INTO Companies (AccountId,Name , LogoUrl ,Email ,ContactEmail ,ContactName ,TaxId ,TaxName ,TaxRegimeCode ,TaxZipCode ,TaxAddress ,TaxEmail ,StatusId ,UserId ,ExternalId ,CreatedAt ,UpdatedAt)
VALUES (1,'LINK BITS COMERCIO ELECTRONICO' , '' ,'demo@mail.com' ,'contact@massivehome.com' ,'Vicky YU' ,'LBC1905098F2' ,'LINK BITS COMERCIO ELECTRONICO' ,'601' ,'44100' ,'Calle Ramon Corona #148, Guadalajara centro entre Av. Juárez y calle López Cotilla' ,'facuracion@massivehome.com' ,1 ,1 ,0 ,GETDATE() ,GETDATE())


INSERT INTO Companies (AccountId,Name , LogoUrl ,Email ,ContactEmail ,ContactName ,TaxId ,TaxName ,TaxRegimeCode ,TaxZipCode ,TaxAddress ,TaxEmail ,StatusId ,UserId ,ExternalId ,CreatedAt ,UpdatedAt)
VALUES (1,'VIVIMXHOME' , '' ,'demo@mail.com' ,'contact@massivehome.com' ,'Vicky YU' ,'VIV210730JA8' ,'VIVIMXHOME' ,'601' ,'44190' ,'Av. Chapultepec, Número 616, Colonia Moderna, ente calle Mariano Otero y calle España' ,'facuracion@massivehome.com' ,1 ,1 ,0 ,GETDATE() ,GETDATE())

INSERT INTO Companies (AccountId,Name , LogoUrl ,Email ,ContactEmail ,ContactName ,TaxId ,TaxName ,TaxRegimeCode ,TaxZipCode ,TaxAddress ,TaxEmail ,StatusId ,UserId ,ExternalId ,CreatedAt ,UpdatedAt)
VALUES (1,'EL RINCON DE LA SALUD' , '' ,'demo@mail.com' ,'contact@massivehome.com' ,'Vicky YU' ,'RSA191014EL1' ,'EL RINCON DE LA SALUD' ,'601' ,'44360' ,'Calle Dionisio Rodriguez #226, San Juan de Dios entre calle Vicente Guerrero y Calle José Fernando Abascal Souza.' ,'facuracion@massivehome.com' ,1 ,1 ,0 ,GETDATE() ,GETDATE())




-- MONTERREY

INSERT INTO Companies (AccountId,Name , LogoUrl ,Email ,ContactEmail ,ContactName ,TaxId ,TaxName ,TaxRegimeCode ,TaxZipCode ,TaxAddress ,TaxEmail ,StatusId ,UserId ,ExternalId ,CreatedAt ,UpdatedAt)
VALUES (3,'VIVIMXHOME' , '' ,'demo@mail.com' ,'contact@massivehome.com' ,'Vicky YU' ,'VIV210730JA8' ,'VIVIMXHOME' ,'601' ,'64000' ,'AVENIDA BENITO JUAREZ SUR #237, MONTERREY CENTRO, Monterrey, N.L.' ,'facuracion@massivehome.com' ,1 ,1 ,0 ,GETDATE() ,GETDATE())