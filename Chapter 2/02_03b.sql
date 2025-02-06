-- Determine which sales people made no sales
SELECT 
  SalesPerson.SalepersonID,
  FirstName,
  LastName
FROM SalesPerson
LEFT OUTER JOIN Orders
ON SalesPerson.SalepersonID = Orders.SalepersonID
WHERE Orders.SalepersonID IS NULL;  