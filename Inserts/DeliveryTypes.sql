-- Insert into DeliveryTypes
INSERT INTO DeliveryTypes (KeyCode, Name, BaseCost, StatusId, CreatedAt, UpdateAt)
VALUES ('parcel-service','Paquetería', 50.00, 1, GETDATE(), GETDATE());

INSERT INTO DeliveryTypes (KeyCode, Name, BaseCost, StatusId, CreatedAt, UpdateAt)
VALUES ('local-pickup','Recolección local',  0.00, 1, GETDATE(), GETDATE());

INSERT INTO DeliveryTypes (KeyCode, Name, BaseCost, StatusId, CreatedAt, UpdateAt)
VALUES ('freight-company', 'Fletaras', 150.00, 1, GETDATE(), GETDATE());

INSERT INTO DeliveryTypes (KeyCode, Name, BaseCost, StatusId, CreatedAt, UpdateAt)
VALUES ('internal-delivery-service', 'Logística de la empresa', 25.00, 1, GETDATE(), GETDATE());