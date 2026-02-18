@echo off
echo 🚀 Importando dados para Neo4j...

REM Carregar configuracoes do arquivo .env
for /f "tokens=*" %%a in (..\.env) do set %%a

REM Verificar se configurou
if "%NEO4J_URI%"=="" (
    echo ❌ ERRO: Configure o arquivo .env primeiro!
    echo Copie .env.example para .env e edite com seus dados.
    pause
    exit /b
)

echo 📦 Executando scripts...
cypher-shell -a %NEO4J_URI% -u neo4j -p %NEO4J_PASSWORD% --file cypher\01-setup.cypher
cypher-shell -a %NEO4J_URI% -u neo4j -p %NEO4J_PASSWORD% --file cypher\02-nodes.cypher
cypher-shell -a %NEO4J_URI% -u neo4j -p %NEO4J_PASSWORD% --file cypher\03-relationships.cypher

echo ✅ Banco criado com 43 nos e 76 relacionamentos!
pause