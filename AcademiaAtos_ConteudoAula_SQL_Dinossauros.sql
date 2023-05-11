CREATE DATABASE Academia_Atos_Dinossauros;

CREATE TABLE eras (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  ano_inicio INT,
  ano_fim INT
);

CREATE TABLE grupos (
  id INT PRIMARY KEY,
  nome VARCHAR(50)
);

CREATE TABLE dinossauros (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  toneladas DECIMAL(10,2),
  ano_descoberta INT,
  descobridor VARCHAR(50),
  era_id INT,
  grupo_id INT,
  pais_descoberta VARCHAR(50),
  FOREIGN KEY (era_id) REFERENCES eras(id),
  FOREIGN KEY (grupo_id) REFERENCES grupos(id)
);