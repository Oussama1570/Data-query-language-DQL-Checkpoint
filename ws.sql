SELECT * FROM Customer;







SELECT Product_Name, category
FROM Product
WHERE Price BETWEEN 5000 AND 10000;








SELECT * FROM Product ORDER BY Price DESC;






SELECT COUNT(*) AS total_orders, AVG(total_amount)
 AS average_amount, MAX(total_amount) AS highest_total_amount,
 MIN(total_amount) AS lowest_total_amount FROM Orders;







 SELECT Customer_id FROM Orders GROUP BY Customer_id HAVING COUNT(*) > 2;









 SELECT EXTRACT(MONTH FROM OrderDate) AS Month, COUNT(*) AS NumOrders
  FROM Orders WHERE EXTRACT(YEAR FROM OrderDate) = 2020 GROUP BY EXTRACT
  (MONTH FROM OrderDate) ORDER BY Month;














SELECT 
  p.Product_Name,
  c.customer_Name,
  o.OrderDate
FROM Orders o
INNER JOIN Customer c ON o.#Customer_id = c.Customer_ID
INNER JOIN Product p ON o.#Product_id = p.Product_Id;








SELECT o.Customer_ID, c.customer_Name, c.customer_Tel, 
       p.Product_Id, p.Product_Name, p.category, p.Price,
       o.OrderDate, o.quantity, o.total_amount
FROM Orders o
INNER JOIN Customer c ON o.Customer_ID = c.Customer_ID
INNER JOIN Product p ON o.Product_ID = p.Product_Id
WHERE o.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) 
ORDER BY o.OrderDate DESC;





SELECT Customer_ID FROM Customer WHERE Customer_ID NOT IN ( SELECT Customer_ID FROM Orders ) ;