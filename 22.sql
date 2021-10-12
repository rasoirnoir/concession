-- Afficher des véhicules vendus avec leurs caractéristiques et le nom du vendeur
SELECT *
FROM vehicule_vendu
	LEFT JOIN vehicule
	ON vehicule.id = vehicule_vendu.id_vehicule
		LEFT JOIN vente
        ON vente.id = vehicule_vendu.id_vente
			LEFT JOIN vendeur
            ON vendeur.id = vente.id_vendeur;