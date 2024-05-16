SELECT id, name
FROM Customers
WHERE id NOT IN (
  SELECT id_customers
  FROM Locations
);
