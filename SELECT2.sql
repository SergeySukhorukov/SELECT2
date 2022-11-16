select genre_name, count(author_id)  from genre g 
left join resultauthorgenre r on g.id = r.genre_id 
group by genre_name;

select album_name, count(track_name)  from album a 
left join track t on a.id = t.album_id
where a.year_of_issue between 2019 and 2020
group by album_name;

select album_name, avg(track_length)  from album a 
left join track t on a.id = t.album_id
group by album_name;


select author_name  from author aut
where aut.id not in
(select a.id from author a 
left join resultauthoralbum r  on a.id = r.author_id 
left join album a2 on r.album_id = a2.id
where a2.year_of_issue = '2020') ;

select compilation_name from compilation c
left join resultcompilation r on c.id = r.compilation_id 
left join track t on r.track_id = t.id 
left join album a on t.album_id =a.id 
left join resultauthoralbum r2  on a.id = r2.album_id 
left join author a2 on r2.author_id = a2.id 
where author_name = 'Пугачева'
group by compilation_name ;

select album_name from album a
left join resultauthoralbum r on r.album_id = a.id 
left join author a2 on a2.id = r.author_id 
left join resultauthorgenre r2 on a2.id =r2.author_id
group by album_name, author_name
having count(genre_id)>1;

select track_name from track t 
left join resultcompilation r on r.track_id = t.id 
where r.compilation_id is null;

select author_name from author a 
left join resultauthoralbum r on r.author_id = a.id 
left join album a2 on a2.id = r.album_id 
left join track t on t.album_id = a2.id
where track_length = (select track_length from track
order by track_length limit 1);

select album_name from album a 
left join track t on t.album_id = a.id
group by album_name
having count(track_name)=
(select count(track_name)  from album a1 
left join track t on t.album_id = a1.id
group by a1.album_name
order by count(track_name) limit 1);

