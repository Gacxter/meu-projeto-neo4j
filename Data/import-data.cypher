-- Script gerado automaticamente a partir do JSON
-- Projeto Neo4j do Arrows.app
-- Data: 2026-02-17

-- Limpar banco existente
MATCH (n) DETACH DELETE n;

-- Criar constraints para performance
CREATE CONSTRAINT user_id IF NOT EXISTS FOR (u:user) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT movie_id IF NOT EXISTS FOR (m:movie) REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT serie_id IF NOT EXISTS FOR (s:serie) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT actor_id IF NOT EXISTS FOR (a:actor) REQUIRE a.id IS UNIQUE;
CREATE CONSTRAINT director_id IF NOT EXISTS FOR (d:Director) REQUIRE d.id IS UNIQUE;
CREATE CONSTRAINT genre_id IF NOT EXISTS FOR (g:Genre) REQUIRE g.id IS UNIQUE;

-- ============ CRIAR NÓS ============

CREATE (n:user {id:'n0',caption:'João',Name:'João da Silva',E-mail:'joao@email.com',Adress:'Rua A, 42, Centro, São Paulo'});
CREATE (n:movie {id:'n1',caption:'The Day After Tomorrow',Title:'The Day After Tomorrow',Director:'Roland Emmerich',Released:'2004',Genre:'Science Fiction Disaster'});
CREATE (n:serie {id:'n2',caption:'F.R.I.E.N.D.S.',Title:'F.R.I.E.N.D.S.',Director:'James Burrows & Others',Released:'F.R.I.E.N.D.S.',Genre:'Comedy'});
CREATE (n:Genre {id:'n3',caption:'Comedy'});
CREATE (n:Genre {id:'n4',caption:'Science Fiction Disaster'});
CREATE (n:actor {id:'n5',caption:'Jake Gyllenhaal'});
CREATE (n:Director {id:'n6',caption:'Roland Emmerich'});
CREATE (n:user {id:'n8',caption:'Gabriel',Name:'Gabriel Smith',E-mail:'Gabri.S@email.com',Adress:'6th Avenue, 2015, Miami, Florida'});
CREATE (n:movie {id:'n9',caption:'The Lord of The Rings: The Fellowship of the Ring',Title:'The Lord of The Rings: The Fellowship of the Ring',Director:'Peter Jackson',Released:'2001',Genre:'High Fantasy'});
CREATE (n:Genre {id:'n10',caption:'High Fantasy'});
CREATE (n:actor {id:'n11',caption:'Elijah Wood'});
CREATE (n:actor {id:'n12',caption:'Ian McKellen'});
CREATE (n:Director {id:'n13',caption:'Peter Jackson'});
CREATE (n:movie {id:'n14',caption:'The Lord of The Rings: The Two Towers',Title:'The Lord of The Rings: The Two Towers',Director:'Peter Jackson',Released:'2002',Genre:'High Fantasy'});
CREATE (n:movie {id:'n15',caption:'The Lord of The Rings: The Return of the King',Title:'The Lord of The Rings: The Return of the King',Director:'Peter Jackson',Released:'2003',Genre:'High Fantasy'});
CREATE (n:Director {id:'n16',caption:'James Burrows'});
CREATE (n:user {id:'n17',caption:'Anthony',Name:'Anthony Johnson',E-mail:'aj@email.com',Adress:'6th Avenue, 4003, Miami, Florida'});
CREATE (n:user {id:'n18',caption:'Nautilus',Name:'Nautilus LOL',E-mail:'Nautileague@email.com',Adress:'12333 W Olympic Blvd, Los Angeles, CA'});
CREATE (n:movie {id:'n19',caption:'Independence Day',Title:'Independence Day',Director:'Roland Emmerich',Released:'1996',Genre:'Science Fiction Disaster'});
CREATE (n:actor {id:'n20',caption:'Bill Pullman'});
CREATE (n:actor {id:'n21',caption:'Will Smith'});
CREATE (n:movie {id:'n22',caption:'Men in Black',Title:'Men in Black',Director:'Barry Sonnenfeld',Released:'1997',Genre:'Science Fiction'});
CREATE (n {id:'n23',caption:'Jennifer Aniston'});
CREATE (n {id:'n24',caption:'Tommy Lee Jones'});
CREATE (n:user {id:'n25',caption:'Joyce',Name:'Joyce Moreno',E-mail:'annimor@email.com',Adress:'348  ORIENT WAY LYNDHURST NJ 07071-2512 USA'});
CREATE (n:Genre {id:'n26',caption:'Science Fiction'});
CREATE (n:movie {id:'n27',caption:'Marley & Me',Title:'Marley & Me',Director:'David Frankel',Released:'2008',Genre:'Comedy/Drama'});
CREATE (n:Genre {id:'n28',caption:'Drama'});
CREATE (n:user {id:'n29',caption:'Emmily',Name:'Emmily Baulmann',E-mail:'mlee@email.com',Adress:'Rua Z, 458, Flamengo, Rio de Janeiro'});
CREATE (n {id:'n30',caption:'Owen Wilson'});
CREATE (n:user {id:'n31',caption:'Emmanuel',Name:'Emmanuel Rodríguez',E-mail:'er01@email.com',Adress:'JUAREZ NO. 1105 LOC. 207, COLONIAL, 42060'});
CREATE (n:movie {id:'n32',caption:'Sin City',Title:'Sin City',Director:'Robert Rodriguez/Frank Miller/Quentin Tarantino/',Released:'2005',Genre:'Action'});
CREATE (n:Director {id:'n33',caption:'Quentin Tarantino'});
CREATE (n:Director {id:'n34',caption:'Frank Miller'});
CREATE (n:Director {id:'n35',caption:'Robert Rodriguez'});
CREATE (n:Director {id:'n36',caption:'Barry Sonnenfeld'});
CREATE (n:Director {id:'n37',caption:'David Frankel'});
CREATE (n:movie {id:'n38',caption:'The Hateful Eight',Title:'The Hateful Eight',Director:'Quentin Tarantino',Released:'2015',Genre:'Action'});
CREATE (n:actor {id:'n39',caption:' Bruce Willis'});
CREATE (n:Genre {id:'n40',caption:'Action'});
CREATE (n:user {id:'n41',caption:'Amanda',Name:'Amanda Antunes',E-mail:'amandinha@email.com',Adress:'Avenida Paulista 2501, ap 501, São Paulo, SP'});
CREATE (n:user {id:'n42',caption:'Luna',Name:'Luna Lover',E-mail:'ll@email.com',Adress:'Avenida da Saudade, 456,'});
CREATE (n:user {id:'n43',caption:'Roberto',Name:'Roberto Andrade',E-mail:'robbiea@email.com',Adress:'Rua 1, Centro, Uberaba-MG, Brasil'});

-- ============ CRIAR RELACIONAMENTOS ============

MATCH (a {id: 'n0'})
MATCH (b {id: 'n1'})
CREATE (a)-[:WATCHED {rating:'Four Stars'}]->(b);

MATCH (a {id: 'n0'})
MATCH (b {id: 'n2'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n2'})
MATCH (b {id: 'n3'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n1'})
MATCH (b {id: 'n4'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n5'})
MATCH (b {id: 'n1'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n6'})
MATCH (b {id: 'n1'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n8'})
MATCH (b {id: 'n1'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n8'})
MATCH (b {id: 'n9'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n9'})
MATCH (b {id: 'n10'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n11'})
MATCH (b {id: 'n9'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n12'})
MATCH (b {id: 'n9'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n13'})
MATCH (b {id: 'n9'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n8'})
MATCH (b {id: 'n14'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n14'})
MATCH (b {id: 'n10'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n11'})
MATCH (b {id: 'n14'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n12'})
MATCH (b {id: 'n14'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n13'})
MATCH (b {id: 'n14'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n8'})
MATCH (b {id: 'n15'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n15'})
MATCH (b {id: 'n10'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n11'})
MATCH (b {id: 'n15'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n12'})
MATCH (b {id: 'n15'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n13'})
MATCH (b {id: 'n15'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n16'})
MATCH (b {id: 'n2'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n17'})
MATCH (b {id: 'n2'})
CREATE (a)-[:WATCHED {rating:'Three Stars'}]->(b);

MATCH (a {id: 'n17'})
MATCH (b {id: 'n14'})
CREATE (a)-[:WATCHED {rating:'Four Stars'}]->(b);

MATCH (a {id: 'n18'})
MATCH (b {id: 'n1'})
CREATE (a)-[:WATCHED {rating:'Two Stars'}]->(b);

MATCH (a {id: 'n18'})
MATCH (b {id: 'n15'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n18'})
MATCH (b {id: 'n9'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n6'})
MATCH (b {id: 'n19'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n17'})
MATCH (b {id: 'n19'})
CREATE (a)-[:WATCHED {rating:'Fours Stars'}]->(b);

MATCH (a {id: 'n18'})
MATCH (b {id: 'n19'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n20'})
MATCH (b {id: 'n19'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n21'})
MATCH (b {id: 'n19'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n19'})
MATCH (b {id: 'n4'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n0'})
MATCH (b {id: 'n19'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n21'})
MATCH (b {id: 'n22'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n23'})
MATCH (b {id: 'n2'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n24'})
MATCH (b {id: 'n22'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n17'})
MATCH (b {id: 'n22'})
CREATE (a)-[:RELATED]->(b);

MATCH (a {id: 'n25'})
MATCH (b {id: 'n22'})
CREATE (a)-[:WATCHED {rating:'One Star'}]->(b);

MATCH (a {id: 'n1'})
MATCH (b {id: 'n26'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n19'})
MATCH (b {id: 'n26'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n22'})
MATCH (b {id: 'n26'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n25'})
MATCH (b {id: 'n19'})
CREATE (a)-[:WATCHED {rating:'Two Stars'}]->(b);

MATCH (a {id: 'n25'})
MATCH (b {id: 'n27'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n27'})
MATCH (b {id: 'n3'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n27'})
MATCH (b {id: 'n28'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n29'})
MATCH (b {id: 'n22'})
CREATE (a)-[:WATCHED {rating:'Three Stars'}]->(b);

MATCH (a {id: 'n29'})
MATCH (b {id: 'n27'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n29'})
MATCH (b {id: 'n14'})
CREATE (a)-[:WATCHED {rating:'Four Stars'}]->(b);

MATCH (a {id: 'n29'})
MATCH (b {id: 'n9'})
CREATE (a)-[:WATCHED  {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n23'})
MATCH (b {id: 'n27'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n30'})
MATCH (b {id: 'n27'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n31'})
MATCH (b {id: 'n27'})
CREATE (a)-[:WATCHED {rating:'Three Stars'}]->(b);

MATCH (a {id: 'n31'})
MATCH (b {id: 'n2'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n31'})
MATCH (b {id: 'n32'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n11'})
MATCH (b {id: 'n32'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n33'})
MATCH (b {id: 'n32'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n34'})
MATCH (b {id: 'n32'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n35'})
MATCH (b {id: 'n32'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n36'})
MATCH (b {id: 'n22'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n37'})
MATCH (b {id: 'n27'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n29'})
MATCH (b {id: 'n32'})
CREATE (a)-[:WATCHED {rating:'One Star'}]->(b);

MATCH (a {id: 'n33'})
MATCH (b {id: 'n38'})
CREATE (a)-[:DIRECTED]->(b);

MATCH (a {id: 'n39'})
MATCH (b {id: 'n32'})
CREATE (a)-[:ACTED_IN]->(b);

MATCH (a {id: 'n32'})
MATCH (b {id: 'n40'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n38'})
MATCH (b {id: 'n40'})
CREATE (a)-[:IN_GENRE]->(b);

MATCH (a {id: 'n41'})
MATCH (b {id: 'n32'})
CREATE (a)-[:WATCHED {rating:'Two Stars'}]->(b);

MATCH (a {id: 'n41'})
MATCH (b {id: 'n38'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n41'})
MATCH (b {id: 'n9'})
CREATE (a)-[:WATCHED {rating:'Four Stars'}]->(b);

MATCH (a {id: 'n41'})
MATCH (b {id: 'n14'})
CREATE (a)-[:WATCHED {rating:'Four Stars'}]->(b);

MATCH (a {id: 'n41'})
MATCH (b {id: 'n15'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n42'})
MATCH (b {id: 'n38'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

MATCH (a {id: 'n42'})
MATCH (b {id: 'n22'})
CREATE (a)-[:WATCHED {rating:'Two Stars'}]->(b);

MATCH (a {id: 'n43'})
MATCH (b {id: 'n1'})
CREATE (a)-[:WATCHED {rating:'Four Stars'}]->(b);

MATCH (a {id: 'n43'})
MATCH (b {id: 'n38'})
CREATE (a)-[:WATCHED {rating:'Five Stars'}]->(b);

-- ============ CONSULTAS DE EXEMPLO ============

-- Contar todos os nós
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
