-- Andrea Arguello 17801
-- Este .sql corresponde a la base de datos del lab 11

-- Creacion de usuarios con su respectiva contrasenia
CREATE USER operador WITH PASSWORD 'passwordoperador';
CREATE USER gerente WITH PASSWORD 'passwordgerente';
CREATE USER administrador WITH PASSWORD 'passwordadmin';

-- Confirmacion de que se crearon los usuarios
SELECT usename FROM pg_user;
-- Ver permisos
SELECT usename, usecreatedb, usesuper, userepl, usebypassrls FROM pg_user;
