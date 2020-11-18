-- all details about properties located in Vancouver
-- including their avg rating

-- SELECT properties.*, AVG(rating) AS average_rating
SELECT properties.id, title, cost_per_night, AVG(rating) AS average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE LOWER(city) = 'vancouver'
GROUP BY properties.id
HAVING AVG(rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;
