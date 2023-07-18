USE cinema_booking_system;

SELECT b.customer_id, COUNT(rs.id) FROM bookings b 
JOIN reserved_seat rs ON b.id = rs.booking_id
GROUP BY b.customer_id;

SELECT f.name, f.length_min, COUNT(s.id) FROM films f
JOIN screenings s ON f.id = s.film_id 
GROUP BY f.name, f.length_min
HAVING f.length_min > 120;