SELECT m.id, m.name
FROM Movies m, Prices p
WHERE m.id_prices = p.id
  AND p.value < 2;
