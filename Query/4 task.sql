SELECT Customers.name AS customer_name, SUM(Order_Items.quantity * Order_Items.unit_price) AS total_purchase_amount
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
JOIN Order_Items ON Orders.order_id = Order_Items.order_id
GROUP BY Customers.name
ORDER BY total_purchase_amount DESC
LIMIT 5;
