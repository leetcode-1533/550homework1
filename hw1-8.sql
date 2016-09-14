(SELECT movies.id, count(*)
FROM movies, movies_genres
WHERE movies.id = movies_genres.movie_id
GROUP BY movies.id)
UNION ALL
(SELECT movies.id, 0 AS count
FROM movies, movies_genres
WHERE movies.id NOT IN movies_genres.movie_id);
--SELECT movies.id, movies_genres.genre
--FROM movies, movies_genres
--WHERE movies.id = movies_genres.movie_id(+)
--ORDER BY movies_genres.genre;