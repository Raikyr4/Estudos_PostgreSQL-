SELECT 
       p.year,
       sender.name AS sender,
       receiver.name AS receiver
FROM packages p
JOIN users sender ON p.id_user_sender = sender.id
JOIN users receiver ON p.id_user_receiver = receiver.id
WHERE (p.color = 'blue' OR p.year = 2015)
  AND (sender.address != 'Taiwan' AND receiver.address != 'Taiwan')
ORDER BY p.year DESC;