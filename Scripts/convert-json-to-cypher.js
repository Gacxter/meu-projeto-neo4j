//Converte um arquivo JSON do Arrows.app para um script Cypher para Neo4j (devem estar na mesma pasta)
//Abra o terminal entre na pasta via terminal e execute: node convert-json-to-cypher.js
// convert-json-to-cypher.js
const fs = require('fs');

// Lê seu arquivo JSON
const jsonData = JSON.parse(fs.readFileSync('./Meu Grafo Teste.json', 'utf8'));

// Cria um arquivo Cypher
let cypherScript = `-- Script gerado automaticamente a partir do JSON
-- Projeto Neo4j do Arrows.app
-- Data: ${new Date().toISOString().split('T')[0]}

`;

// 1. Limpar o banco (opcional - comente se não quiser)
cypherScript += `-- Limpar banco existente
MATCH (n) DETACH DELETE n;

`;

// 2. Criar constraints/indexes (boas práticas)
cypherScript += `-- Criar constraints para performance
CREATE CONSTRAINT user_id IF NOT EXISTS FOR (u:user) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT movie_id IF NOT EXISTS FOR (m:movie) REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT serie_id IF NOT EXISTS FOR (s:serie) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT actor_id IF NOT EXISTS FOR (a:actor) REQUIRE a.id IS UNIQUE;
CREATE CONSTRAINT director_id IF NOT EXISTS FOR (d:Director) REQUIRE d.id IS UNIQUE;
CREATE CONSTRAINT genre_id IF NOT EXISTS FOR (g:Genre) REQUIRE g.id IS UNIQUE;

`;

// 3. Criar todos os NÓS
cypherScript += `-- ============ CRIAR NÓS ============\n\n`;

jsonData.nodes.forEach(node => {
  const labels = node.labels && node.labels.length > 0 
    ? `:${node.labels.join(':')}` 
    : '';
  
  const properties = {
    id: node.id,
    caption: node.caption,
    ...node.properties
  };
  
  // Remove propriedades vazias
  Object.keys(properties).forEach(key => {
    if (properties[key] === undefined || properties[key] === '') {
      delete properties[key];
    }
  });
  
  const propsString = JSON.stringify(properties)
    .replace(/"/g, "'")  // Troca aspas duplas por simples
    .replace(/'([^']+)':/g, "$1:");  // Remove aspas das chaves
  
  cypherScript += `CREATE (n${labels} ${propsString});\n`;
});

// 4. Criar todos os RELACIONAMENTOS
cypherScript += `\n-- ============ CRIAR RELACIONAMENTOS ============\n\n`;

jsonData.relationships.forEach(rel => {
  const type = rel.type || 'RELATED';
  const props = rel.properties || {};
  
  const propsString = Object.keys(props).length > 0
    ? ` ${JSON.stringify(props).replace(/"/g, "'").replace(/'([^']+)':/g, "$1:")}`
    : '';
  
  cypherScript += `MATCH (a {id: '${rel.fromId}'})
MATCH (b {id: '${rel.toId}'})
CREATE (a)-[:${type}${propsString}]->(b);

`;
});

// 5. Adicionar algumas consultas de exemplo
cypherScript += `-- ============ CONSULTAS DE EXEMPLO ============\n\n`;
cypherScript += `-- Contar todos os nós
MATCH (n) RETURN labels(n)[0] AS tipo, count(*) AS quantidade ORDER BY quantidade DESC;

-- Encontrar todos os usuários
MATCH (u:user) RETURN u.caption AS nome, u.email AS email LIMIT 10;

-- Filmes mais assistidos
MATCH (:user)-[w:WATCHED]->(m:movie) 
RETURN m.caption AS filme, count(w) AS vezes_assistido 
ORDER BY vezes_assistido DESC;

-- Atores que mais atuaram
MATCH (a:actor)-[:ACTED_IN]->(m) 
RETURN a.caption AS ator, count(m) AS filmes 
ORDER BY filmes DESC;
`;

// Salva o arquivo Cypher
fs.writeFileSync('./import-data.cypher', cypherScript);
console.log('✅ Arquivo Cypher criado: import-data.cypher');