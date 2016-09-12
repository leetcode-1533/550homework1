SELECT M.rank, COUNT (M.rank)
FROM movies M
GROUP BY M.rank
ORDER BY M.rank;