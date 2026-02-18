-- Create constraints to performance
-- Criar constraints para performance
CREATE CONSTRAINT user_id IF NOT EXISTS FOR (u:user) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT movie_id IF NOT EXISTS FOR (m:movie) REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT serie_id IF NOT EXISTS FOR (s:serie) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT actor_id IF NOT EXISTS FOR (a:actor) REQUIRE a.id IS UNIQUE;
CREATE CONSTRAINT director_id IF NOT EXISTS FOR (d:Director) REQUIRE d.id IS UNIQUE;
CREATE CONSTRAINT genre_id IF NOT EXISTS FOR (g:Genre) REQUIRE g.id IS UNIQUE;