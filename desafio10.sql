SELECT name_song AS 'nome', COUNT(name_song) AS 'reproducoes'FROM SpotifyClone.Songs  s
INNER JOIN SpotifyClone.History h ON s.id = h.song_id
INNER JOIN SpotifyClone.Users u ON u.id = h.user_id
INNER JOIN SpotifyClone.Plans p ON p.id = u.plan_id
WHERE name_plan = 'Gratuito' OR name_plan = 'Pessoal'
GROUP BY name_song
ORDER BY name_song;