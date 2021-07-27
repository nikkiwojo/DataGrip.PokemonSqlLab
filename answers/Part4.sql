-- Write a query that returns pokemon name, trainer name, level, primary type, secondary type
-- Sort the data by finding out which trainer has the strongest pokemon
-- The trainer with the strongest pokemon has a pokemon with the highest poke-level
SELECT pokemons_name, trainers_name, pokelevel, primary_type, secondary_type 
FROM pokemons
JOIN pokemon_trainer ON pokemon_trainer.pokemon_id = pokemons.id
JOIN trainers ON trainers.trainerid = pokemon_trainer.trainer_id
JOIN types ON types.id = pokemons.primary_type
JOIN types ON types.id = secondary_type
ORDER BY pokelevel DESC;
	