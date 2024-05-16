SELECT pd.name, pv.name, c.name
FROM Products pd, Providers pv, Categories c
WHERE pd.id_categories = c.id
  AND pd.id_providers = pv.id
  AND c.name = 'Imported'
  AND pv.name = 'Sansul SA';
