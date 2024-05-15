SELECT pd.name, pv.name
FROM Products pd, Providers pv
WHERE pd.id_categories = 6
  AND pd.id_providers = pv.id;
