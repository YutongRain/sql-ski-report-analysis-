## Ski Resort Selection Analysis (SQL Project)

## Project Overview

This project uses SQL to analyse 15 European ski resorts and answer practical questions about which resort is the best fit depending on budget, skill level, and accessibility.

The goal was to practise real-world SQL skills, not just learning syntax, but solving a genuine decision-making problem using data.

---

## Key Questions

- Which resorts offer the best value under 600 EUR?
- Which resorts are most suitable for beginners?
- Which country offers the best average value?
- Which resort has the best rating-to-price ratio?
- Which resorts are accessible AND have reliable snow?
- What is the best all-round resort using a weighted score?

---

## Dataset

The dataset includes 15 European ski resorts with the following fields:

- resort_name
- country
- average_price_eur
- num_ski_lifts
- beginner_slopes
- snowfall_level
- travel_time_hours
- rating

---

## SQL Techniques Used

- SELECT, WHERE, ORDER BY, LIMIT
- GROUP BY with AVG, COUNT, ROUND
- Custom calculated columns
- Multi-condition filtering with AND

---

## Key Findings

- Best value resort: Livigno, Italy. Low price, solid rating, good beginner slopes.
- Best for beginners: Megeve, France. 25 beginner slopes, rating 8.4.
- Best country overall: Austria. Strong average rating at mid-range price.
- Best value score: Andorra. Highest rating per 100 EUR spent.
- Best all-round: Val Thorens. High snow, reasonable price, excellent rating.

---

## Tools Used

- SQL (SQLite)
- Google Sheets
- GitHub

---

## Files

- README.md
- ski_resorts_data.csv
- analysis.sql
