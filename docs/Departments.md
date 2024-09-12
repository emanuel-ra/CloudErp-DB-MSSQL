# Departments Table Documentation

The `Departments` table is used to store information about departments within an organization, including their names, managers, and statuses.

## Table Structure

| Column Name   | Data Type      | Constraints/Default         | Description                                                           |
| ------------- | -------------- | --------------------------- | --------------------------------------------------------------------- |
| **Id**        | `INT`          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each department.                                |
| **AccountId** | `INT`          | NOT NULL                    | Reference to the account under which the department operates.         |
| **Name**      | `VARCHAR(250)` | NOT NULL                    | Name of the department (e.g., Human Resources, IT Department).        |
| **ManagerId** | `INT`          | NULL                        | Reference to the employee who manages the department (if applicable). |
| **StatusId**  | `INT`          | NOT NULL, DEFAULT 1         | Status of the department (e.g., Active, Inactive).                    |
| **CreatedAt** | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the department record was created.                     |
| **UpdatedAt** | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the department record was last updated.                |

## Notes:

- **Foreign Keys**:
  - `AccountId` should reference the relevant table that contains account information.
  - `ManagerId` should reference the `Id` field in the `Employees` table, indicating the manager of the department.
- **Default Values**: The `StatusId` field has a default value of 1, indicating the default status of new records.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
