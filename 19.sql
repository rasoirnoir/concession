-- Afficher de tous les véhicules avec toutes leurs caractéristiques
SELECT 
	modele.marque as Marque, modele.nom as Nom, couleur.nom as Couleur, modele.annee as Année, carburant.nom as Carburant, motorisation.Chevaux as CV, 
    motorisation.cylindree as Cylindree, vehicule.occasion as Occasion, vehicule.prix as Prix, stock.entrepot as Entrepôt, ville.nom as Ville
FROM vehicule
LEFT JOIN modele
ON vehicule.id_modele = modele.id
	LEFT JOIN couleur
    ON couleur.id = vehicule.id_couleur
     LEFT JOIN motorisation
     ON motorisation.id = vehicule.id_motorisation
		LEFT JOIN carburant
        ON carburant.id = motorisation.id_carburant
			LEFT JOIN stock
            ON vehicule.id_stock = stock.id
				LEFT JOIN ville
                ON ville.id = stock.id_ville;