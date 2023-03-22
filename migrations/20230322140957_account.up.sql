CREATE TABLE account(
  id uuid PRIMARY KEY DEFAULT public.gen_random_uuid() NOT NULL,
  "type" SERIAL
);