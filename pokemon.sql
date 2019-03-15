use pokemon2;

drop table if exists pokemon_instance;
drop table if exists pokemon;
drop table if exists type_matchups;
drop table if exists type;

create table type (
    id int(4) not null auto_increment primary key,
    name varchar(50) not null
);

create table type_matchups (
    id int(4) not null auto_increment primary key,
    type_1 int(4) not null references type(id),
    type_2 int(4) not null references type(id),
    modifier decimal(9, 2) not null
);

create table pokemon (
    id int(4) not null auto_increment primary key,
    name varchar(50) not null,
    type1_id int(4) not null,
    type2_id int(4),
    base_hp int(4) not null,
    base_atk int(4) not null,
    base_def int(4) not null,
    base_spc_atk int(4) not null,
    base_spc_def int(4) not null,
    base_speed int(4) not null
);

-- create table moves (

-- );

create table pokemon_instance (
    id int(9) not null auto_increment primary key,
    pokemon_id int(4) not null references pokemon(id),
    nickname varchar(50),
    level int(3) not null,
    hp_mod int(4) not null,
    atk_mod int(4) not null,
    def_mod int(4) not null,
    spc_atk_mod int(4) not null,
    spc_def_mod int(4) not null,
    speed_mod int(4) not null
);

source seed.sql;