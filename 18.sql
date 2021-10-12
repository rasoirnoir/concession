-- Afficher des modèles et de leur différent prix pour les véhicules essences et des véhicules rouges.
-- (Indication : le SELECT des véhicules rouges est différent du SELECT des véhicules essence).
SELECT vehicule.id, modele.nom as Modele, vehicule.prix as Prix, carburant.nom as Carburant, couleur.nom as Couleur
FROM vehicule
	LEFT JOIN modele
	ON vehicule.id_modele = modele.id
		LEFT JOIN motorisation
        ON vehicule.id_motorisation = motorisation.id
			LEFT JOIN carburant
			ON motorisation.id_carburant = carburant.id
				LEFT JOIN couleur
				ON vehicule.id_couleur = couleur.id
WHERE carburant.nom = 'essence' OR couleur.nom = 'rouge';