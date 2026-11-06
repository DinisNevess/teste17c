CREATE DATABASE IF NOT EXISTS gestao_torneios;
USE gestao_torneios;

CREATE TABLE Equipas (
 ID_Equipa INT AUTO_INCREMENT PRIMARY KEY,
 Nome_Equipa VARCHAR(100) NOT NULL,
 Data_Criacao DATE NOT NULL
);

CREATE TABLE Jogadores (
 ID_Jogador INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL,
 Nickname VARCHAR(50) NOT NULL,
 Data_Nascimento DATE NOT NULL,
 ID_Equipa INT NOT NULL,
 FOREIGN KEY (ID_Equipa)
 REFERENCES Equipas(ID_Equipa)
);

CREATE TABLE Torneios (
 ID_Torneio INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL,
 Data_Inicio DATE NOT NULL,
 Premio_Monetario DECIMAL(10,2) NOT NULL,
 CHECK (Premio_Monetario >= 0)
);


CREATE TABLE Participacoes (
 ID_Equipa INT NOT NULL,
 ID_Torneio INT NOT NULL,
 PRIMARY KEY (ID_Equipa, ID_Torneio),
 FOREIGN KEY (ID_Equipa)
 REFERENCES Equipas(ID_Equipa),
 FOREIGN KEY (ID_Torneio)
 REFERENCES Torneios(ID_Torneio)
);

insert Into Equipas (ID_Equipa,Nome_Equipa,Data_Criacao) values
('1','Porto','1978-10-26'),
('2','Real Madrid','1965-5-5')
;

insert Into Jogadores (ID_Jogador,Nome,Nickname,Data_Nascimento,ID_Equipa) values
('1','Ronaldo','CR7','1987-2-5','1'),
('2','Taremi','Piscina','1999-5-10','1')

