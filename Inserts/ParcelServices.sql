-- Insert into ParcelServices
INSERT INTO ParcelServices (Code, Name, StatusId, CreatedAt, UpdatedAt)
VALUES ('PAQUETE_EXPRESS', 'Paquete Express', 1, GETDATE(), GETDATE());

INSERT INTO ParcelServices (Code, Name, StatusId, CreatedAt, UpdatedAt)
VALUES ('FEDEX', 'FedEx Corporation', 1, GETDATE(), GETDATE());

INSERT INTO ParcelServices (Code, Name, StatusId, CreatedAt, UpdatedAt)
VALUES ('SENDEX', 'Sendex', 1, GETDATE(), GETDATE());



INSERT INTO ParcelServices (Code, Name, BaseCost, Percentage, StatusId) 
VALUES 
('PAQUETE_EXPRESS', 'Paquete Express', 350.00, 0.06, 1),
('FEDEX', 'FedEx', 350.00, 0.04, 1),
('SENDEX', 'Sendex', 350.00, 0.06, 1)
