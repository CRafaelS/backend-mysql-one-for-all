SELECT s.name_song AS 'cancao', COUNT(h.song_id) AS 'reproducoes' FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.History AS h
ON s.id = h.song_id
GROUP BY s.name_song
ORDER BY reproducoes DESC, cancao
LIMIT 2;