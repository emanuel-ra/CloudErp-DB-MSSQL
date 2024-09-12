# Actions Table Schema

The `Actions` table is used to handle permissions within the system, such as create, update, read, delete, import, export, etc. Below is a description of each column in the table:

| Column Name | Data Type     | Constraints                 | Description                                              |
| ----------- | ------------- | --------------------------- | -------------------------------------------------------- |
| `Id`        | `INT`         | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each action.                       |
| `Name`      | `VARCHAR(20)` | NOT NULL                    | Name of the action (e.g., "create", "update", "delete"). |
| `CreateAt`  | `DATETIME2`   | NOT NULL, DEFAULT GETDATE() | Timestamp when the action was created.                   |
| `UpdateAt`  | `DATETIME2`   | NOT NULL, DEFAULT GETDATE() | Timestamp when the action was last updated.              |

### Notes

- **Data Types**:

  - `Name` is a short `VARCHAR(20)` to store action names succinctly.
  - `DATETIME2` is used for `CreateAt` and `UpdateAt` to provide precision and support for date and time values.

- **Default Values**:
  - `CreateAt` and `UpdateAt` are set to the current date and time by default, ensuring that timestamps are recorded automatically.

This table design allows for defining and tracking various system actions that can be managed and assigned to user roles or permissions.
