INSERT INTO public.album
(album_name, year_of_issue)
VALUES
('album1',1992),
('album2', 1934),
('album3', 1967),
('album4', 2002),
('album5', 2020),
('album6',2011),
('album7', 2000),
('album8',1993);

INSERT INTO public.author
(author_name)
VALUES
('Пугачева'),                                                                                       
('Джон Леннон'),                                                                                
('Юрий Шатунов'),                                                                                        
('Кэти Перри'),                                                                                          
('Василий Вакуленко'),                                                                                   
('Светлана Лобода'),                                                                                     
('Билан'),                                                                                          
('Артем Качер');                                                                                         

INSERT INTO public.compilation
(compilation_name, year_of_issue)
values
('compilation1', 1992),
('compilation2', 1934),
('compilation3', 1967),
('compilation4', 2002),
('compilation5', 2018),
('compilation6', 2019),
('compilation7', 2000),
('compilation8', 1993);

INSERT INTO public.genre
(genre_name)
values
('Поп'),    
('Шансон'), 
('Блюз'),   
('Рок'),    
('Хип-Хоп');

INSERT INTO public.resultauthoralbum
(author_id, album_id)
values
(1, 3),
(1,1),
(8,2),
(7,3),
(6,4),
(5,5),
(4,6),
(3,7),
(5,8),
(3,2),
(5,7),
(6,7),
(2,5),
(8,3),
(7,2);

INSERT INTO public.resultauthorgenre
(author_id, genre_id)
values
(1,1),
(4,2),
(3,3),
(4,4),
(5,5),
(6,5),
(7,4),
(8,3),
(1,2),
(2,1),
(4,3),
(7,2),
(8,1);

INSERT INTO public.track
(track_name, year_of_issue, album_id, track_length)
VALUES
('Мой день',1992 ,1, '1:35:04'),
('Твой день',2008 ,2, '00:03:40'),
('Его день',2015,3, '00:01:10'),
('Наш день',2000,4, '00:15:20'),
('My day',3025,5, '00:39'),
('Your day',1900,6, '00:01:19'),
('His day',2025,7, '00:05:59'),
('Our day',5000, 3, '00:00:24'),
('Ее день',1924, 3, '00:00:45'),
('Hers day',2001,8, '00:00:30'),
('New Track', 1234, 2, '00:30:23');

INSERT INTO public.resultcompilation
(track_id, compilation_id)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 1),
(10, 2),
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 1),
(8, 2),
(9, 3),
(10, 4);
