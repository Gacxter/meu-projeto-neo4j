# 🎬 Neo4j Project - Movie Recommendation System

## 📊 About the Project
Movie recommendation graph with data on users, ratings, actors, and directors.

## 🏗️ Database Structure
43 nodes (10 users, 9 movies, 9 actors, 8 directors, 6 genres, 1 series)

76 relationships (WATCHED, ACTED_IN, DIRECTED, IN_GENRE)

## 🚀 How to Use

### 1. Import to Neo4j Aura

cypher-shell -u neo4j -p your-password -a bolt+s://your-cluster.neo4j.io < cypher/01-setup.cypher
cypher-shell -u neo4j -p your-password -a bolt+s://your-cluster.neo4j.io < cypher/02-nodes.cypher
cypher-shell -u neo4j -p your-password -a bolt+s://your-cluster.neo4j.io < cypher/03-relationships.cypher


#### 2. Paste Instructions in Neo4j Aura Query

# Access Neo4j Aura and activate the database in the Instances tab
# After activation, go to the QUERY tab on the left, then under database overview, paste the instructions contained in the /cypher folder

## First, paste and run the contents of the 01_setup.cypher file
## Then, paste and run the contents of the 02_nodes.cypher file
## Finally, paste and run the contents of the 03_relationships.cypher file