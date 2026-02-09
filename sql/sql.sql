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

select nom,commandes.* from clients inner join commandes on commandes.client_id = clients.id;
select nom,count(prix) from clients left join commandes on commandes.client_id = clients.id;
-- 
ch1 
select
  clients.nom,
  sum(commandes.total) as chiffre_affaires
from clients
inner join commandes on commandes.client_id = clients.id
group by clients.id, clients.nom;
ch2
select *
from produits
order by prix desc;
ch3 
select
  clients.nom,
  count(commandes.id) as nb_commandes
from clients
inner join commandes on commandes.client_id = clients.id
group by clients.id, clients.nom
having count(commandes.id) > 2;
