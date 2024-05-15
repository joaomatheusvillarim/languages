# Banco de Dados "Biblioteca"

Dado o esquema relacional de uma biblioteca exibido a seguir, responda aos itens 1 a 5 usando SQL padrão.

- Usuario (<u>codU</u>, nome, endereço, sexo, telefone)
- Livro (<u>codLivro</u>, titulo, ano, editora)
- ExemplarLivro (<u>codExemplar</u>, tipo, estaEmprestado, codLivro)
- Emprestimo (<u>codUsu, codExemplar, dataEmprestimo</u>, dataDevolucao, valorMulta)