/* Afficher le nom, prénom et la ville des vendeurs en affichant en entête de colonne : nom, prénom, ville */
SELECT vendeur.nom as Nom, vendeur.prenom as Prénom, ville.nom as Ville
FROM vendeur
LEFT JOIN ville
ON vendeur.id_ville = ville.id;