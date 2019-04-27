-- Andrea Arguello 17801
-- Este .sql corresponde a la base de datos del lab 11

-- Creacion de usuarios con su respectiva contrasenia
CREATE USER operador WITH PASSWORD 'passwordoperador';
CREATE USER gerente WITH PASSWORD 'passwordgerente';
CREATE USER administrador WITH PASSWORD 'passwordadmin';

-- Confirmacion de que se crearon los usuarios
SELECT usename FROM pg_user;

-- Concededer accesos
/*
SI SE VA A USAR CON NOMBRE lab
GRANT CONNECT ON DATABASE lab TO administrador;
GRANT CONNECT ON DATABASE lab TO operador;
GRANT CONNECT ON DATABASE lab TO gerente;
*/
GRANT CONNECT ON DATABASE "lab11-17801" TO administrador;
GRANT CONNECT ON DATABASE "lab11-17801" TO operador;
GRANT CONNECT ON DATABASE "lab11-17801" TO gerente;

GRANT USAGE ON SCHEMA public TO administrador;
GRANT USAGE ON SCHEMA public TO gerente;
GRANT USAGE ON SCHEMA public TO operador;

-- Darle todos los permisos al administrador
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO administrador;
ALTER USER administrador WITH SUPERUSER CREATEDB CREATEROLE;

-- Ver que se concedieron todos los privilegios
SELECT usename, usecreatedb, usesuper FROM pg_user;

SELECT grantee, privilege_type, table_name
FROM information_schema.role_table_grants
WHERE grantee='administrador';

SELECT table_catalog, table_name, privilege_type
FROM   information_schema.table_privileges
WHERE  grantee = 'administrador';

-- Usando usuario administrador
SET ROLE administrador;

-- Chequeamos que si sea el current user
SELECT CURRENT_USER;

-- Solo lectura para operador
GRANT SELECT ON ALL TABLES IN SCHEMA public TO operador;

-- Ver que sea solo lectura
SELECT grantee, privilege_type, table_name
FROM information_schema.role_table_grants
WHERE grantee='operador';

-- Lectura y escritura gerente
GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE, TRIGGER, REFERENCES ON ALL TABLES IN SCHEMA public TO gerente;

-- Ver privilegios
SELECT grantee, privilege_type, table_name
FROM information_schema.role_table_grants
WHERE grantee='gerente';

-- que gerente pueda crear bases
ALTER USER gerente WITH CREATEDB;

-- Chequear a ver si ahora el gerente puede crear
SELECT usename, usecreatedb, usesuper FROM pg_user;

-- Revocar permisos
REVOKE REFERENCES, TRIGGER ON ALL TABLES IN SCHEMA public FROM gerente;

-- Ver privilegios
SELECT grantee, privilege_type, table_name
FROM information_schema.role_table_grants
WHERE grantee='gerente';
