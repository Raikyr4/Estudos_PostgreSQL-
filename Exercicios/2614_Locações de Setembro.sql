SELECT
    c.name,
    r.rentals_date
FROM customers c
JOIN rentals r ON r.id_customers=c.id
WHERE (EXTRACT(MONTH FROM r.rentals_date)=9)