/*
Q1. Mostre a quantidade de empréstimos que as pessoas residentes
em Campina Grande realizaram em livros publicados em 2005.
*/

SELECT COUNT(*)
FROM Usuario u, Emprestimo e, Livro l, ExemplarLivro el
WHERE u.endereco LIKE '%Campina Grande%'
  AND e.codUsu = u.codUsu
  AND e.codExemplar = el.codExemplar
  AND el.codLivro = l.codLivro
  AND l.ano = 2005;