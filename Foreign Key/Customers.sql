ALTER TABLE Customers ADD FOREIGN KEY (StatusId) REFERENCES CatStatus(Id)
ALTER TABLE Customers ADD FOREIGN KEY (UserId) REFERENCES Users(Id)
ALTER TABLE Customers ADD FOREIGN KEY (CountryId) REFERENCES SatCountries(Id)
ALTER TABLE Customers ADD FOREIGN KEY (StateId) REFERENCES SatStates(Id)