-- 1
SELECT Nome, Ano 
	FROM Filmes

-- 2
SELECT Nome, Ano, Duracao
	FROM Filmes
	ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano > 2000
	
-- 6
SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Duracao > 100 AND Duracao < 150
	ORDER BY Duracao 

-- 7 - No enunciado diz "ordenado pela duracao", mas para produzir o resultado da imagem so sendo ordenado pela quantidade
SELECT Ano, COUNT(*) as Quantidade
	FROM Filmes
	GROUP BY Ano
	ORDER BY Quantidade DESC
	
-- 8
SELECT *
	FROM Atores
	WHERE Genero = 'M'

-- 9
SELECT *
	FROM Atores
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome

-- 10
SELECT f.Nome, g.Genero
	From Filmes f
	INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
	INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11
SELECT f.Nome, g.Genero
	From Filmes f
	INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
	INNER JOIN Generos g ON fg.IdGenero = g.Id
	WHERE g.Genero = 'Mistério'

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
	From Filmes f
	INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
	INNER JOIN Atores a ON e.IdAtor = a.Id
