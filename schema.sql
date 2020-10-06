CREATE TABLE lists (
  id   SERIAL PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE todos (
  id           SERIAL PRIMARY KEY,
  name         TEXT NOT NULL,
  completed    BOOLEAN NOT NULL DEFAULT false,
  list_id      INT NOT NULL REFERENCES lists(id)
);
