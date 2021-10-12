/* Afficher le nom, prénom et la ville des vendeurs */
/*
SELECT vendeur.nom, vendeur.prenom, ville.nom as Ville
FROM
	vendeur, ville
WHERE vendeur.id_ville = ville.id;
*/
SELECT vendeur.nom, vendeur.prenom, ville.nom as Ville
FROM vendeur
LEFT JOIN ville
ON vendeur.id_ville = ville.id;
