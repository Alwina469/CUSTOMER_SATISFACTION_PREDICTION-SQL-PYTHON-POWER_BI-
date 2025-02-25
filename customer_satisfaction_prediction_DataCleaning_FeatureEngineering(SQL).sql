-- SQL Project - Data Cleaning



create database customer_satisfaction_prediction;
use customer_satisfaction_prediction;



select * from customer_support_tickets;



-- first thing we want to do is create a staging table. This is the one we will work in and clean the data. We want a table with the raw data in case something happens

     create table customer_tickets
	like customer_support_tickets;

     insert into customer_tickets
     select * from customer_support_tickets;


-- now when we are data cleaning we usually follow a few steps
-- 1. check for duplicates and remove any
-- 2. standardize data and fix errors
-- 3. Look at null values and see what 
-- 4. remove any columns and rows that are not necessary - few ways



-- --------------------------------------------A. Remove Duplicates ----------------------------------


select ticket_id from (
			select ticket_id , count(*)
            from customer_tickets
            group by ticket_id
            having count(*)>1) a ;
            
            -- this query shows there are no duplicates .
            


-- --------------------------B. Standardizing Data ( finding issues in data and fixing it)-------------


-- change datatype of DATE_OF_PURCHASE , FIRST_RESPONSE_TIME , TIME_TO_RESOLUTION columns



# 1. DATE_OF_PURCHASE column

alter table customer_tickets
modify date_of_purchase date;



# 2. FIRST_RESPONSE_TIME column

alter table customer_tickets
modify first_response_time datetime;
 


# 3. TIME_TO_RESOLUTION column

 alter table customer_tickets
modify time_to_resolution datetime;




-- ------------------------------C. Look at Null Values and Missing values------------------------------------------

-- we have NULL values in RESOLUTION , FIRST_RESPONSE_TIME , TIME_TO_RESOLUTION and CUSTOMER_SATISFACTION_RATING 
-- We can't do changes in FIRST_RESPONSE_TIME and TIME_TO_RESOLUTION 
-- We'll handle NULL values in RESOLUTION and CUSTOMER_SATISFACTION_RATING


-- 1. RESOLUTION column ( change NULL values to PENDING)

       update customer_tickets
       set resolution = "pending"
       where resolution is NULL;
       

-- 2. CUSTOMER_SATISFACTION_RATING column ( sets default satisfaction rating to 3 (neutral))

       update customer_tickets
       set customer_satisfaction_rating = 3
       where customer_satisfaction_rating is NULL;





-- ---------------------------------D. remove any columns and rows we need to----------------------------------------

  -- no rows to remove.
  
 
 
 -- DATA IS CLEANED --





-- --------------------------------------FEATURE ENGINEERING --------------------------------------------------------

-- A. extracting time taken for first response in hours

select first_response_time , time_to_sec(first_response_time)/3600 from customer_tickets;
  
  -- adding new column
  
alter table customer_tickets
add column first_response_hours int;

  -- convert response time from seconds to hours
update customer_tickets
set first_response_hours = time_to_sec(first_response_time)/3600;     






-- B . extracting ticket age in days ( calculating number of days since product purchase)

  -- adding a new column

alter table customer_tickets
add column ticket_age int;

  -- adding values in it
  
update customer_tickets
set ticket_age = datediff(curdate(),date_of_purchase);







-- C. creating a flag for high priority tickets( add a binary flag to identify high priority tickets)

  -- adding a new column
  
  alter table customer_tickets
  add column high_priority_flag BOOLEAN;
  
  
  -- adding values in it
  update customer_tickets
  set high_priority_flag = case when ticket_priority in("high","critical") then 1 else 0 end;


--  ------- ADDED THREE NEW COLUMNS---------------

