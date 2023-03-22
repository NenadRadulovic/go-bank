CREATE TABLE accounttypes (
  id SERIAL PRIMARY KEY NOT NULL,
  "name" varchar(255) NOT NULL,
  "description" varchar(255) NOT NULL
);

ALTER TABLE account ADD CONSTRAINT fk_account_type FOREIGN KEY ("type") REFERENCES accounttypes(id) ON DELETE SET NULL;