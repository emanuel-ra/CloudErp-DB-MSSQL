CREATE TABLE EmployeeFamily (
    Id INT PRIMARY KEY IDENTITY(1,1),
    EmployeeId INT NOT NULL,
    Name VARCHAR(250) NOT NULL,
    Relationship VARCHAR(100) NOT NULL,    
    ContactNumber VARCHAR(20) NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()    
);

--- CONSTRAINT FK_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employees(Id)