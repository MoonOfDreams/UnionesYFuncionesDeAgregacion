
select series.title, genres.name 
from series 
left join genres on series.genre_id = genres.id;
select episodes.title, concat(actors.first_name, ' ', actors.last_name) as 'Nombre y Apellido'
from actor_episode 
left join actors on actor_episode.actor_id  = actors.id 
left join episodes on actor_episode.episode_id  = episodes.id;
select title  from movies;
select distinct concat(actors.first_name, ' ', actors.last_name) as 'Nombre y Apellido', movies.title 
from actors
inner join actor_movie on actor_movie.actor_id = actors.id 
inner join movies on movies.id = actor_movie.movie_id 
where movies.title like '%Guerra de las galaxias%';
select movies.title, coalesce(genres.name, 'No tiene genero' )  from movies
left join genres on movies.genre_id = genres.id;
select title, datediff(end_date, release_date) as 'Duracion'  from series;
select first_name  from actors 
where length(first_name) > 6
order by first_name;
select count(id) from movies_db.episodes;
select series.title, count(seasons.title) from series
inner join seasons on seasons.serie_id = series.id
group by title;
select name, count(movies.title) from genres
inner join movies on movies.genre_id = genres.id 
group by genres.name
having count(movies.title) > 3;