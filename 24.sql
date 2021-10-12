-- Afficher des motorisations triées par carburant, puissance, cylindrée.
SELECT motorisation.Chevaux as CV, motorisation.cylindree as Cylindree, carburant.nom as Carburant
FROM motorisation
	LEFT JOIN carburant
    ON carburant.id = motorisation.id_carburant
ORDER BY Carburant, CV, Cylindree;