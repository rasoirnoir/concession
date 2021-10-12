/* Afficher la liste des véhicules rouges */
SELECT vehicule.*, couleur.nom as Couleur
FROM
	vehicule
LEFT JOIN couleur
ON vehicule.id_couleur = couleur.id
WHERE couleur.nom = 'rouge';