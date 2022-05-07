SELECT COUNT(u.name_user) AS 'quantidade_musicas_no_historico' FROM SpotifyClone.History h
INNER JOIN SpotifyClone.Users u ON u.id = h.user_id
WHERE u.name_user LIKE 'Bill';