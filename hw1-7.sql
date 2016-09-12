SELECT directors.last_name, directors.first_name
FROM directors 
WHERE id NOT IN (
  SELECT movies_directors.director_id
  FROM movies, movies_directors
  WHERE movies.rank = (SELECT max(rank) rank_max FROM movies)
  AND movies.id = movies_directors.movie_id);
