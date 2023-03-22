CREATE TABLE transactions(
  id uuid PRIMARY KEY DEFAULT public.gen_random_uuid() NOT NULL,
  from_account_id uuid NOT NULL,
  to_account_id uuid NOT NULL,
  CONSTRAINT fk_from_account_id FOREIGN KEY (from_account_id) REFERENCES account(id) ON DELETE CASCADE,
  CONSTRAINT fk_to_account_id FOREIGN KEY (to_account_id) REFERENCES account(id) ON DELETE CASCADE
)