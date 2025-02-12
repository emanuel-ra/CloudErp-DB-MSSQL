CREATE TABLE OrderPickAssign(
	ID int IDENTITY(1,1) NOT NULL,
	OrderID int NOT NULL,
	StatusID int NOT NULL,
	AssignerUserID int NULL,
	HandlerUserID int NULL,
	CreatedAtAssigning datetime2(7) NULL,
	PickingStartTime datetime2(7) NULL,
	PickingEndTime datetime2(7) NULL,
	PackAssignUserID int NULL,
	UserIDPacking int NULL,
	CreatedPacking datetime2(7) NULL,
	ProcessPacking datetime2(7) NULL,
	EndPacking datetime2(7) NULL,
	UserIdGuia int NULL,
	StartGuia datetime2(7) NULL,
	EndGuia datetime2(7) NULL,
	UserIdPega int NULL,
	StartPega datetime2(7) NULL,
	EndPega datetime2(7) NULL,
	WarehouseID int NULL,
	ConoStatus int NULL,
	NumberCono int NULL,
	StartnetOrderID int NULL,
	LocationId int NOT NULL,
	IsPaused bit NULL,
	PausedCount int NULL,
	PickingPause datetime NULL,
	StartValidation datetime2(7) NULL,
	EndValidation datetime2(7) NULL,
	ValidatedbyUserId int NULL,
	ValidateAtAssign datetime2(7) NULL,
	ValidationAssignByUserId int NULL,
	ValidatedObservations varchar(500) NULL ,
	NumberOfPallets INT  ,
	TableNumber VARCHAR(100) ,
	EstimateDeliveredDate DATE ,
	PackingObservations VARCHAR(500) NULL ,
	IsHide BIT ,
	IsCancelled BIT 
) 


