SELECT pd.name, pv.name
FROM Products pd, Providers pv
WHERE pd.id_providers = pv.id
  AND pv.name = 'Ajax SA';
