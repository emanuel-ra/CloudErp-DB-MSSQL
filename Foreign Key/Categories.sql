ALTER TABLE Categories ADD FOREIGN KEY (StatusId) REFERENCES CatStatus(Id)
ALTER TABLE Categories ADD FOREIGN KEY (UserId) REFERENCES Users(Id)