Select s.Title, a.ArtistName
from Song s
JOIN Artist a ON s.ArtistId = a.Id;