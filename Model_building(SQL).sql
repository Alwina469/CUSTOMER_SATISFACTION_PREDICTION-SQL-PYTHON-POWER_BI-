-- ---------------------------MODEL BUILDING IN MYSQL -------------------------------------------------

             -- 1. CUSTOMER SATISFACTION PREDICTION MODEL
             -- 2. RECOMMENDATION SYSTEM (SUGGESTING RELEVANT PRODUCTS OR SOLUTION)
             -- 3. TICKET RESOLUTION TIME PREDICTION MODEL
             -- 4. AUTOMATED SENTIMENT ANALYSIS





-- A. CUSTOMER SATISFACTION PREDICTION MODEL -------
       
		-- predicts satisfaction based on ticket priority and resolution time

     alter table customer_tickets
     add column predicted_satisfaction int;
     
     update customer_tickets
     set predicted_satisfaction =CASE WHEN FIRST_RESPONSE_HOURS >21 AND TICKET_PRIORITY ="CRITICAL" THEN 1 
									  WHEN FIRST_RESPONSE_HOURS >15 AND (TICKET_PRIORITY ="HIGH") THEN 2
                                      WHEN FIRST_RESPONSE_HOURS >10 AND (TICKET_PRIORITY ="MEDIUM") THEN 3 
                                      ELSE 4 END ;
                                      
                                      



-- B. RECOMMENDATION SYSTEM (SUGGESTING RELEVANT PRODUCTS OR SOLUTION) -------

		-- suggest relevant solutions based on ticket subject
        
     alter table customer_tickets
     add column recommendation text;
     
     update customer_tickets
     set recommendation =case when ticket_subject="product setup" then "STEP-BY-STEP SETUP GUIDE"
							 when ticket_subject="Peripheral compatibility" then "CHECK DEVICE SPECIFICATIONS"
							 when ticket_subject="network problem" then "NETWORK TROUBLESHOOTING GUIDE"
							 when ticket_subject="account access" then "RESET PASSWORD OR VERIFY ACCOUNT"
							 when ticket_subject="Data loss" then "BACKUP AND RECOVERY OPTIONS"
							 when ticket_subject="Payment issue" then "VERIFY PAYMENT METHOD DETAILS"
							 when ticket_subject="Refund request" then "CHECK REFUND ELIGIBILITY"
							 when ticket_subject="Battery life" then "OPTIMIZE POWER"
							 when ticket_subject="Installation support" then "FOLLOW INSTALLATION INSTRUCTION"
							 when ticket_subject="Software bug" then "UPDATE OR REINSTALL SOFTWARE"
							 when ticket_subject="Hardware issue" then "RUN DIAGNOSTICS OR REPLACE"
							 when ticket_subject="Product recommendation" then "SUGGEST BEST-MATCHING PRODUCTS"
							 when ticket_subject="Delivery problem" then "TRACK OR CONTACT SUPPORT"
							 when ticket_subject="Display issue" then "ADJUST SETTING OR REPAIR"
							 when ticket_subject="Cancellation request" then "CHECK CANCELLATION POLICY"
							else " GENERAL SUPPORT FAQs" end;







-- C. TICKET RESOLUTION TIME PREDICTION MODEL -------
     
         -- uses historical averages to predict resolution time
         
     alter table customer_tickets
     add column predicted_resolution_time int;

	update customer_tickets
     set predicted_resolution_time= CASE WHEN TICKET_PRIORITY ="CRITICAL" THEN 13
                                         WHEN TICKET_PRIORITY ="HIGH" THEN 11
                                         WHEN TICKET_PRIORITY ="MEDIUM" THEN 10
                                         ELSE 12 END ;






-- D. AUTOMATED SENTIMENT ANALYSIS -------
    
     -- uses basic keyword matching to determine customer sentiment
     
     alter table customer_tickets
     add column sentiment varchar(30);
     
     update customer_tickets
     set sentiment = (CASE WHEN TICKET_DESCRIPTION LIKE"%Excellent%"
							OR TICKET_DESCRIPTION like "%Good%"
							OR TICKET_DESCRIPTION like "%great%" 
							OR TICKET_DESCRIPTION like "%Fantastic%" 
							OR TICKET_DESCRIPTION like"%Amazing%"
							OR TICKET_DESCRIPTION like"%Happy%" 
							OR TICKET_DESCRIPTION like"%Satisfied%" 
							OR TICKET_DESCRIPTION like"%Delighted%" 
							OR TICKET_DESCRIPTION like"%Impressed%"
							OR TICKET_DESCRIPTION like"%Pleasant%"
							OR TICKET_DESCRIPTION like"%Helpful%"
							OR TICKET_DESCRIPTION like"%Friendly%" 
							OR TICKET_DESCRIPTION like"%Efficient%"
							 then "Positive"
							when
							 TICKET_DESCRIPTION LIKE"%bad%" 
							OR TICKET_DESCRIPTION like "%poor%" 
							OR TICKET_DESCRIPTION like "%terrible%" 
							OR TICKET_DESCRIPTION like "%awful%"
							OR TICKET_DESCRIPTION like"%unhappy%"
							OR TICKET_DESCRIPTION like"%unsatisfied%"
							OR TICKET_DESCRIPTION like"%disappointed%"
							OR TICKET_DESCRIPTION like"%frustrated%"
							OR TICKET_DESCRIPTION like"%angry%"
							OR TICKET_DESCRIPTION like"%upset%"
							OR TICKET_DESCRIPTION like"%un%"
							OR TICKET_DESCRIPTION like"%ineffective%"
							OR TICKET_DESCRIPTION like"%inefficient%"
							THEN "negative" 
							else "neutral" end ) ; 
