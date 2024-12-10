
ALTER TABLE OrderPickAssign ADD LocationId INT NOT NULL DEFAULT 0
ALTER TABLE OrderPickAssign ADD NumberOfPallets INT 
ALTER TABLE OrderPickAssign ADD TableNumber VARCHAR(100)
ALTER TABLE EstimateDeliveredDate ADD TableNumber DATE