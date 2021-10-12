-- Afficher des stocks et du prix du vehicule le plus cher dans chaque stock (sans afficher le véhicule)
SELECT stock.entrepot as Entrepôt, count(*) as 'Nombre véhicule', MAX(vehicule.prix) as 'Prix maximum'
FROM stock 
	RIGHT JOIN vehicule
    ON vehicule.id_stock = stock.id
GROUP BY Entrepôt;