
CREATE TABLE OrderPickAssign(
    ID int IDENTITY(1,1) NOT NULL,
    OrderID int NOT NULL,
    StatusID int NOT NULL,
    AssignerUserID int NULL,
    HandlerUserID int NULL,
    CreatedAtAssigning datetime2 NULL,
    PickingStartTime datetime2 NULL,
    PickingEndTime datetime2 NULL,
    PackAssignUserID int NULL,
    UserIDPacking int NULL,
    CreatedPacking datetime2 NULL,
    ProcessPacking datetime2 NULL,
    EndPacking datetime2 NULL,
    UserIdGuia int NULL,
    StartGuia datetime2 NULL,
    EndGuia datetime2 NULL,
    UserIdPega int NULL,
    StartPega datetime2 NULL,
    EndPega datetime2 NULL,
    WarehouseID int NULL
)