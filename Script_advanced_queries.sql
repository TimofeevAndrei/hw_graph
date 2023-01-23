--количество исполнителей в каждом жанре
SELECT name, COUNT(*) FROM genre g
JOIN genre_list gl ON g.genre_id  = gl.genre_id
GROUP BY g.genre_id
ORDER BY COUNT(*) desc;


--количество треков, вошедших в альбомы 2019-2020 годов
SELECT a.relese_date, COUNT(*) FROM song s
JOIN album a ON s.album  = a.album_id
where relese_date >= 2019 and relese_date <= 2020
GROUP BY a.relese_date 
ORDER BY COUNT(*) desc;


--средняя продолжительность треков по каждому альбому
SELECT a.name, avg(duration) FROM song s
JOIN album a ON s.album  = a.album_id
GROUP BY a.album_id;


--все исполнители, которые не выпустили альбомы в 2020 году
select name from artist 
where name not in (SELECT ar.name FROM artist ar
					JOIN author_list al ON ar.artist_id = al.artist_id
					JOIN album a ON al.album_id = a.album_id
					where relese_date = 2020)

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT c.name FROM collection c
join collection_list cl on c.collection_id = cl.collection_id
join song s on cl.song_id = s.song_id
join album a on s.album = a.album_id
join author_list al on a.album_id = al.album_id 
join artist a2 on al.artist_id = a2.artist_id
where a2.name = 'Eminem';


--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a.name, COUNT(g.genre_id) from album a
join author_list al on a.album_id = al.album_id 
join genre_list gl on al.artist_id = gl.artist_id
join genre g on gl.genre_id = g.genre_id
GROUP BY a.name
HAVING COUNT(g.genre_id) > 1
ORDER BY COUNT(g.genre_id) desc;


--наименование треков, которые не входят в сборники
SELECT s.name FROM song s
full JOIN collection_list cl on s.song_id = cl.song_id
where cl.song_id is null;


--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select a.name from artist a
join author_list al on a.artist_id = al.artist_id 
join album a2 on al.album_id = a2.album_id 
join song s on a2.album_id = s.album
where s.duration = all (select min(s.duration) from artist a
					join author_list al on a.artist_id = al.artist_id 
					join album a2 on al.album_id = a2.album_id 
					join song s on a2.album_id = s.album 
					GROUP BY a.name
					ORDER BY min(s.duration)
					limit 1);


--название альбомов, содержащих наименьшее количество треков
select a.name, count(s.song_id) from album a
join song s ON a.album_id = s.album 
GROUP BY a.name
having count(s.song_id) = all (select count(s.song_id) from album a
							join song s ON a.album_id = s.album 
							GROUP BY a.album_id
							ORDER BY count(*)  asc
							limit 1);






