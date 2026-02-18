# 🎬 Neo4j Movie Graph - Movie Recommendation System

![Neo4j](https://img.shields.io/badge/Neo4j-008CC1?style=for-the-badge&logo=neo4j&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📋 About the Project

This project implements a **movie recommendation graph** in Neo4j, containing data about users, movies, actors, directors, and ratings. The graph enables complex queries such as "movies that users with similar tastes watched" or "actors who worked most with a specific director". Project developed for the DIO Bootcamp in partnership with Neo4j.

### ✨ Features
- **43 nodes** representing cinematic entities
- **76 relationships** connecting these entities
- **10 users** with profiles and ratings
- **9 movies** from various genres
- **9 actors** and **8 directors**
- **6 different genres**
- **1 TV series**

## 🏗️ Graph Structure

### Node Types
| Label | Quantity | Description |
|-------|----------|-------------|
| `:user` | 10 | System users |
| `:movie` | 9 | Cataloged movies |
| `:actor` | 9 | Actors |
| `:Director` | 8 | Directors |
| `:Genre` | 6 | Movie genres |
| `:serie` | 1 | TV series |
| `(no label)` | 3 | Actors (to fix) |

### Relationship Types
| Type | Quantity | Description |
|------|----------|-------------|
| `WATCHED` | 27 | User watched a movie |
| `ACTED_IN` | 18 | Actor acted in movie |
| `DIRECTED` | 15 | Director directed the movie |
| `IN_GENRE` | 15 | Movie belongs to genre |
| `RELATED` | 1 | Generic relationship |

## 🚀 How to Use

### Prerequisites
- [Neo4j Aura](https://console.neo4j.io) or Neo4j Desktop
- [Git](https://git-scm.com)
- [Cypher Shell](https://neo4j.com/docs/cypher-shell/current/) (optional)

### Option 1: Manual Import in Neo4j Browser

1. Access your [Neo4j Aura Console](https://console.neo4j.io)
2. Activate your database in the **Instances** tab
3. In the **Query** tab, open Database Overview
4. Execute the scripts in this order:

cypher
// First: paste and execute cypher/01-setup.cypher
// Second: paste and execute cypher/02-nodes.cypher
// Third: paste and execute cypher/03-relationships.cypher

### Option 2: Import via Cypher Shell
# Connect to your Aura database
cypher-shell -u neo4j -p your-password -a bolt+s://your-cluster.neo4j.io < cypher/01-setup.cypher
cypher-shell -u neo4j -p your-password -a bolt+s://your-cluster.neo4j.io < cypher/02-nodes.cypher
cypher-shell -u neo4j -p your-password -a bolt+s://your-cluster.neo4j.io < cypher/03-relationships.cypher

### Option 3: Clone and Automatic Import
## Step 1: Clone the repository
```
git clone https://github.com/YOUR-USERNAME/my-neo4j-project.git
cd my-neo4j-project


## Step 2: Configure credentials
# Copy the example file
cp .env.example .env

# Edit with your Neo4j Aura credentials
# Windows: notepad .env
# Linux/Mac: nano .env

## Step 3: Import data
# Windows:
scripts\import-to-neo4j.bat

# Linux/Mac:
chmod +x scripts/import-to-neo4j.sh
./scripts/import-to-neo4j.sh
