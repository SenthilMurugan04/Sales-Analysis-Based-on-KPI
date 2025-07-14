create database project;
use project;
select * from sales;

# SALES & REVENUE:

# 1.Total Sales Revenue   
Select round(sum(sales_amount)) as Total_Revenue from sales; 
# 2.Average Order Value
Select avg(sales_amount) as Avg_Order_Values from sales;
# 3.Monthly Sales
Select month(sale_date) as Month, year(sale_date) as Year, round(sum(sales_amount)) as Total_Sales from sales group by month,year order by year,month;
# 4.Top 5 Performing Regions by Revenue
Select round(sum(sales_amount)) as Total_Revenue , Region from Sales group by region order by Total_Revenue desc limit 5;
# 5.Total Profit
Select round(sum((unit_price-unit_cost)* quantity_sold)) as Total_Profit from sales;
# 6.Average Discount Rate
Select avg(discount) as Avg_Discount_Rate from sales; 
-----------------------------------------------------------------------------------------------------------------------------------------------------

# SALES REP PERFORMANCE:

# 7.Top Sales Reps by Revenue
Select Sales_Rep,round(sum(sales_amount)) as Total_Revenue from sales group by sales_rep order by Total_Revenue;
# 8.Sales by Region and Sales Rep
Select Region_and_Sales_Rep,round(sum(sales_amount)) as Total_Revenue from sales group by region_and_sales_rep order by region_and_sales_rep ;
--------------------------------------------------------------------------------------------------------------------------------------------------------

# CUSTOMER & SALES_CHANNEL:

# 9.Sales by Customer Type
Select Customer_Type,round(sum(sales_amount)) as Total_Revenue from sales group by customer_type;
# 10.Sales by Sales Channel
Select Sales_Channel,round(sum(sales_amount)) as Total_Revenue from sales group by sales_channel;
---------------------------------------------------------------------------------------------------------------------------------------------------------

# PRODUCT PERFORMANCE:
 
# 11.Top Product Categories by Quantity Sold
Select Product_Category,sum(quantity_sold) as Total_Quantity from sales group by Product_Category order by Total_Quantity desc;
# 12.Most Profitable Product Category
Select Product_Category, round(sum((unit_price-unit_cost)* quantity_sold)) as Profit from sales group by product_category order by Profit desc limit 1;
------------------------------------------------------------------------------------------------------------------------------------------------------------
