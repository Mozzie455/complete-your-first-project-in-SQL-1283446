-- Find how many products sold
SELECT
COUNT(DISTINCT productID) as TotalUniqueProducts,
SUM(Quantity) as TotalQuantity
FROM OrderItem;