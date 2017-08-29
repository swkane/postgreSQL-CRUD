-- INSERT INTO todos (title)
--   VALUES
--     ('make a todo list'),
--     ('eat a bagel'),
--     ('wipe down the tables'),
--     ('talk to musician'),
--     ('download photos'),
--     ('practice TDD'),
--     ('finish projects from last week'),
--     ('walk the dog'),
--     ('find a new podcast'),
--     ('eat lunch');

-- INSERT INTO todos (title, priority)
--   VALUES
--     ('get a coffee', 3),
--     ('learn guitar', 2),
--     ('book a vacation', 3),
--     ('rebinge all of GOT', 4),
--     ('work on freeCodeCamp', 3);
--
-- INSERT INTO todos (title, completed_at)
--   VALUES
--     ('shine my shoes', now()),
--     ('write a kind note', now()),
--     ('hold the door open for someone', now()),
--     ('draw a dove', now()),
--     ('erase my drawing of a dove', now());

SELECT * FROM todos
  WHERE completed_at IS NULL AND priority = 3;

SELECT COUNT(priority), priority FROM todos
  WHERE completed_at IS NULL
  GROUP BY priority;

SELECT COUNT(title), priority FROM todos
  WHERE created_at < '2017/08/30' AND created_at > '2017/07/30'
  GROUP BY priority;

-- Highest priority that was created first / limit 1
SELECT title, MAX(priority), MIN(created_at) FROM todos
  GROUP BY title, priority
  ORDER BY priority DESC
  LIMIT 1
;
