/* Affecter tous les vendeurs de la ville de Nantes à la ville de Saint-Nazaire. */
UPDATE vendeur
SET vendeur.id_ville = 2
WHERE vendeur.id_ville in (SELECT ville.id FROM ville WHERE ville.nom = 'Nantes');