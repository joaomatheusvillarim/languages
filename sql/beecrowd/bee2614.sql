SELECT c.name, r.rentals_date
FROM Customers c, Rentals r
WHERE c.id = r.id_customers
  AND date_trunc('month', r.rentals_date) = '2016-09-01';
