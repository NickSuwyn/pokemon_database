-- find all types super effective against fire
select name from type where id in (select type_1 from type_matchups where type_2 = 1 and modifier = 2);

-- shows type matchups with names
select t1.name as 'Attacking', t2.name as 'Defending', tm.modifier from type_matchups tm inner join type t1 on t1.id = tm.type_1 inner join type t2 on t2.id = tm.type_2;