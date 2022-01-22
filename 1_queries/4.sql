/*
Get a list of the most visited cities.

Select the name of the city and the number of reservations for that city.
Order the results from highest number of reservations to lowest number of reservations.
*/

SELECT properties.city, COUNT(properties.city) AS total_reservations
FROM properties JOIN reservations ON properties.id = reservations.property_id
GROUP BY properties.city
ORDER BY COUNT(properties.city) DESC;