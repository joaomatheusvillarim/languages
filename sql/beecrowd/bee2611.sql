SELECT m.id, m.name
FROM Movies m, Genres g
WHERE m.id_genres = g.id
  AND g.description = 'Action';
