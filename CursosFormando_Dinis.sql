CREATE DATABASE IF NOT EXISTS CursosFormando;
USE CursosFormando;

CREATE TABLE Formando (
	idFormando INT AUTO_INCREMENT PRIMARY KEY,
    nomeFormando varchar(100) NOT NULL,
    Nº_Identificacao VARCHAR(100),
    Data_Nascimento Date
);

CREATE TABLE Turma (
    idTurma INT AUTO_INCREMENT PRIMARY KEY,
    idFormando INT,
    Designacao_Turma VARCHAR(150) NOT NULL,
    Data_Criacao Date,
    FOREIGN KEY (idFormando) references Formando(idFormando)
);

CREATE TABLE Curso (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    idTurma INT,
    Nome_Curso VARCHAR(150) NOT NULL,
    Data_Inicio Date,
    Carga_Horaria INT,
    FOREIGN KEY (idTurma) references Turma(idTurma)
);


