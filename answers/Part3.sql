-- What is each pokemon's primary type?
DESCRIBE types;
SELECT p.id, p.name, t.name AS primary_type FROM pokemons JOIN types t on p.primary_type = t.id;

-- What is Rufflet's secondary type?
SELECT t.name FROM types t JOIN pokemons p ON p.sec_type = t.id WHERE p.name LIKE "Rufflet";

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT * FROM poke_trainer WHERE tranierID = 303;

-- How many pokemon have a secondary type poison?
SELECT count(*) FROM types WHERE sec_type LIKE 'Poison';

-- What are all the primary types and how many pokemon have that type?
SELECT t.name, count(p.id) AS num_pokemon FROM types t JOIN pokemons p ON t.id = p.prim_type GROUP BY t.name;

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT count(pokemon_id) AS num_poke from pokemon_trainer WHERE pokemon_level >= 100 GROUP BY trainer_id;

-- How many pokemon only belong to one traner and no other?
SELECT count(DISTINCT p.pokemon_trainer, pokemon_id) FROM p.pokemon_trainer;