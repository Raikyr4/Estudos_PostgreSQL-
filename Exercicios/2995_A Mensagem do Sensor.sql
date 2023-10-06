SELECT 
    temperature,
    COUNT(*) AS number_of_records
FROM records r
GROUP BY temperature, mark
ORDER BY mark;