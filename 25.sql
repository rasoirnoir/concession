-- Inventaire du stock : nombre de véhicules par stock/marque/modèle.
SELECT modele.marque as Marque, modele.nom as Modele, stock.entrepot as Entrepôt, ville.nom as Ville, count(*)
FROM vehicule
	LEFT JOIN modele
    ON modele.id = vehicule.id_modele
		LEFT JOIN stock
        ON stock.id = vehicule.id_stock
			LEFT JOIN ville
            ON ville.id = stock.id_ville
GROUP BY vehicule.id_stock, modele.marque, vehicule.id_modele;
