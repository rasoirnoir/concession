/* Afficher les données des vendeurs et de sa ville rattachée */
/*
SELECT * 
FROM
	vendeur, ville
WHERE
	vendeur.id_ville = ville.id;
*/
SELECT *
FROM vendeur
LEFT JOIN ville
ON vendeur.id_ville = ville.id;    