SELECT 
    l.name,
    cast(extract (DAY FROM l.payday) AS INTEGER) AS day
FROM loan l