SELECT ar.name_artist AS 'artista', al.name_album AS 'album' FROM SpotifyClone.Artists ar
INNER JOIN SpotifyClone.Albuns al ON ar.id = al.artist_id
WHERE ar.name_artist LIKE 'Walter Phoenix';