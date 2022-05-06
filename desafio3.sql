SELECT u.name_user AS 'usuario', COUNT(h.user_id) AS 'qtde_musicas_ouvidas', ROUND(SUM(s.duration_seconds)/60, 2) AS 'total_minutos'
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History AS h
ON u.id = h.user_id
INNER JOIN SpotifyClone.Songs AS s
ON h.song_id = s.id
GROUP BY u.name_user;