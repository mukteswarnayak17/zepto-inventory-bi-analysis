-- Creating a table called zepto

create table zepto(
category varchar(100),
name varchar(200),
mrp int,
discountPercent int,
availableQuantity int,
discountedSellingPrice int,
weightInGms int,
outOfStock text,
quantity int);

-- Loading the csv data into the table

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zepto.csv"
INTO TABLE zepto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'secure_file_priv';


-- Data Exploration
-- Counting total number of records
select count(*) from zepto;
-- Sample data
select * from zepto
limit 10;

-- Data Cleaning

-- Create a temporary table to hold unique records
create table zepto_clean as
select distinct * from zepto;

-- Drop the old table and rename the clean one
drop table zepto;
rename table zepto_clean to zepto;

-- Handle zero values
select * from zepto
where mrp <= 0 or discountedSellingPrice <=0;

set sql_safe_updates = 0;

delete from zepto
where mrp<=0;



-- Trim names and scale prices
alter table zepto
modify column mrp decimal(8,2),
modify column discountedSellingPrice decimal(8,2);


update zepto 
set name = trim(name),
mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select mrp,discountedSellingPrice from zepto;


-- Null values
select * from zepto
where category is null or
name is null or
mrp is null or
discountPercent is null or
availableQuantity is null or 
discountedSellingPrice is null or
weightInGms is null or
outOfStock is null or
quantity is null;



-- Data analysis

-- 1. This query calculates the total monetary value of products currently held in stock for each category.
-- It helps the business identify which categories have the most capital (cash) tied up in inventory.

SELECT category, 
       SUM(discountedSellingPrice * availableQuantity) AS total_inventory_value
FROM zepto
GROUP BY category
ORDER BY total_inventory_value DESC;

-- 2. This query identifies the percentage of items that are unavailable (Out of Stock) in each category.
-- A high "oos_rate" indicates a supply chain problem or a high risk of losing customers to competitors.

SELECT category, 
       COUNT(*) AS total_items,
       SUM(CASE WHEN outOfStock = 'True' THEN 1 ELSE 0 END ) AS oos_count,
       ROUND((SUM(CASE WHEN outOfStock = 'True' THEN 1 ELSE 0 END)*100.0/COUNT(*)),2) AS oos_rate
FROM zepto
GROUP BY category
ORDER BY oos_rate DESC;

-- 3. This query checks if high discounts are causing products to sell out too quickly.
-- It groups products by discount level to see if "High Discount" items have a higher chance of being out of stock.

SELECT 
    CASE 
        WHEN discountPercent <= 10 THEN 'Low Discount'
        WHEN discountPercent BETWEEN 11 AND 30 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_type,
    ROUND(AVG(CASE WHEN outOfStock = 'TRUE' THEN 1 ELSE 0 END)*100,2)  AS stockout_percent
FROM zepto
GROUP BY discount_type;


-- 4. This query groups the catalog into Budget, Mid-Range, and Premium price tiers.
-- This helps the business understand the "Price Mix" and whether they are targeting low-income or high-income shoppers.

SELECT 
    CASE 
        WHEN discountedSellingPrice < 50 THEN 'Budget'
        WHEN discountedSellingPrice BETWEEN 50 AND 200 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS price_tier,
    COUNT(*) AS item_count
FROM zepto
GROUP BY price_tier;

-- 5. This query generates an "Urgent Alert" for items that are still in stock but have only 1 unit remaining.
-- This is an actionable list for warehouse managers to restock items before they completely run out.

SELECT name,category,availableQuantity
FROM zepto
WHERE outOFStock = 'False' AND availableQuantity = 1;

-- 6. This query finds the average discount offered in each category.
-- It identifies "Loss Leaders" (categories like Fruits/Vegetables with high discounts used to attract customers to the app).


SELECT category, 
       AVG(discountPercent) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC;


-- 7. This query calculates the total amount of money saved by customers through discounts in each category.
-- This "Marketing Value" is used in advertisements to show how much money Zepto saves its users.

SELECT category,
SUM(mrp - discountedSellingPrice) as total_money_saved
FROM zepto
GROUP BY category
ORDER BY  total_money_saved DESC ;


-- 8.This query calculates the "Inventory Buffer" or the average number of units available for products in each category.
-- A very low "avg_stock_per_item" means the category is thin on stock and needs more frequent replenishment.

SELECT category,
ROUND(AVG(availableQuantity),2) as avg_stock_per_item
FROM zepto
GROUP BY category
ORDER BY avg_stock_per_item ASC;






















