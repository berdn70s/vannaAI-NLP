SELECT gender, SUM(sales) AS total_sales
FROM ecms_data
WHERE gender IS NOT NULL
GROUP BY gender;
--Sums sales by gender.

