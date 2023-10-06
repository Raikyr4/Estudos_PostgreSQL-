SELECT prd.name AS product_name, prov.name AS provider_name, prd.price
FROM products prd
JOIN providers prov ON prd.id_providers = prov.id
JOIN categories cat ON prd.id_categories = cat.id
WHERE prd.price > 1000 AND cat.name = 'Super Luxury';