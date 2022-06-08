# Terminal commands for PostgreSQL

## Connecting to a DB

```
psql -h <hostname> -p <port> -U <username> -d <database>
```

- **port** --> will be by default 5432
- **-d** --> can be ommitted. If no database is given, postgres will by default try to connect to a DB with the same name as the user


## DB creation and manipulation

To run the following commands, must be connected to DB.

```
CREATE DATABASE <name> [WITH TEMPLATE <template>]
```

## CREATE TABLE

To run the following commands, must be connected to DB. For more information and details see [Postgres Docs](https://www.postgresql.org/docs/12/sql-createtable.html) on creating tables:

```
CREATE TABLE <name> (
    col1 TYPE [CONSTRAINT],
    col2 TYPE [CONSTRAINT],
    ...,
    table_constraint [CONSTRAINT]
) [INHERITS <existing_table>];
```

For the example of `student` table:

```
CREATE TABLE student (
    student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL
);
```

### CREATE EXTENSION

Some functions (e.g. `uuid_generate_v4()`) may require to install an extension in psql.

```
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```


## Other useful commands

- \conninfo --> displays current connection
- \d <table_name> --> inspect table with columns and types
- \dt --> see all tables in current conection
