--Basic syntax, create schema that has authority of ownership to specific user. 
CREATE SCHEMA IF NOT EXISTS <schema_name> AUTHORIZATION <user_name>;

--Create schema with some size limit
CREATE SCHEMA IF NOT EXISTS <schema_name> AUTHORIZATION <user_name> QUOTA <<?? GB>>;

/*
#1: You can create upto 9900 schemas per database
#2: Use PG_NAMESPACE to see the list of schemas
#3: Sample query to find schema and user info
SELECT  nspname AS schema, usename AS owner
FROM    pg_namespace, pg_user
WHERE   pg_namespace.nspowner = pg_user.usesysid;
*/

