CREATE TABLE Produits (
  id integer auto_increment,
  nom varchar(10),
  prix float,
  stock integer
);
INSERT INTO Produits (nom,prix,stock) VALUES ('tv',2000,100);

UPDATE Produits
  SET prix = prix * 0.10
  WHERE id = 2;

  DELETE FROM Produits
    WHERE stock = 0;

--------------------------------------------
--------------------------------------------
select count(*) from commandes;

select avg( prix)from Produits;

select max(prix)from Produits;

