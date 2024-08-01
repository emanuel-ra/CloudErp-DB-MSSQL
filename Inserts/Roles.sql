/* * Cat Status table should be created and have data */
/* * BY DEFAULT THE ACTIVE STATUS SHOULD BE EQUAL TO 1 */
SET IDENTITY_INSERT Roles ON
INSERT INTO Roles(Id,Name,StatusId) VALUES (1,'Developer',1)
SET IDENTITY_INSERT Roles OFF