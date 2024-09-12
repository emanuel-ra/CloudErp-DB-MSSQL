# JobPositions Table Documentation

The `JobPositions` table is used to store information about job positions within an organization, including their titles, descriptions, and associated departments.

## Table Structure

| Column Name      | Data Type      | Constraints/Default         | Description                                                                   |
| ---------------- | -------------- | --------------------------- | ----------------------------------------------------------------------------- |
| **Id**           | `INT`          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each job position.                                      |
| **AccountId**    | `INT`          | NOT NULL                    | Reference to the account under which the job position is categorized.         |
| **Title**        | `VARCHAR(100)` | NOT NULL                    | Title of the job position (e.g., Software Engineer, Sales Manager).           |
| **Description**  | `VARCHAR(500)` | NULL                        | Detailed description of the job position's responsibilities and requirements. |
| **DepartmentId** | `INT`          | NOT NULL                    | Reference to the department where the job position is located.                |
| **StatusId**     | `INT`          | NOT NULL, DEFAULT 1         | Status of the job position (e.g., Active, Inactive).                          |
| **CreatedAt**    | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the job position record was created.                           |
| **UpdatedAt**    | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the job position record was last updated.                      |

## Notes:

- **Foreign Keys**:
  - `AccountId` should reference the relevant table that contains account information.
  - `DepartmentId` should reference the `Id` field in the `Departments` table.
- **Default Values**: The `StatusId` field has a default value of 1, indicating the default status of new records.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
