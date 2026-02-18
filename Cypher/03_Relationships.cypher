-- ============ CREATE RELATIONSHIPS =============
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