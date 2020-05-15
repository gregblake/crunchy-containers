--- System Setup
SET application_name="container_setup";

CREATE EXTENSION IF NOT EXISTS pg_stat_statements;
CREATE EXTENSION IF NOT EXISTS pgaudit;

CREATE USER "PGHA_USER" LOGIN;
ALTER USER "PGHA_USER" PASSWORD 'PGHA_USER_PASSWORD';

CREATE DATABASE "PGHA_DATABASE";
GRANT ALL PRIVILEGES ON DATABASE "PGHA_DATABASE" TO "PGHA_USER";

--- PGHA_DATABASE Setup

\c "PGHA_DATABASE"

CREATE EXTENSION IF NOT EXISTS pg_stat_statements;
CREATE EXTENSION IF NOT EXISTS pgaudit;

CREATE SCHEMA IF NOT EXISTS AUTHORIZATION "PGHA_USER";