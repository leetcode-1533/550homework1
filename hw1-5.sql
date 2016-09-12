SELECT roles.actor_id, actors.first_name, actors.last_name, count(*) num_of_roles
FROM actors, roles
WHERE roles.actor_id = actors.id
GROUP BY movie_id, roles.actor_id, actors.first_name, actors.last_name
HAVING COUNT(*) > 1;
