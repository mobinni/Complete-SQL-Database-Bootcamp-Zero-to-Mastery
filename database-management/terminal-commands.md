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


## Other useful commands

- \conninfo --> displays current connection
