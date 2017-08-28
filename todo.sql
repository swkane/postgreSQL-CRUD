DROP TABLE todos;

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT now(),
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title)
  VALUES
    ('wash the car'),
    ('go rockclimbing'),
    ('attend react meetup');

INSERT INTO todos (title, priority)
  VALUES ('ride my bike', 3);

INSERT INTO todos (title, completed_at)
  VALUES ('do this daily project', now());

SELECT * FROM todos
  WHERE completed_at IS NULL;

SELECT * FROM todos
  WHERE priority > 1;

UPDATE todos SET completed_at = now() WHERE id = 4;

DELETE FROM todos WHERE completed_at IS NOT NULL;
