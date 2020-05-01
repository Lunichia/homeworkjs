--
SELECT  
(
SELECT ProductName 
FROM Products 
WHERE ProductID = p.ProductID
)
AS ProductName,SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) AS Total
FROM Products p
INNER JOIN [Order Details]od ON od.ProductID = p.ProductID
INNER JOIN Orders o ON od.OrderID = o.orderID
WHERE  o.CustomerID = 'ANATR'
GROUP BY p.ProductID  --因為INNER JOIN後所以ProductID會有重複，p.(要看FROM Products p)
ORDER BY Total DESC


SELECT *
FROM Products

SELECT *
FROM [Order Details]


