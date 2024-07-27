--- MAKE EXTERNAL ID AN INDEX COLUMN
CREATE INDEX Idx_AccountId ON ProductListPriceRelation (AccountId);
CREATE INDEX Idx_PriceId ON ProductListPriceRelation (PriceId);
CREATE INDEX Idx_ProductId ON ProductListPriceRelation (ProductId);