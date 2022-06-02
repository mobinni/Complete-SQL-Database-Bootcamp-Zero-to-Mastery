# Indices

## Types of indices

There are several types of indices:
- SINGLE-COLUMN --> most frequently used (single) column in query, esp. in WHERE clause
- MULTI-COLUMN --> most frequently used columns in query, esp. in WHERE clause
- UNIQUE --> for speed and integrity; columns with unique values
- [PARTIAL](https://www.postgresql.org/docs/current/indexes-partial.html) --> applied to a subset of a table (using a condition)
- IMPLICIT --> automatically created by the DB (primary & forgein keys)

## Index syntax
Creation
```
CREATE [UNIQUE] INDEX i_name
ON table (col1, col2, ...);

# for partial index

CREATE [UNIQUE] INDEX i_name
ON table (col1, col2, ...)
WHERE (conditions);
```

Deletion
```
DROP INDEX i_name;
```

## Index algorithms

PostgreSQL provides several types of algorithms (**methods**) that can be applied to an index:
- B-TREE (default) --> best used for comparisons with `>/<`,`>=/<=`, `BETWEE`, `IN`, `IS NULL`, `IS NOT NULL`
- HASH --> can only handle equality checks `=`
- GIN (generalized inverted index) --> best used, when multiple values are stored in a single field `arrays`
- GIST (generalized search tree) --> useful in  indexing geometric data and full-text-search
Each of these index types uses a different algorithm and, hence, is useful for different scenarios (see above).

## Index syntax including method

```
CREATE [UNIQUE] INDEX i_name
ON table USING method (col1, col2, ...);
```

## When to use indices
- on foreign keys (implicit)
- on primary keys (implicit) and unique values
- on columns that end up often in `ORDER BY` or `WHERE` clauses

## When not to use indices
- on small tables (small being relative)
- on tables that are updated frequently (indexing slows updating and replacing down!)
- on columns that contain `NULL` values
- on columns that have large values (e.g. text comments of 400+ characters)
