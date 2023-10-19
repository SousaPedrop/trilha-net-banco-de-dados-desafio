-- 1
SELECT NOME, ANO FROM FILMES;

-- 2 
SELECT NOME, ANO FROM FILMES ORDER BY ANO;

-- 3
SELECT Nome, Ano, Duracao FROM FILMES WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano = 1997;

-- 5
SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano > 2000;

-- 6
SELECT Nome, Ano, Duracao 
FROM FILMES 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 
SELECT Ano, COUNT(Ano) "Quantidade"
FROM FILMES 
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT PrimeiroNome, UltimoNome --, Genero
FROM Atores 
WHERE Genero = 'M'

-- 9
SELECT PrimeiroNome, UltimoNome --, Genero
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT F.Nome, G.Genero
FROM Filmes F, FilmesGenero FG, Generos G 
WHERE F.Id = FG.IdFilme AND FG.IdGenero = G.Id

SELECT NOME, GENERO 
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT NOME, GENERO 
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério' -- LIKE 'Mi'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, Papel 
FROM Filmes F, Atores A, ElencoFilme EF
WHERE EF.IdFilme = F.Id AND A.Id = EF.IdAtor

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, Papel 
FROM Filmes F 
INNER JOIN  ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor