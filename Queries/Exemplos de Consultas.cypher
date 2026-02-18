-- Count all nodes
-- Contar todos os nós
MATCH (n) RETURN labels(n)[0] AS tipo, count(*) AS quantidade ORDER BY quantidade DESC;

-- Find all users
-- Encontrar todos os usuários
MATCH (u:user) RETURN u.caption AS nome, u.email AS email LIMIT 10;

-- Most watched Films
-- Filmes mais assistidos
MATCH (:user)-[w:WATCHED]->(m:movie) 
RETURN m.caption AS filme, count(w) AS vezes_assistido 
ORDER BY vezes_assistido DESC;

-- Most acted actors
-- Atores que mais atuaram
MATCH (a:actor)-[:ACTED_IN]->(m) 
RETURN a.caption AS ator, count(m) AS filmes 
ORDER BY filmes DESC;