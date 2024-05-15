SELECT c.name, SUM(p.amount)
FROM Products p, Categories c
WHERE p.id_categories = c.id
GROUP BY c.name;
