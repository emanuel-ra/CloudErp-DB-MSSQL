ALTER TABLE RelCategoriesToProducts ADD FOREIGN KEY (CategoryId) REFERENCES Categories(Id)

ALTER TABLE RelCategoriesToProducts ADD FOREIGN KEY (ProductId) REFERENCES Products(Id)

ALTER TABLE RelCategoriesToProducts ADD FOREIGN KEY (UserId) REFERENCES Users(Id)