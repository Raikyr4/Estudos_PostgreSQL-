SELECT a.name 
FROM customers a, 
     legal_person b 
WHERE b.id_customers = a.id