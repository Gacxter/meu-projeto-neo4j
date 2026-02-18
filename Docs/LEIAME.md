# 🎬 Projeto Neo4j - Sistema de Recomendação de Filmes

## 📊 Sobre o Projeto
Grafo de recomendação de filmes com dados de usuários, avaliações, atores e diretores.

## 🏗️ Estrutura do Banco
- **43 nós** (10 usuários, 9 filmes, 9 atores, 8 diretores, 6 gêneros, 1 série)
- **76 relacionamentos** (WATCHED, ACTED_IN, DIRECTED, IN_GENRE)

## 🚀 Como Usar

### 1. Importar para Neo4j Aura

# Conecte ao seu banco Aura
cypher-shell -u neo4j -p sua-senha -a bolt+s://seu-cluster.neo4j.io < cypher/01-setup.cypher
cypher-shell -u neo4j -p sua-senha -a bolt+s://seu-cluster.neo4j.io < cypher/02-nodes.cypher
cypher-shell -u neo4j -p sua-senha -a bolt+s://seu-cluster.neo4j.io < cypher/03-relationships.cypher

#### 2. Colar as Instruções na Query do Neo4j Aura

# Acesse o Neo4j Aura ative o banco de dados na Aba Instances
# Após ativação, na aba QUERY, à esquerda, e após em database overview cole as instruções contidas na pasta /cypher

## Primeiro cole e execute o conteúdo do arquivo 01_setup.cypher
## Depois cole e execute o conteúdo do arquivo 02_nodes.cypher
## Por último cole e execute o conteúdo do arquivo 03_relationships.cypher