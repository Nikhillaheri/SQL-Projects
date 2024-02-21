#Q1 Import Data from both the .CSV files to create tables, Listings and Booking Details.

use airbnb;

show tables;

select * from booking_details ;

select * from listings ;

#Q2 Write a query to show names from Listings table

select name from listings  ;

#Q3 Write a query to fetch total listings from the listings table

select count(id) from listings ;

#Q4 Write a query to fetch total listing_id from the booking_details table

select count(listing_id) from booking_details ;

#Q5 Write a query to fetch host ids from listings table

select host_id from listings ;

#Q6 Write a query to fetch all unique host name from listings table

select distinct (host_name) from listings ;

#Q7 Write a query to show all unique neighbourhood_group from listings table

select distinct (neighbourhood_group) from listings ;

#Q8 Write a query to show all unique neighbourhood from listings table

select distinct (neighbourhood) from listings ;

#Q9 Write a query to fetch unique room_type from listings tables

select distinct (room_type) from listings ;

#Q10 Write a query to show all values of Brooklyn & Manhattan from listings tables

select * from listings where neighbourhood_group in ('Brooklyn','manhattan');

#Q11 Write a query to show maximum price from booking_details table

select max(price) from booking_details ;

#Q12 Write a query to show minimum price fron booking_details table

select min(price) from booking_details ;

#Q13 Write a query to show average price from booking_details table

select avg(price) from booking_details ;

#Q14 Write a query to show minimum value of  minimum_nights from booking_details table

select min(minimum_nights) from booking_details ;

#Q15 Write a query to show maximum value of minimum_nights from booking_details table

select max(minimum_nights) from booking_details ;

#Q16 Write a query to show average availability_365

select avg(availability_365) from booking_details ;

#Q17 Write a query to show id , availability_365 and all availability_365 values greater than 300

select l.id,b.availability_365 from booking_details b inner join listings l on l.id=b.listing_id where b.availability_365 > 300;

#Q18 Write a query to show count of id where price is in between 300 to 400

select count(listing_id) from booking_details where price between 300 and 400;

#Q19 Write a query to show count of id  where minimum_nights spend is less than 5

select count(listing_id) from booking_details where minimum_nights <5;

#Q20 Write a query to show count where minimum_nights spend is greater than 100

select count(minimum_nights) from booking_details where minimum_nights >100;

#Q21 Write a query to show all data of listings & booking_details

select l.*,b.* from listings l inner join booking_details b on l.id=b.listing_id ;

#Q22 Write a query to show host name and price 

select l.host_name,b.price from booking_details b inner join listings l  on l.id=b.listing_id;

#Q23 Write a query to show room_type and price

select l.room_type,b.price from booking_details b inner join listings l  on l.id=b.listing_id;

#Q24 Write a query to show neighbourhood_group & minimum_nights spend

select l.neighbourhood_group ,b.minimum_nights from booking_details b inner join listings l on l.id=b.listing_id;

#Q25 Write a query to show neighbourhood & availability_365

select l.neighbourhood ,b.availability_365 from booking_details b inner join listings l on l.id=b.listing_id;

#Q26 Write a query to show total price by neighbourhood_group

select sum(b.price),l.neighbourhood_group from booking_details b inner join listings l on l.id=b.listing_id group by neighbourhood_group ;

#Q27 Write a query to show maximum price by neighbourhood_group

select max(b.price),l.neighbourhood_group from booking_details b inner join listings l on l.id=b.listing_id group by neighbourhood_group ;

#Q28 Write a query to show maximum night spend by neighbourhood_group

select max(b.minimum_nights),l.neighbourhood_group from booking_details b inner join listings l on l.id=b.listing_id group by neighbourhood_group ;

#Q29 Write a query to show maximum reviews_per_month spend by neighbourhood

select max(b.reviews_per_month),l.neighbourhood from booking_details b inner join listings l on l.id=b.listing_id group by neighbourhood ;

#Q30 Write a query to show maximum price by room type

select max(b.price),l.room_type from booking_details b inner join listings l on l.id=b.listing_id group by room_type;

#Q31 Write a query to show average number_of_reviews by room_type

select avg(b.number_of_reviews),l.room_type from booking_details b inner join listings l on l.id=b.listing_id group by room_type;

#Q32 Write a query to show average price by room type

select avg(b.price),l.room_type from booking_details b inner join listings l on l.id=b.listing_id group by room_type;

#Q33 Write a query to show average night spend by room type

select avg(b.minimum_nights),l.room_type from booking_details b inner join listings l on l.id=b.listing_id group by room_type;

#Q34 Write a query to show average price by room type but average price is less than 100

select avg(b.price),l.room_type from booking_details b inner join listings l on l.id=b.listing_id group by room_type having avg(b.price)<100 ;

#Q35 Write a query to show average night by neighbourhood and average_nights is greater than 5

select avg(b.minimum_nights) as average_night,l.neighbourhood from booking_details b inner join listings l on l.id=b.listing_id group by neighbourhood having average_night>5 ;

#Q36 Write a query to show all data from listings where price is greater than 200 using sub-query.

select b.price ,l.* from booking_details b inner join listings l on l.id=b.listing_id where price>200 ; #by using join

select * from listings where id in (select id from booking_details where Price  > 200); #using sub-query

#Q37 Write a query to show all values from booking_details table where host id is 314941 using sub-query.

select * from booking_details where listing_id in (select listing_id from listings where host_id = 314941);

#Q38 Find all pairs of id having the same host id, each pair coming once only.

select host_id,distinct(id)from listings where host_id = "id"; #try

select distinct l1.id , l1.host_id from listings l1, listings l2
where  l1.host_id = l2.host_id and l1.id  = l2.id  order by host_id;

#Q39 Write an sql query to show fetch all records that have the term cozy in name 

select * from listings where name like "%cozy%" ;

#Q40 Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group

select b.price,l.host_id,l.neighbourhood_group from booking_details B inner join listings l where neighbourhood_group="manhattan";

#Q41 Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100

select l.id,l.host_id,l.neighbourhood,b.price from booking_details B inner join listings l on l.id  = b.listing_id  where neighbourhood in ("upper west side","williamsburg") and b.price >100;

#Q42 Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant

select l.id,l.host_id,l.neighbourhood,b.price from booking_details B inner join listings l on l.id  = b.listing_id  where host_name="elise" and neighbourhood ="bedford-stuyvesant" ;

#Q43 Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights

select l.host_name, b.availability_365,b.minimum_nights from listings l inner join booking_details b on l.id=b.listing_id where availability_365>100 and minimum_nights>100;

#Q44 write query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+

select l.id, l.host_name,b.number_of_reviews from listings l inner join booking_details b on l.id=b.listing_id where b.reviews_per_month>5 and number_of_reviews>500;

#Q45 Write a query to show neighbourhood_group which have  most  total number of review 

select l.neighbourhood_group ,sum(b.number_of_reviews) from listings l inner join booking_details b on l.id=b.listing_id group by neighbourhood_group limit 1;

#Q46 Write a query to show host name which have most cheaper total price 

select l.host_name ,min(b.price) from listings l inner join booking_details b on l.id=b.listing_id group by host_name order by min(b.price) limit 1;

#Q47 Write a query to show host name which have most costly total price 

select l.host_name ,max(b.price) from listings l inner join booking_details b on l.id=b.listing_id group by host_name order by max(b.price) desc limit 1;

#Q48 Write a query to show host name which have max price using sub-query

select n1.host_name ,n2.price
from listings n1 inner join booking_details n2 on n1.id = n2.listing_id
where n2.price in (select max(price) from booking_details);

#Q49 Write a query to show neighbourhood_group where price is less than 100

select l.neighbourhood_group , b.price from listings l inner join booking_details b on l.id=b.listing_id where b.price<100;

#Q50 Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price

select avg(b.availability_365) ,max(b.price) from listings l inner join booking_details b on l.id=b.listing_id group by l.room_type order by max(b.price) asc;









