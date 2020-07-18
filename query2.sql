/* Query 2 - query used for the second insight */

SELECT
  to_char(rental_date, 'YYYY-MM') AS rental_year_month,
  store_id,
  COUNT(*) AS count_rentals
FROM rental r
JOIN payment p
  ON r.rental_id = p.rental_id
JOIN staff s
  ON p.staff_id = s.staff_id
GROUP BY 1, 2
ORDER BY 1, 2
