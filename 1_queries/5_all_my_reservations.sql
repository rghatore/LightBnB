-- all reservations for a particular user

SELECT properties.*, reservations.*, AVG(rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN reservations ON properties.id = reservations.property_id
-- JOIN users ON users.id = reservations.guest_id
WHERE reservations.guest_id = 1
AND end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10
