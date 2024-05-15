SELECT p.id, p.name
FROM Products p, Categories c
WHERE p.id_categories = c.id
  AND LOWER(c.name) LIKE 'super%';
