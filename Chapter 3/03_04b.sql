-- Determine what products sold together
SELECT
a.ProductsID as ProductsID1,
b.ProductsID as ProductsID2
COUNT(*) as TimePurchased
FROM OrderItem as a 
INNER JOIN OrderItem as b
ON a.OrderID = b.OrderID
AND a.ProductsID < b.ProductsID
GROUP BY a.ProductsID, b.ProductsID
ORDER BY TimePurchased DESC;