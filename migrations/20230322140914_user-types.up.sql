CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;

CREATE TABLE usertypes(
  id SERIAL PRIMARY KEY NOT NULL,
  "name" varchar(255) NOT NULL,
  "description" varchar(255) NOT NULL
);