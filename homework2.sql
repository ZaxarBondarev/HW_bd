create table if not exists Genres (
	id serial primary key,
	name_genre varchar (250)
);
create table if not exists Executor (
	id serial primary key,
	name_executor varchar (250)
);
create table if not exists Album (
	id serial primary key,
	name_album varchar (250),
	release_date date not null,
	song_id integer references Song(id)
);
create table if not exists Song(
	id serial primary key,
	name_song varchar (250),
	song_duration timestamp
);
create table if not exists Collection (
	id serial primary key,
	name_collection varchar (250),
	release_collection date
);
create table if not exists GenresExecutor (
	id serial primary key,
	executor_id integer references Executor(id),
	genre_id integer references Genres(id)
);
create table if not exists AlbumExecutor (
	id serial primary key,
	executor_id integer references Executor(id),
	album_id integer references Album(id)
);
create table if not exists CollectionSong (
	id serial primary key,
	collection_id integer references Collection(id),
	song_id integer references Song(id)
);
