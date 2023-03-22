CREATE TABLE users(
  id uuid PRIMARY KEY DEFAULT public.gen_random_uuid() NOT NULL,
  email varchar(255) UNIQUE NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  user_type SERIAL,
  CONSTRAINT fk_user_type FOREIGN KEY (user_type) REFERENCES usertypes(id) ON DELETE SET NULL
);