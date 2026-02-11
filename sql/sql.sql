create table produits (
  id integer auto_increment,
  nom varchar(10),
  prix float,
  stock integer
);

insert into produits (nom, prix, stock) values ('tv', 2000, 100);

update produits set prix = prix * 0.10 where id = 2;

delete from produits where stock = 0;

select count(*) from commandes;

select avg(prix) from produits;

select max(prix) from produits;

select nom, commandes.* from clients inner join commandes on commandes.client_id = clients.id;

select nom, count(prix) from clients left join commandes on commandes.client_id = clients.id;

select clients.nom, sum(commandes.total) as chiffre_affaires from clients inner join commandes on commandes.client_id = clients.id group by clients.id, clients.nom;

select * from produits order by prix desc;

select clients.nom, count(commandes.id) as nb_commandes from clients inner join commandes on commandes.client_id = clients.id group by clients.id, clients.nom having count(commandes.id) > 2;

select clients.ville, sum(commandes.total) as chiffre_affaires from clients join commandes on commandes.client_id = clients.id group by clients.ville order by chiffre_affaires desc limit 3;

select produits.id, produits.nom from produits left join commande_produit on commande_produit.produit_id = produits.id where commande_produit.id is null;

select clients.nom, count(commandes.id) as nombre_commandes, sum(commandes.total) as total_ventes from clients join commandes on commandes.client_id = clients.id group by clients.id, clients.nom having count(commandes.id) > 1;
