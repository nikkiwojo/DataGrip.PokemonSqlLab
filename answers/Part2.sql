-- What are all the types of pokemon that a pokemon can have?
SHOW tables;
SELECT * from types;

-- What is the name of the pokemon with id 45?
SELECT name FROM Pokemon WHERE ID = 45;

-- How many pokemon are there?
SELECT count(*) FROM pokemons;

-- How many types are there?
SELECT count(*) FROM types;

-- How many pokemon have a secondary type?
SELECT count(*) FROM Pokemon WHERE sec_type IS NOT NULL AND sec_type <> ' ';