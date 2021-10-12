-- Afficher des véhicules en stock à Nantes
SELECT vehicule.*
FROM vehicule
LEFT JOIN stock
ON vehicule.id_stock = stock.id
WHERE stock.id_ville in (SELECT ville.id FROM ville WHERE ville.nom = 'Nantes');