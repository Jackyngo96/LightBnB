SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM property_reviews
JOIN properties ON reservation_id = properties.id 
JOIN reservations ON property_id = properties.id 
WHERE reservations.user_id = 1
GROUP BY reservations.id
ORDER BY start_date
Limit 10;