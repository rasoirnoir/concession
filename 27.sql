-- Pour chaque stock, afficher la marque ayant le vehicule le moins cher, ainsi que sa valeur. (Cet exercice est plus difficile)
SELECT stock.entrepot as Entrepôt, modele.marque as Marque, MIN(vehicule.prix) as 'Prix minimum'
FROM stock
	RIGHT JOIN vehicule
    ON vehicule.id_stock = stock.id
		LEFT JOIN modele
        ON vehicule.id_modele = modele.id
GROUP BY Entrepôt