use pokemon2;

delete from type;
delete from type_matchups;
delete from pokemon_instance;
delete from pokemon;

insert into type(name) values ("Fire"), ("Water"), ("Grass"), ("Electric"), ("Rock"), ("Ground"), ("Bug"), ("Psychic"), ("Poison"), ("Dragon"), ("Fairy"), ("Ice"), ("Steel"), ("Flying"), ("Fighting"), ("Dark"), ("Ghost"), ("Normal");

insert into type_matchups(type_1, type_2, modifier) values 
(1, 2, .5), (1, 3, 2), (6, 4, 2), (7, 8, 2),
(2, 1, 2), (2, 3, .5), (3, 1, .5), (3, 2, 2),
(6, 1, 2), (5, 1, 2);

insert into pokemon(name, type1_id, type2_id, base_hp, base_atk, base_def, base_spc_atk, base_spc_def, base_speed) value
("Charizard", 1, 14, 60, 60, 60, 60, 60, 60), ("Pikachu", 4, null, 15, 15, 15, 15, 15, 15);

insert into pokemon_instance(pokemon_id, nickname, level, hp_mod, atk_mod, def_mod, spc_atk_mod, spc_def_mod, speed_mod) value
(2, null, 67, 100, 100, 100, 100, 100, 100), (1, null, 100, 250, 250, 250, 250, 250, 250);