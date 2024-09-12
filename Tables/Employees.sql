CREATE TABLE Employees(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    AccountId INT NOT NULL , 
    CompanyId INT NOT NULL , 
    Code VARCHAR(100) , 
    FirstName VARCHAR(250) , 
    LastName VARCHAR(250) , 
    Gender VARCHAR(25) ,
    TaxId VARCHAR(25) ,
    NNS VARCHAR(25) ,
    CURP VARCHAR(25) ,
    Email VARCHAR(250) ,
    Phone VARCHAR(250) ,
    LandLinePhone VARCHAR(50) ,
    EmergencyLandLinePhone VARCHAR(50) ,
    EmergencyMobilePhone VARCHAR(50) ,
    Address VARCHAR(250) ,
    Neighborhood VARCHAR(250) ,
    Socioeconomic INT NOT NULL DEFAULT 0 ,     
    ZipCode VARCHAR(250) ,
    Town VARCHAR(250) ,
    City VARCHAR(250) ,
    BornPlace VARCHAR(250) ,
    BankAccount VARCHAR(250) ,
    BloodType VARCHAR(50) ,   
    TypeOfContractId INT NOT NULL , 
    DailySalary DECIMAL(16,6) NOT NULL DEFAULT 0 , 
    CountryId INT NOT NULL , 
    StateId INT NOT NULL , 
    SupervisorId INT NOT NULL DEFAULT 0 , 
    DepartmentId INT NOT NULL , 
    PositionId INT NOT NULL , 
    ContractTypeId INT NOT NULL , 
    ScheduleId INT NOT NULL , 
    DismissalId INT ,
    StatusId INT NOT NULL DEFAULT 1, 
    ExternalId INT NOT NULL DEFAULT 0, 
    UserId INT NOT NULL ,  
    DismissalObservations VARCHAR(500) ,
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() , 
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    HiredAt DATETIME2 NOT NULL , 
    FiredAt DATETIME2 NOT NULL , 
    DismissalAt DATETIME2 ,
    BornDate DATE NOT NULL 
)

/*
TODO:
 * CREATE: Table to register their family
 * CREATE: Table to register their department
 * CREATE: Table to register their Position
 * CREATE: Table to register their Scholarship
 * CREATE: Table to register their Marital status
 * CREATE: Table to register their Schedules
 * CREATE: Table to register their  Dismissal Types 
*/