# EmployeeFamily Table Documentation

The `EmployeeFamily` table is used to store information about family members of employees, including their relationships and contact details.

## Table Structure

| Column Name       | Data Type      | Constraints/Default         | Description                                                              |
| ----------------- | -------------- | --------------------------- | ------------------------------------------------------------------------ |
| **Id**            | `INT`          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each family member record.                         |
| **EmployeeId**    | `INT`          | NOT NULL                    | Reference to the employee to whom the family member belongs.             |
| **Name**          | `VARCHAR(250)` | NOT NULL                    | Name of the family member.                                               |
| **Relationship**  | `VARCHAR(100)` | NOT NULL                    | Relationship of the family member to the employee (e.g., Spouse, Child). |
| **ContactNumber** | `VARCHAR(20)`  | NULL                        | Contact number of the family member.                                     |
| **CreatedAt**     | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the family member record was created.                     |
| **UpdatedAt**     | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the family member record was last updated.                |

## Notes:

- **Foreign Keys**: The `EmployeeId` field should reference the `Id` field in the `Employees` table to maintain data integrity.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
