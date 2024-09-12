# Employees Table Documentation

The `Employees` table is used to store detailed information about employees in the system. It includes personal details, contact information, employment details, and more.

## Table Structure

| Column Name                | Data Type       | Constraints/Default         | Description                                                               |
| -------------------------- | --------------- | --------------------------- | ------------------------------------------------------------------------- |
| **Id**                     | `INT`           | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each employee.                                      |
| **AccountId**              | `INT`           | NOT NULL                    | Reference to the account the employee belongs to.                         |
| **CompanyId**              | `INT`           | NOT NULL                    | Reference to the company the employee works for.                          |
| **Code**                   | `VARCHAR(100)`  | NULL                        | Employee code (could be an employee number or identifier).                |
| **FirstName**              | `VARCHAR(250)`  | NULL                        | Employee’s first name.                                                    |
| **LastName**               | `VARCHAR(250)`  | NULL                        | Employee’s last name.                                                     |
| **Gender**                 | `VARCHAR(25)`   | NULL                        | Gender of the employee (e.g., Male, Female, etc.).                        |
| **TaxId**                  | `VARCHAR(25)`   | NULL                        | Employee’s tax identification number.                                     |
| **NNS**                    | `VARCHAR(25)`   | NULL                        | Employee’s National Social Security number.                               |
| **CURP**                   | `VARCHAR(25)`   | NULL                        | Employee’s Unique Population Registry Code (CURP).                        |
| **Email**                  | `VARCHAR(250)`  | NULL                        | Employee’s email address.                                                 |
| **Phone**                  | `VARCHAR(250)`  | NULL                        | Employee’s mobile phone number.                                           |
| **LandLinePhone**          | `VARCHAR(50)`   | NULL                        | Employee’s landline phone number.                                         |
| **EmergencyLandLinePhone** | `VARCHAR(50)`   | NULL                        | Landline phone number to contact in case of emergency.                    |
| **EmergencyMobilePhone**   | `VARCHAR(50)`   | NULL                        | Mobile phone number to contact in case of emergency.                      |
| **Address**                | `VARCHAR(250)`  | NULL                        | Employee’s home address.                                                  |
| **Neighborhood**           | `VARCHAR(250)`  | NULL                        | Neighborhood of the employee's residence.                                 |
| **Socioeconomic**          | `INT`           | NOT NULL, DEFAULT 0         | Socioeconomic status or level indicator (if applicable).                  |
| **ZipCode**                | `VARCHAR(250)`  | NULL                        | Postal code of the employee's residence.                                  |
| **Town**                   | `VARCHAR(250)`  | NULL                        | Town where the employee lives.                                            |
| **City**                   | `VARCHAR(250)`  | NULL                        | City of residence.                                                        |
| **BornPlace**              | `VARCHAR(250)`  | NULL                        | Employee’s place of birth.                                                |
| **BankAccount**            | `VARCHAR(250)`  | NULL                        | Employee’s bank account details.                                          |
| **BloodType**              | `VARCHAR(50)`   | NULL                        | Employee’s blood type.                                                    |
| **TypeOfContractId**       | `INT`           | NOT NULL                    | Reference to the type of contract the employee is under.                  |
| **DailySalary**            | `DECIMAL(16,6)` | NOT NULL, DEFAULT 0         | The employee’s daily salary.                                              |
| **CountryId**              | `INT`           | NOT NULL                    | Reference to the country where the employee is located.                   |
| **StateId**                | `INT`           | NOT NULL                    | Reference to the state of the employee’s location.                        |
| **SupervisorId**           | `INT`           | NOT NULL, DEFAULT 0         | Reference to the employee’s supervisor (if applicable).                   |
| **DepartmentId**           | `INT`           | NOT NULL                    | Reference to the department the employee belongs to.                      |
| **PositionId**             | `INT`           | NOT NULL                    | Reference to the employee's job position.                                 |
| **ContractTypeId**         | `INT`           | NOT NULL                    | Reference to the type of employment contract.                             |
| **ScheduleId**             | `INT`           | NOT NULL                    | Reference to the schedule assigned to the employee.                       |
| **DismissalId**            | `INT`           | NULL                        | Reference to the type of dismissal if applicable.                         |
| **StatusId**               | `INT`           | NOT NULL, DEFAULT 1         | Status of the employee (e.g., active, inactive).                          |
| **ExternalId**             | `INT`           | NOT NULL, DEFAULT 0         | External identifier for employee (if applicable).                         |
| **UserId**                 | `INT`           | NOT NULL                    | Reference to the user who created or last updated the employee record.    |
| **DismissalObservations**  | `VARCHAR(500)`  | NULL                        | Notes or observations regarding the employee’s dismissal (if applicable). |
| **CreatedAt**              | `DATETIME2`     | NOT NULL, DEFAULT GETDATE() | Timestamp when the employee record was created.                           |
| **UpdatedAt**              | `DATETIME2`     | NOT NULL, DEFAULT GETDATE() | Timestamp when the employee record was last updated.                      |
| **HiredAt**                | `DATETIME2`     | NOT NULL                    | The date when the employee was hired.                                     |
| **FiredAt**                | `DATETIME2`     | NOT NULL                    | The date when the employee was terminated.                                |
| **DismissalAt**            | `DATETIME2`     | NULL                        | The date when the dismissal occurred (if applicable).                     |
| **BornDate**               | `DATE`          | NOT NULL                    | Employee’s date of birth.                                                 |

## Notes:

- **Foreign Keys**: The table includes references to other tables such as `AccountId`, `CompanyId`, `TypeOfContractId`, `CountryId`, `StateId`, `DepartmentId`, `PositionId`, `ContractTypeId`, `ScheduleId`, and `DismissalId`. Ensure these foreign keys reference their corresponding tables to maintain data integrity.
- **Default Values**: Fields like `Socioeconomic`, `SupervisorId`, `StatusId`, and `ExternalId` have default values.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
