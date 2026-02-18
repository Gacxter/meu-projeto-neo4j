#!/bin/bash
# Script para importar dados para Neo4j Aura

echo "🚀 Importando dados para Neo4j Aura..."

# Configurações (ALTERE ESTAS VARIÁVEIS!)
NEO4J_URI="bolt+s://seu-cluster.neo4j.io"
NEO4J_USER="neo4j"
NEO4J_PASSWORD="sua-senha-aqui"

# 1. Limpar e criar constraints
echo "📋 Executando setup..."
cypher-shell -a $NEO4J_URI -u $NEO4J_USER -p $NEO4J_PASSWORD --file cypher/01-setup.cypher

# 2. Importar nós
echo "👥 Importando nós..."
cypher-shell -a $NEO4J_URI -u $NEO4J_USER -p $NEO4J_PASSWORD --file cypher/02-nodes.cypher

# 3. Importar relacionamentos
echo "🔗 Importando relacionamentos..."
cypher-shell -a $NEO4J_URI -u $NEO4J_USER -p $NEO4J_PASSWORD --file cypher/03-relationships.cypher

echo "✅ Importação concluída!"
echo "🎬 Banco pronto com 43 nós e 76 relacionamentos."