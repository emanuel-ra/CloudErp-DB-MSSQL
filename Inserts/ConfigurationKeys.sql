/*

-- PARENT 
INSERT INTO ConfigurationKeys (KeyName, Description, CreatedAt, UpdatedAt)
VALUES ('MyConfigKey', 'This key represents my configuration for XYZ feature', GETDATE(), GETDATE());

-- Child
INSERT INTO ConfigurationKeys (ParentId,KeyName, Description, CreatedAt, UpdatedAt)
VALUES (ParentId,'MyConfigKey', 'This key represents my configuration for XYZ feature', GETDATE(), GETDATE());

*/


INSERT INTO ConfigurationKeys (KeyName, Description, CreatedAt, UpdatedAt)
VALUES ('Roles', 'This key represents my configuration for roles group', GETDATE(), GETDATE());

INSERT INTO ConfigurationKeys (ParentId,KeyName, Description, CreatedAt, UpdatedAt)
VALUES (1,'PickUpRolesKey', 'This key represents my configuration for roles that can pick up items for the order feature.', GETDATE(), GETDATE());

INSERT INTO ConfigurationKeys (ParentId,KeyName, Description, CreatedAt, UpdatedAt)
VALUES (1,'PackingRolesKey', 'This key represents my configuration for roles that can pick up items for the order feature.', GETDATE(), GETDATE());

INSERT INTO ConfigurationKeys (ParentId,KeyName, Description, CreatedAt, UpdatedAt)
VALUES (1,'SellersRolesKey', 'This key represents my configuration for roles that can pick up items for the order feature.', GETDATE(), GETDATE());

INSERT INTO ConfigurationKeys (ParentId,KeyName, Description, CreatedAt, UpdatedAt)
VALUES (1,'CashierRolesKey', 'This key represents my configuration for roles that can pick up items for the order feature.', GETDATE(), GETDATE());
