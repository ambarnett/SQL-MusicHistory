--Query all of the entries in the Genre table
--Select * From Genre;

--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
--Select * From Artist
--ORDER BY ArtistName;


--Write a SELECT query that lists all the songs in the Song table and include the Artist name
--Select s.Title, a.ArtistName
--from Song s
--JOIN Artist a ON s.ArtistId = a.Id;

--Write a SELECT query that lists all the Artists that have a Soul Album
--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
--Select a.ArtistName, g.Name 
--From Artist a
--JOIN Album ab ON ab.ArtistId = a.Id
--JOIN Genre g ON g.Id = ab.GenreId
--Where g.Name = 'Soul';
--Where g.Name = 'Jazz' OR g.name = 'Rock';


--Write a SELECT statement that lists the Albums with no songs
--Select * From Album ab
--LEFT JOIN Song s on s.AlbumId = ab.Id
--Where s.Title is NULL;

--Using the INSERT statement, add one of your favorite artists to the Artist table.
--Insert INTO Artist (ArtistName, YearEstablished) Values ('John Mayer', 1998);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--Values ('Continuum', '09/12/2006', 2974, 'Columbia', 30, 2);

--Using the INSERT statement, add some songs that are on that album to the Song table.
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--Values ('Waiting on the World to Change', 201, '09/12/2006', 2, 30, 23), 
--('I Dont Trust Myself (With Loving You)', 292, '09/12/2006', 2, 30, 23),
--('Belief', 242, '09/12/2006', 2, 30, 23);

--Write a SELECT query that provides the song titles, album title, 
--and artist name for all of the data you just entered in. 
--Use the LEFT JOIN keyword sequence to connect the tables, and 
--the WHERE keyword to filter the results to the album and artist you added.
Select 
	s.Title as 'Song Title', 
	ab.Title as 'Album Title', 
	a.ArtistName as 'Artist Name' 
from 
	Artist a
	LEFT JOIN Album ab ON ab.ArtistId = a.Id
	LEFT JOIN Song s ON s.AlbumId = ab.Id
Where 
	a.ArtistName = 'John Mayer';
