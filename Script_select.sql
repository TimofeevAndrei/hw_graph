select name, relese_date from album
where relese_date = 2018;

select name, duration from song
order by duration desc
limit 1;

select name, duration from song
where duration between 3.5 and 999;

select date, name from collection
where date between 2018 and 2020;

select name from artist
where name not like '% %';

select name from song
where name like '%My%';


