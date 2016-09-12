SELECT movies.name, directors.last_name, directors.first_name
FROM movies, movies_directors, directors, movies_genres
WHERE movies_genres.genre = 'Comedy' 
  AND movies_genres.movie_id = movies.id
  AND movies.year = 2001
  AND movies_directors.director_id = directors.id
  AND movies_directors.movie_id = movies.id
  AND directors.last_name LIKE 'L%';