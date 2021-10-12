/* Afficher des véhicules rouges et des véhicules verts */
SELECT vehicule.*, couleur.nom as Couleur
FROM vehicule
LEFT JOIN couleur
ON vehicule.id_couleur = couleur.id
WHERE couleur.nom = 'rouge' OR couleur.nom = 'vert';