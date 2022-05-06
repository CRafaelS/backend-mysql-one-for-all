SELECT u.name_user AS 'usuario', IF(MAX(YEAR(h.player_song_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History AS h
ON u.id = h.user_id
GROUP BY u.name_user;