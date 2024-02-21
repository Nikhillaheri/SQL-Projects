create database Blink_it ;

show databases;

use Blink_it;

show tables;

select * from sql_project_blink_it spbi ;

#2.	Write an SQL query to show all Item_Identifier

select item_identifier from sql_project_blink_it spbi ;

#3.	Write an SQL query to show count of total Item_Identifier.

select count(item_identifier) from sql_project_blink_it spbi  ;

#4.	Write an SQL query to show maximum Item Weight.

select max(item_weight) from sql_project_blink_it spbi  ;

#5.	Write an SQL query to show minimum Item Weight.

select min(item_weight) from sql_project_blink_it spbi  ;

#6.	Write an SQL query to show average Item_Weight.

select avg(item_weight) from sql_project_blink_it spbi  ;

#7.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.

select count(item_fat_content) from sql_project_blink_it spbi where Item_Fat_Content = 'Low fat';

#8.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(item_fat_content) from sql_project_blink_it spbi where Item_Fat_Content = 'Regular';

#9.	Write an SQL query to show maximum Item_MRP 

select max(item_mrp) from sql_project_blink_it spbi ;

#10. Write an SQL query to show minimum Item_MRP

select min(item_mrp) from sql_project_blink_it spbi ;

#11. Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200

select  item_identifier ,item_fat_content,Item_type,item_mrp from sql_project_blink_it spbi where Item_MRP > 200 ;

#12. Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 

select max(item_mrp),item_fat_content from sql_project_blink_it spbi where Item_Fat_Content ="low fat";

#13. Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 

select min(item_mrp),item_fat_content from sql_project_blink_it spbi where Item_Fat_Content ="low fat";

#14. Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from sql_project_blink_it spbi where Item_MRP between 50 and 100;

#15. Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct (item_fat_content) from sql_project_blink_it spbi;

#16. Write an SQL query to show ALL UNIQUE value of  Item_Type 

select distinct (Item_Type) from sql_project_blink_it spbi;

#17. Write an SQL query to show ALL DATA in descending ORDER by Item MRP 

select * from sql_project_blink_it spbi order by Item_MRP desc;

#18. Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales

select * from sql_project_blink_it spbi order by Item_Outlet_Sales asc;

#19. Write an SQL query to show ALL DATA in ascending by Item_Type 

select * from sql_project_blink_it spbi order by Item_Type  asc;

#20. Write an SQL query to show DATA of item_type dairy & Meat

select *,item_type from sql_project_blink_it spbi where item_type in ('dairy','meat');

#21. Write an SQL query to show ALL UNIQUE value of Outlet_Size 

select distinct (outlet_size) from sql_project_blink_it spbi ;

#22. Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

select distinct (outlet_location_type) from sql_project_blink_it spbi ;

#23. Write an SQL query to show ALL UNIQUE value of Outlet_Type 

select distinct (Outlet_Type) from sql_project_blink_it spbi ;

#24. Write an SQL query to show count of number of items by Item_Type  and order it in descending order

select Item_Type,count(Item_Type)  from sql_project_blink_it spbi group by Item_Type order by count(Item_Type) desc;

#25. Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order 

select Outlet_Size,count(Outlet_Size)  from sql_project_blink_it spbi group by Outlet_Size order by count(Outlet_Size) desc;

#26. Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.

select Outlet_Type, count(Outlet_type) from sql_project_blink_it spbi group by Outlet_type order by count(Outlet_type) desc;

#27. Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order

select Outlet_Location_Type,count(Outlet_Location_Type)from sql_project_blink_it spbi group by Outlet_Location_Type  order by count(Outlet_Location_Type) desc;

#28. Write an SQL query to show maximum MRP by Item_Type 

select Item_Type ,max(item_mrp)  from sql_project_blink_it spbi group by Item_Type ;

#29. Write an SQL query to show minimum MRP by Item_Type 

select Item_Type ,min(Item_MRP)  from sql_project_blink_it spbi group by Item_Type;

#30. Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year, min(item_mrp) from sql_project_blink_it spbi group by Outlet_Establishment_Year order by min(item_mrp) desc;

#31. Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year, max(item_mrp) from sql_project_blink_it spbi group by Outlet_Establishment_Year order by max(item_mrp) desc; 

#32. Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

select outlet_size,avg(item_mrp) from sql_project_blink_it spbi group by outlet_size order by avg(item_mrp) desc;

#33. Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.

select outlet_type,avg(item_mrp) from sql_project_blink_it spbi  group by Outlet_Type  order by avg(item_mrp) asc;

#34. Write an SQL query to show maximum MRP by Outlet_Type

select outlet_type,Max(item_mrp) from sql_project_blink_it spbi group by Outlet_Type ;

#35. Write an SQL query to show maximum Item_Weight by Item_Type 

select item_type,max(item_weight) from sql_project_blink_it spbi group by Item_Type ;

#36. Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year

select outlet_establishment_year,max(item_weight) from sql_project_blink_it spbi group by Outlet_Establishment_Year ;

#37. Write an SQL query to show minimum Item_Weight by Outlet_Type

select outlet_type,min(item_weight) from sql_project_blink_it spbi group by Outlet_Type ;

#38. Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order

select outlet_location_type,avg(item_weight) from sql_project_blink_it spbi group by Outlet_Location_Type order by avg(item_weight) desc;

#39. Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

select item_type , max(item_outlet_sales) from sql_project_blink_it spbi group by Item_Type ;

#40. Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 

select item_type , min(item_outlet_sales) from sql_project_blink_it spbi group by Item_Type ;
 
#41. Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 

select outlet_establishment_year , min(item_outlet_sales) from sql_project_blink_it spbi group by Outlet_Establishment_Year ;

#42. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

select Outlet_Establishment_Year ,max(item_outlet_sales) from sql_project_blink_it spbi group by Outlet_Establishment_Year order by max(item_outlet_sales) desc; 

#43. Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order

select outlet_size,avg(item_outlet_sales) from sql_project_blink_it spbi group by Outlet_Size order by avg(item_outlet_sales) desc;

#44. Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

select outlet_type,avg(item_outlet_sales) from sql_project_blink_it spbi group by Outlet_Type ;

#45. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 

select outlet_type , max(item_outlet_sales) from sql_project_blink_it spbi group by outlet_type;

#46. Write an SQL query to show total Item_Outlet_Sales by Item_Type 

select item_type, sum(item_outlet_sales) from sql_project_blink_it spbi group by Item_Type ;

#47. Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 

select Item_Fat_Content , sum(item_outlet_sales) from sql_project_blink_it spbi group by Item_Fat_Content  ; 

#48. Write an SQL query to show maximum Item_Visibility by Item_Type

select item_type, max(Item_Visibility) from sql_project_blink_it spbi group by Item_Type ;

#49. Write an SQL query to show Minimum Item_Visibility by Item_Type 

select item_type, min(Item_Visibility) from sql_project_blink_it spbi group by Item_Type ;

#50. Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 

select Outlet_Location_Type,item_type,sum(item_outlet_sales) from sql_project_blink_it spbi where Outlet_Location_Type ='Tier 1' group by item_type;

#51. Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select Item_Fat_Content,item_type,sum(item_outlet_sales) from sql_project_blink_it spbi where Item_Fat_Content ='low fat' group by item_type;
