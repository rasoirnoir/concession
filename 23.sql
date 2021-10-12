-- Afficherte des véhicules en vente
SELECT vehicule.id as ID
FROM vehicule_vendu
	RIGHT JOIN vehicule
    ON vehicule_vendu.id_vehicule = vehicule.id
WHERE vehicule_vendu.id is null;