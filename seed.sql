use pokemon2;

delete from type;
delete from type_matchups;

insert into type(name) values ("Fire"), ("Water"), ("Grass"), ("Electric"), ("Rock"), ("Ground"), ("Bug"), ("Psychic"), ("Poison"), ("Dragon"), ("Fairy"), ("Ice"), ("Steel"), ("Flying"), ("Fighting"), ("Dark"), ("Ghost"), ("Normal");

insert into type_matchups(type_1, type_2, modifier) values 
(1, 2, .5), (1, 3, 2), (6, 4, 2), (7, 8, 2),
(2, 1, 2), (2, 3, .5), (3, 1, .5), (3, 2, 2),
(6, 1, 2), (5, 1, 2);