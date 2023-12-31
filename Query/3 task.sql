SELECT Categories.name AS category_name, SUM(Order_Items.quantity * Order_Items.unit_price) AS total_revenue
FROM Order_Items
JOIN Products ON Order_Items.product_id = Products.product_id
JOIN Categories ON Products.category_id = Categories.category_id
GROUP BY Categories.name
ORDER BY total_revenue DESC;

