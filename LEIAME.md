# 🎬 Neo4j Movie Graph - Sistema de Recomendação de Filmes

# 🎬 Neo4j Movie Graph - Sistema de Recomendação de Filmes

![Neo4j](https://img.shields.io/badge/Neo4j-008CC1?style=for-the-badge&logo=neo4j&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📋 Sobre o Projeto

Este projeto implementa um **grafo de recomendação de filmes** no Neo4j, contendo dados de usuários, filmes, atores, diretores e avaliações. O grafo permite consultas complexas como "filmes que usuários com gostos similares assistiram" ou "atores que mais trabalharam com determinado diretor". Proposta do Bootcamp da DIO em parceria com o Neo4j.

### ✨ Características
- **43 nós** representando entidades do mundo cinematográfico
- **76 relacionamentos** conectando essas entidades
- **10 usuários** com perfis e avaliações
- **9 filmes** de diversos gêneros
- **9 atores** e **8 diretores** renomados
- **6 gêneros** diferentes
- **1 série**

## 🏗️ Estrutura do Grafo

### Tipos de Nós
| Label | Quantidade | Descrição |
|-------|------------|-----------|
| `:user` | 10 | Usuários do sistema |
| `:movie` | 9 | Filmes catalogados |
| `:actor` | 9 | Atores |
| `:Director` | 8 | Diretores |
| `:Genre` | 6 | Gêneros de filmes |
| `:serie` | 1 | Séries de TV |
| `(sem label)` | 3 | Atores (corrigir) |

### Tipos de Relacionamentos
| Tipo | Quantidade | Descrição |
|------|------------|-----------|
| `WATCHED` | 27 | Usuário assistiu filme |
| `ACTED_IN` | 18 | Ator atuou no filme |
| `DIRECTED` | 15 | Diretor dirigiu o filme |
| `IN_GENRE` | 15 | Filme pertence ao gênero |
| `RELATED` | 1 | Relacionamento genérico |

## 🚀 Como Usar

### Pré-requisitos
- [Neo4j Aura](https://console.neo4j.io) ou Neo4j Desktop
- [Git](https://git-scm.com)
- [Cypher Shell](https://neo4j.com/docs/cypher-shell/current/) (opcional)

### Opção 1: Importação Manual no Neo4j Browser

1. Acesse seu [Neo4j Aura Console](https://console.neo4j.io)
2. Ative seu banco de dados na aba **Instances**
3. Na aba **Query**, abra o Database Overview
4. Execute os scripts na seguinte ordem:

```cypher
// Primeiro: cole e execute o conteúdo de cypher/01-setup.cypher
// Segundo: cole e execute o conteúdo de cypher/02-nodes.cypher
// Terceiro: cole e execute o conteúdo de cypher/03-relationships.cypher
```
### 2. Importação via Cypher Shell

# Conecte ao seu banco Aura
cypher-shell -u neo4j -p sua-senha -a bolt+s://seu-cluster.neo4j.io < cypher/01-setup.cypher
cypher-shell -u neo4j -p sua-senha -a bolt+s://seu-cluster.neo4j.io < cypher/02-nodes.cypher
cypher-shell -u neo4j -p sua-senha -a bolt+s://seu-cluster.neo4j.io < cypher/03-relationships.cypher

### 🔧3. Clonagem e Importação Automática

1. Copie o arquivo `.env.example` para `.env`
2. Edite o `.env` com suas credenciais do Neo4j Aura

### Opção de Clonagem de Repositório:
## Passo 1: Clone o repositório
```bash
git clone https://github.com/SEU-USUARIO/meu-projeto-neo4j.git
cd meu-projeto-neo4j
```

## Passo 2: Configure as credenciais
bash
# Copie o arquivo de exemplo
cp .env.example .env

# Edite com suas credenciais do Neo4j Aura
# Use: notepad .env (Windows) ou nano .env (Linux/Mac)
.env.example:

env
# Suas credenciais do Neo4j Aura
NEO4J_URI=bolt+s://seu-cluster.databases.neo4j.io
NEO4J_USER=neo4j
NEO4J_PASSWORD=sua-senha-aqui


### Passo 3: Importe os dados
Windows:

batch
scripts\import-to-neo4j.bat


Linux/Mac:
bash
chmod +x scripts/import-to-neo4j.sh
./scripts/import-to-neo4j.sh