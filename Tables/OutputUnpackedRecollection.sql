CREATE TABLE OutputUnpackedRecollection (
    Id INT PRIMARY KEY IDENTITY(1,1) ,
    UserId INT NOT NULL ,
    Commentary VARCHAR(500) NOT NULL , 
    OfficialId VARCHAR(250) NOT NULL , 
    OfficialIdPlublicId VARCHAR(250) NOT NULL , 
    VehiclePhotograph VARCHAR(250) , 
    VehiclePhotographPlublicId VARCHAR(250) , 
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE() ,
    UpdateAt DATETIME NOT NULL DEFAULT GETDATE() ,
    StatusId INT NOT NULL DEFAULT 1
);