ALTER TABLE CustomerAddresses
ADD StatusId int NOT NULL DEFAULT 1;

ALTER TABLE CustomerAddresses
ADD CreatedAt DATETIME NULL;

ALTER TABLE CustomerAddresses
ADD UpdatedAt DATETIME NULL;

ALTER TABLE CustomerAddresses
ADD UserId INT NOT NULL DEFAULT 0;