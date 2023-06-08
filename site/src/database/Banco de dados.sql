CREATE DATABASE Mine;
USE Mine;
drop database Mine;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE jogos (
idJogo INT PRIMARY KEY,
nome VARCHAR(45)
);

CREATE TABLE jogosFavoritos (
idJogosFavoritos INT primary key auto_increment,
nomefavorito varchar(45),
fkUsuario INT,
FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario)
);

SELECT * FROM usuario;
SELECT * FROM jogos;
SELECT * FROM jogosFavoritos;
select nomefavorito, count(nomefavorito) as votos from jogosFavoritos join usuario on fkUsuario = idUsuario group by nomeFavorito;
