/*
Q3. Quais livros (codLivro) possuem mais de 10 exemplares?
*/

SELECT l.codLivro
FROM Livro l, ExemplarLivro el
WHERE l.codLivro = el.codLivro
HAVING COUNT(*) > 10
GROUP BY l.codLivro;