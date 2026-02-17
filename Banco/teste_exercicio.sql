--
-- Arquivo gerado com SQLiteStudio v3.4.21 em ter fev 17 20:23:17 2026
--
-- Codificação de texto usada: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    Id          INTEGER      PRIMARY KEY
                             NOT NULL,
    Nome        VARCHAR (20) NOT NULL,
    Sobrenome   VARCHAR (25) NOT NULL,
    Endereco    VARCHAR (50),
    Aniversario DATE         NOT NULL,
    Telefone    VARCHAR (18) NOT NULL
);
INSERT INTO Cliente (Id, Nome, Sobrenome, Endereco, Aniversario, Telefone) VALUES (1, 'Gustavo', 'Valle', 'Rua A', '2000-01-01', '2799999999');
INSERT INTO Cliente (Id, Nome, Sobrenome, Endereco, Aniversario, Telefone) VALUES (2, 'Isabella', 'Silveira', 'Rua Jaime Santos', '1999-07-13', '35997311999');
INSERT INTO Cliente (Id, Nome, Sobrenome, Endereco, Aniversario, Telefone) VALUES (3, 'Mileno', 'Matos', 'Rua Jaime Santos', '2001-04-21', '35997219800');
INSERT INTO Cliente (Id, Nome, Sobrenome, Endereco, Aniversario, Telefone) VALUES (4, 'Eluy', 'Firmino', 'Rua Joaquim Bernardes', '1977-08-09', '35997031973');
INSERT INTO Cliente (Id, Nome, Sobrenome, Endereco, Aniversario, Telefone) VALUES (5, 'Nelson', 'Silveira', 'Rua Joaquim Bernardes', '1973-10-03', '3519071977');

-- Tabela: Conta
CREATE TABLE IF NOT EXISTS Conta (
    Id        INTEGER        PRIMARY KEY
                             NOT NULL,
    IdCliente INTEGER        NOT NULL
                             REFERENCES Cliente (Id),
    TipoConta BOOLEAN        NOT NULL,
    Saldo     DECIMAL (6, 2) NOT NULL
);
INSERT INTO Conta (Id, IdCliente, TipoConta, Saldo) VALUES (1, 1, 'true', 500);
INSERT INTO Conta (Id, IdCliente, TipoConta, Saldo) VALUES (2, 2, 'true', 10000);
INSERT INTO Conta (Id, IdCliente, TipoConta, Saldo) VALUES (3, 3, 'false', 6000);
INSERT INTO Conta (Id, IdCliente, TipoConta, Saldo) VALUES (4, 4, 'true', 4000);
INSERT INTO Conta (Id, IdCliente, TipoConta, Saldo) VALUES (5, 4, 'false', 1000);
INSERT INTO Conta (Id, IdCliente, TipoConta, Saldo) VALUES (6, 5, 'true', 3000);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
