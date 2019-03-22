-- Création base de donnée / si existe déjà, supprimer !
DROP DATABASE IF EXISTS Bank;
create database Bank;
use Bank;

-- Création table des clients
create table T_Customers(
				IdCust int(4)  PRIMARY KEY AUTO_INCREMENT,
				Name varchar(20),
				FirstName varchar(20)
);


-- Ajouter des clients à votre table
INSERT INTO T_Customers(IdCust,Name,FirstName) VALUES (numero de IdCust,'nom du client','prenom du client');
--il doit y avoir plusieurs clients avec un IdCust different car c'est l'IdCust qui lie les clients et le compte



-- Création table des comptes
CREATE TABLE T_Counts(
				NumCt    int(4)  PRIMARY KEY AUTO_INCREMENT,
				DateCreation date   NOT NULL,
				Balance   int(4)        NOT NULL,
				IdCust  int(4)        REFERENCES T_Customers(IdCust)
);


-- Ajouter des comptes

INSERT INTO T_Counts(NumCt,DateCreation,Balance,IdCust) VALUES (numero de NumCt ,'date actuel',la balance,IdCust du client auquel appartient le compte);
--NumCt un seul car lui il va lier le compte avec les operations il doit y avoir plusieurs compte pour un client

-- Création table des opérations
CREATE TABLE T_Operations(
				NumOp  int(4)  NOT NULL PRIMARY KEY AUTO_INCREMENT,
				Amount int(4) NOT NULL,
				NumCt  int(4)  REFERENCES  T_Counts(NumCt)
);


-- Ajouter des opérations
INSERT INTO T_Operations(NumOp,Amount,NumCt) VALUES (numero de NumOp ,argent verser,NumCt auquel appartient le compte);
--il doit y avoir un NumOp car chaque operation est differente et le NumCt est le meme que le compte sur lequel il y a les operations

