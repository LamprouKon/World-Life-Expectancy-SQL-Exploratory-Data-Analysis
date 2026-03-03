/* ============================================================
   WORLD LIFE EXPECTANCY – SQL EXPLORATORY ANALYSIS
   Purpose: Perform structured EDA using pure SQL
   ============================================================ */


/* ============================================================
   1. Life Expectancy Change Over 15 Years (Per Country)
   Objective: Measure overall improvement or stagnation
   ============================================================ */

SELECT country,
       MIN(`Life expectancy`) AS min_life_exp,
       MAX(`Life expectancy`) AS max_life_exp,
       ROUND(MAX(`Life expectancy`) - MIN(`Life expectancy`), 1) AS Life_Increase_15_Years
FROM world_life_expectancy
GROUP BY country
HAVING MIN(`Life expectancy`) <> 0
   AND MAX(`Life expectancy`) <> 0
ORDER BY Life_Increase_15_Years ASC;


/* ============================================================
   2. Global Average Life Expectancy by Year
   Objective: Identify macro time trend
   ============================================================ */

SELECT year,
       ROUND(AVG(`Life expectancy`), 2) AS global_avg_life_exp
FROM world_life_expectancy
WHERE `Life expectancy` <> 0
GROUP BY year
ORDER BY year;


/* ============================================================
   3. Average Life Expectancy vs GDP (Per Country)
   Objective: Examine economic-health relationship
   ============================================================ */

SELECT country,
       ROUND(AVG(`Life expectancy`), 1) AS life_exp,
       ROUND(AVG(GDP), 1) AS GDP
FROM world_life_expectancy
GROUP BY country
HAVING life_exp > 0 AND GDP > 0
ORDER BY GDP DESC;


/* ============================================================
   4. Comparing High vs Low GDP Countries
   Objective: Segment countries by economic tier
   ============================================================ */

SELECT
    SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) AS High_GDP_count,
    ROUND(AVG(CASE WHEN GDP >= 1500 THEN `Life expectancy` ELSE NULL END), 1) AS High_GDP_Life_exp,
    SUM(CASE WHEN GDP < 1500 THEN 1 ELSE 0 END) AS Low_GDP_count,
    ROUND(AVG(CASE WHEN GDP < 1500 THEN `Life expectancy` ELSE NULL END), 1) AS Low_GDP_Life_exp
FROM world_life_expectancy;


/* ============================================================
   5. Life Expectancy by Development Status
   Objective: Quantify inequality between Developed and Developing
   ============================================================ */

SELECT status,
       COUNT(DISTINCT country) AS country_count,
       ROUND(AVG(`Life expectancy`), 1) AS avg_life_exp
FROM world_life_expectancy
GROUP BY status;


/* ============================================================
   6. Correlation Between BMI and Life Expectancy
   Objective: Explore health indicator relationship
   ============================================================ */

SELECT country,
       ROUND(AVG(`Life expectancy`), 1) AS life_exp,
       ROUND(AVG(BMI), 1) AS bmi
FROM world_life_expectancy
GROUP BY country
HAVING life_exp > 0 AND bmi > 0
ORDER BY bmi ASC;


/* ============================================================
   7. Rolling Sum of Adult Mortality (Window Function)
   Objective: Track cumulative mortality burden over time
   ============================================================ */

SELECT country,
       year,
       `Life expectancy`,
       `Adult Mortality`,
       SUM(`Adult Mortality`) OVER(PARTITION BY country ORDER BY year) AS rolling_total
FROM world_life_expectancy;