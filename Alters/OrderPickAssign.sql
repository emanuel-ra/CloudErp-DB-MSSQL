
ALTER TABLE OrderPickAssign ADD LocationId INT NOT NULL DEFAULT 0
ALTER TABLE OrderPickAssign ADD NumberOfPallets INT 
ALTER TABLE OrderPickAssign ADD TableNumber VARCHAR(100)
ALTER TABLE EstimateDeliveredDate ADD TableNumber DATE

ALTER TABLE OrderPickAssign ADD PackingObservations VARCHAR(500) NULL 


ALTER TABLE OrderPickAssign ADD IsHide BIT 
ALTER TABLE OrderPickAssign ADD IsCancelled BIT 