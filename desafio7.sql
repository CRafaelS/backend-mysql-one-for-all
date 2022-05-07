SELECT ar.name_artist AS 'artista', al.name_album AS 'album', COUNT(al.name_album) AS 'seguidores' FROM SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.id = al.artist_id
INNER JOIN SpotifyClone.Followers AS f
ON ar.id = f.artist_id
GROUP BY name_album, name_artist
ORDER BY seguidores DESC, ar.name_artist ASC, al.name_album ASC;