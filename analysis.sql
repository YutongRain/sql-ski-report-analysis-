-- Ski Resort Selection Analysis
-- SQL Queries

-- 1. Best value resorts under 600 EUR
SELECT resort_name, country, average_price_eur, rating
FROM ski_resorts
WHERE average_price_eur < 600
ORDER BY rating DESC;

-- 2. Best resorts for beginners
SELECT resort_name, country, beginner_slopes, rating
FROM ski_resorts
ORDER BY beginner_slopes DESC, rating DESC
LIMIT 5;

-- 3. Average price and rating by country
SELECT country,
COUNT(*) AS num_resorts,
ROUND(AVG(average_price_eur), 0) AS avg_price,
ROUND(AVG(rating), 2) AS avg_rating
FROM ski_resorts
GROUP BY country
ORDER BY avg_rating DESC;

-- 4. Best value score (rating per 100 EUR)
SELECT resort_name, country, average_price_eur, rating,
ROUND((rating / average_price_eur) * 100, 3) AS value_score
FROM ski_resorts
ORDER BY value_score DESC
LIMIT 5;

-- 5. Accessible resorts with high snowfall
SELECT resort_name, country, travel_time_hours, snowfall_level, rating
FROM ski_resorts
WHERE travel_time_hours <= 5
AND snowfall_level = 'High'
ORDER BY rating DESC;

-- 6. Best all-round resort (weighted score)
SELECT resort_name, country,
ROUND((rating * 0.4)
