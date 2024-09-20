CREATE TRIGGER TrgOrderPickAssign
ON OrderPickAssign
AFTER INSERT, UPDATE, DELETE
AS
BEGIN   
    -- Log for insert transactions
    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO OrderPickAssignLogs (AssignId , MovementType , Description , JsonData )
        SELECT A.ID, 'INSERT', 'new-assignation', (
            SELECT
                A.ID AS Id,
                A.OrderID as OrderId,
                A.StatusID AS StatusId,
                B.Name AS StatusName,
                A.AssignerUserID as AssignerUserId,
                D.Name AS AssignerUserName,
                A.HandlerUserID as HandlerUserId,
                E.Name AS HandlerUserName,
                A.CreatedAtAssigning,
                A.PickingStartTime,
                A.PickingEndTime,
                A.PackAssignUserID,
                A.UserIDPacking,
                F.Name AS PackingUserName,
                A.CreatedPacking,
                A.ProcessPacking,
                A.EndPacking,
                A.UserIdGuia,
                H.Name AS UserGuiaName,
                A.StartGuia,
                A.EndGuia,
                A.UserIdPega,
                J.Name AS UserPegaName,
                A.StartPega,
                A.EndPega,
                A.WarehouseID AS WarehouseId,
                A.ConoStatus,
                C.ConeKey,
                C.Color AS ConeColor,
                A.NumberCono,
                A.StartnetOrderID AS StartnetOrderId,
                A.LocationId,
                A.IsPaused,
                A.PausedCount,
                A.PickingPause,
                A.StartValidation,
                A.EndValidation,
                A.ValidatedbyUserId,
                K.Name AS ValidatedbyUserName,
                A.ValidateAtAssign,
                A.ValidationAssignByUserId,
                L.Name AS ValidationAssignByUserName,
                A.ValidatedObservations
            FROM inserted AS A 
                LEFT OUTER JOIN CatStatus B ON A.StatusID = B.Id
                LEFT OUTER JOIN CatOrderStatusCone C ON A.ConoStatus = C.Id
                LEFT OUTER JOIN Users D ON A.AssignerUserID = D.Id
                LEFT OUTER JOIN Users E ON A.HandlerUserID = E.Id
                LEFT OUTER JOIN Users F ON A.UserIDPacking = F.Id
                LEFT OUTER JOIN Users H ON A.UserIdGuia = H.Id
                LEFT OUTER JOIN Users J ON A.UserIdPega = J.Id
                LEFT OUTER JOIN OrderLocationsLayout I ON A.LocationId = I.Id
                LEFT OUTER JOIN Users K ON A.ValidatedbyUserId = K.Id
                LEFT OUTER JOIN Users L ON A.ValidationAssignByUserId = L.Id
            FOR JSON PATH
        )
        FROM inserted A;
    END

    -- Log for update transactions
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO OrderPickAssignLogs (AssignId , MovementType , Description , JsonData )
        SELECT A.ID, 'UPDATE', 'assignation-updated', (
            SELECT
                A.ID AS Id,
                A.OrderID as OrderId,
                A.StatusID AS StatusId,
                B.Name AS StatusName,
                A.AssignerUserID as AssignerUserId,
                D.Name AS AssignerUserName,
                A.HandlerUserID as HandlerUserId,
                E.Name AS HandlerUserName,
                A.CreatedAtAssigning,
                A.PickingStartTime,
                A.PickingEndTime,
                A.PackAssignUserID,
                A.UserIDPacking,
                F.Name AS PackingUserName,
                A.CreatedPacking,
                A.ProcessPacking,
                A.EndPacking,
                A.UserIdGuia,
                H.Name AS UserGuiaName,
                A.StartGuia,
                A.EndGuia,
                A.UserIdPega,
                J.Name AS UserPegaName,
                A.StartPega,
                A.EndPega,
                A.WarehouseID AS WarehouseId,
                A.ConoStatus,
                C.ConeKey,
                C.Color AS ConeColor,
                A.NumberCono,
                A.StartnetOrderID AS StartnetOrderId,
                A.LocationId,
                A.IsPaused,
                A.PausedCount,
                A.PickingPause,
                A.StartValidation,
                A.EndValidation,
                A.ValidatedbyUserId,
                K.Name AS ValidatedbyUserName,
                A.ValidateAtAssign,
                A.ValidationAssignByUserId,
                L.Name AS ValidationAssignByUserName,
                A.ValidatedObservations
            FROM inserted AS A
                LEFT OUTER JOIN CatStatus B ON A.StatusID = B.Id
                LEFT OUTER JOIN CatOrderStatusCone C ON A.ConoStatus = C.Id
                LEFT OUTER JOIN Users D ON A.AssignerUserID = D.Id
                LEFT OUTER JOIN Users E ON A.HandlerUserID = E.Id
                LEFT OUTER JOIN Users F ON A.UserIDPacking = F.Id
                LEFT OUTER JOIN Users H ON A.UserIdGuia = H.Id
                LEFT OUTER JOIN Users J ON A.UserIdPega = J.Id
                LEFT OUTER JOIN OrderLocationsLayout I ON A.LocationId = I.Id
                LEFT OUTER JOIN Users K ON A.ValidatedbyUserId = K.Id
                LEFT OUTER JOIN Users L ON A.ValidationAssignByUserId = L.Id
            FOR JSON PATH
        )
        FROM inserted A;
    END

    -- Log for delete transactions
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO OrderPickAssignLogs (AssignId , MovementType , Description , JsonData )
        SELECT A.ID, 'DELETE', 'assignation-deleted', (
            SELECT
                A.ID AS Id,
                A.OrderID as OrderId,
                A.StatusID AS StatusId,
                B.Name AS StatusName,
                A.AssignerUserID as AssignerUserId,
                D.Name AS AssignerUserName,
                A.HandlerUserID as HandlerUserId,
                E.Name AS HandlerUserName,
                A.CreatedAtAssigning,
                A.PickingStartTime,
                A.PickingEndTime,
                A.PackAssignUserID,
                A.UserIDPacking,
                F.Name AS PackingUserName,
                A.CreatedPacking,
                A.ProcessPacking,
                A.EndPacking,
                A.UserIdGuia,
                H.Name AS UserGuiaName,
                A.StartGuia,
                A.EndGuia,
                A.UserIdPega,
                J.Name AS UserPegaName,
                A.StartPega,
                A.EndPega,
                A.WarehouseID AS WarehouseId,
                A.ConoStatus,
                C.ConeKey,
                C.Color AS ConeColor,
                A.NumberCono,
                A.StartnetOrderID AS StartnetOrderId,
                A.LocationId,
                A.IsPaused,
                A.PausedCount,
                A.PickingPause,
                A.StartValidation,
                A.EndValidation,
                A.ValidatedbyUserId,
                K.Name AS ValidatedbyUserName,
                A.ValidateAtAssign,
                A.ValidationAssignByUserId,
                L.Name AS ValidationAssignByUserName,
                A.ValidatedObservations
            FROM deleted AS A
                LEFT OUTER JOIN CatStatus B ON A.StatusID = B.Id
                LEFT OUTER JOIN CatOrderStatusCone C ON A.ConoStatus = C.Id
                LEFT OUTER JOIN Users D ON A.AssignerUserID = D.Id
                LEFT OUTER JOIN Users E ON A.HandlerUserID = E.Id
                LEFT OUTER JOIN Users F ON A.UserIDPacking = F.Id
                LEFT OUTER JOIN Users H ON A.UserIdGuia = H.Id
                LEFT OUTER JOIN Users J ON A.UserIdPega = J.Id
                LEFT OUTER JOIN OrderLocationsLayout I ON A.LocationId = I.Id
                LEFT OUTER JOIN Users K ON A.ValidatedbyUserId = K.Id
                LEFT OUTER JOIN Users L ON A.ValidationAssignByUserId = L.Id
            FOR JSON PATH
        )
        FROM deleted A;
    END
END;
