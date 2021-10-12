-- Afficher des véhicules en stock, ayant une couleur contenant le lettre u
SELECT vehicule.*, couleur.nom
FROM vehicule
LEFT JOIN couleur
ON vehicule.id_couleur = couleur.id
WHERE couleur.nom LIKE '%u%' AND vehicule.id_stock is not null
ORDER BY vehicule.id;