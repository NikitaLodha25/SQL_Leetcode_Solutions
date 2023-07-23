SELECT S.user_id, ROUND(
  (SUM(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END) / 
  COUNT(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END)), 2) AS confirmation_rate
FROM Signups S
LEFT JOIN Confirmations C ON C.user_id = S.user_id
GROUP BY S.user_id
