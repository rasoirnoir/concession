/* Afficher le nom, prénom et nom du responsable des vendeurs */
SELECT v1.nom as Nom, v1.prenom as Prénom, v2.nom as Responsable
FROM vendeur as v1
LEFT JOIN vendeur as v2
ON v1.id_responsable = v2.id;