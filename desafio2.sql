SELECT COUNT(DISTINCT(s.name_song)) AS 'cancoes', COUNT(DISTINCT(ar.name_artist)) AS 'artistas', COUNT(DISTINCT(al.name_album)) AS 'albuns'  FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.Albuns AS al
ON al.id = s.album_id
INNER JOIN SpotifyClone.Artists AS ar
ON ar.id = al.artist_id;
