
BEGIN;

CREATE TEMPORARY TABLE newstates(id integer, name text, population integer);

INSERT INTO newstates(id, name, population) VALUES (10, 'Oregon', 3970239), (3, 'Washington', 7061530);

LOCK TABLE state IN EXCLUSIVE MODE;

UPDATE state
SET name = newstates.name
FROM newstates
WHERE newstates.id = state.id;

INSERT INTO state
SELECT newstates.id, newstates.name, newstates.population
FROM newstates
LEFT OUTER JOIN state ON (state.id = newstates.id)
WHERE state.id IS NULL;

COMMIT;

