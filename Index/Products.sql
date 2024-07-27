--- MAKE EXTERNAL ID AN INDEX COLUMN
CREATE INDEX Idx_ExternalId ON Products (ExternalId);
CREATE INDEX Idx_AccountId ON Products (AccountId);
CREATE INDEX Idx_Code ON Products (Code);
CREATE INDEX Idx_Barcode ON Products (Barcode);