SELECT CAST(ROUND(MIN(p.price),2) AS CHAR) AS 'faturamento_minimo', 
	CAST(MAX(p.price) AS CHAR) AS 'faturamento_maximo',
  CAST(ROUND(AVG(price),2) AS CHAR) AS 'faturamento_medio',
  CAST(ROUND(SUM(price),2) AS CHAR) AS 'faturamento_total'
FROM SpotifyClone.Plans AS p
INNER JOIN SpotifyClone.Users AS u
ON p.id = u.plan_id;

-- REQUISITO FEITO COM A AJUDA DO CALILI