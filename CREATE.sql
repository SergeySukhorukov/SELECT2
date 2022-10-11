create table if not exists Genre (
id SERIAL primary key,
genre_name NCHAR(100)
);

create table if not exists Author (
id SERIAL primary key,
author_name NCHAR(100)
);

create table if not exists ResultAuthorGenre (
result_id SERIAL primary key,
genre_id INTEGER references Genre(id),
author_id INTEGER references Author(id)
);

create table if not exists Album (
id SERIAL primary key,
album_name NCHAR(100),
year_of_issue INT
);

create table if not exists ResultAuthorAlbum (
id SERIAL primary key,
author_id INTEGER references Author(id),
album_id INTEGER references Album(id)
);

create table if not exists Track (
id SERIAL primary key,
track_name NCHAR(100),
year_of_issue INT,
album_id INTEGER references Album(id),
track_length time
);

create table if not exists Compilation (
id SERIAL primary key,
compilation_name NCHAR(100),
year_of_issue INT
);

create table if not exists ResultCompilation (
id SERIAL primary key,
track_id INTEGER references Track(id),
compilation_id INTEGER references Compilation(id)
);