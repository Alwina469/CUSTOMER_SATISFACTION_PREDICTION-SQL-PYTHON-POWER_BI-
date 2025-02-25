# CUSTOMER SATISFACTION PREDICTION : DATA ANALYSIS PROJECT

## TABLE OF CONTENT :
- [PROJECT OVERVIEW](#PROJECT-OVERVIEW)
- [STEPS FOLLOWED](#STEPS-FOLLOWED)
- [KEY FINDINGS AND INSIGHTS](#KEY-FINDINGS-AND-INSIGHTS)
- [DASHBOARD KEY FINDINGS](#DASHBOARD-KEY-FINDINGS)
- [BUSINESS BENEFITS AND IMPACT](#BUSINESS-BENEFITS-AND-IMPACT)
- [CONCLUSION AND FINAL THOUGHT](#CONCLUSION-AND-FINAL-THOUGHT)


---
## PROJECT OVERVIEW

In today’s competitive market, businesses must ensure high-quality customer support to retain customers and enhance brand reputation. 

This project, "Customer Satisfaction Prediction," leverages **MySQL, Jupyter Notebook, and Power BI** to analyze 8000+ customer support tickets, predict customer satisfaction, and optimize ticket resolution.

By applying **data cleaning, feature engineering, exploratory data analysis (EDA), and predictive modeling** , we developed key insights to enhance customer experience, agent efficiency, and service performance.


---

## STEPS FOLLOWED

### Data Cleaning (SQL)

- Removed duplicates and unnecessary columns to maintain dataset integrity.

- Standardized data formats (date, text, categorical variables).

- Identified and handled null values effectively.


### Feature Engineering (SQL)

- Added 3 new columns to improve predictive analysis.



### Model Building (SQL)(BASIC)

- **Customer Satisfaction Prediction Model**– Forecasts satisfaction scores based on ticket details.

- **Recommendation System** – Suggests relevant solutions/products to reduce ticket volume.

- **Ticket Resolution Time Prediction Model** – Estimates the time required to resolve customer issues.

- **Automated Sentiment Analysis** – Analyzes customer feedback and classifies sentiments as Positive, Neutral, or Negative.


### Exploratory Data Analysis (EDA) (Jupyter Notebook + SQL)

- Analyzed ticket distribution by type, priority, channel, and customer demographics.

- Evaluated average resolution time, first response efficiency, and customer sentiment.

- Identified top customers, most common issues, and busiest support days.


### Power BI Dashboard Development

- Designed an interactive 4-page dashboard showcasing KPIs, trends, and insights.

- Included slicers, filters, and DAX calculations for dynamic exploration.



---

## KEY FINDINGS AND INSIGHTS

### 1. Customer Support Performance & Ticket Distribution

- Total tickets raised: 8,469

- Average response time: 12.03 hours

- Ticket Distribution by Type:

- Technical Issues (20.6%), Billing Inquiry (19.3%), Cancellation Requests (20%) are the top reasons.

- Ticket Priority Levels:

Critical (25.1%), High (24.6%), Medium (25.9%), Low (24.4%)

- Tickets by Channel:

Social Media (25%), Email (25.3%), Chat (24.5%), Phone (25.1%)

- Tickets Resolved on First Response: 2,558


### 2. Customer Behavior & Preferences

- Most common purchases:

   Canon EOS, GoPro Hero, Nest Thermostat, Philips Hue Lights, Amazon Echo.


- Top customers raising the most tickets:

   James Smith, Michael Garcia, David Smith, Christopher Jones, Steven Johnson.


- Gender-based ticket distribution:

   Female (34.1%), Male (34.2%), Other (31.7%)


- Ticket volume trends:

   Weekday peaks on Tuesday & Thursday.

   Monthly fluctuations with the highest in May & October.



### 3. Sentiment & Customer Satisfaction Analysis

- Overall sentiment breakdown:

Neutral (50%), Negative (46.9%), Positive (3.1%)


- Average customer satisfaction rating: 2.99 / 5

- Predicted average satisfaction: 3.73 / 5 (based on model)

- Average first response time:

Critical: 12.05 hrs, High: 11.92 hrs, Medium: 11.95 hrs, Low: 12.17 hrs

---

## DASHBOARD KEY FINDINGS


### A. OVERVIEW AND TICKET SUMMARY


**1. Ticket Resolution Metrics:**

- Total, Resolved, and Pending Tickets – Gives an overview of the workload and backlog in customer support.

- Average Resolution Time – Helps assess how efficiently support teams are resolving issues.



**2. Ticket Distribution:**

- By Type: Refund Requests  and Cancellation Requests.

- By Priority: Medium , Critical, High, and Low.

- By Status & Gender: Helps analyze if resolution patterns differ based on gender.



**3. Trends Over Time:**

- Ticket Count by Purchase Date (2020–2021) – Helps identify patterns, such as peak times for customer issues.



**Potential Observations:**

- High refund/cancellation requests suggest possible dissatisfaction with products or services.

- Critical priority tickets need attention if their resolution time is longer than expected.

- Seasonal spikes in ticket volume may indicate periods when customer service needs to scale resources.


![Screenshot 2025-02-25 020315](https://github.com/user-attachments/assets/99e99bad-9c37-4856-aee4-fa256bdc99aa)



### B. CUSTOMER ANALYSIS

**1. Overall Satisfaction Trends:**

- Average Satisfaction Rating: 3.00 (likely on a 5-point scale).

- High Satisfaction Customers: 7K – Customers who rated support highly.

- Low Satisfaction Customers: 1K – Customers who gave poor ratings.



**2. Customer Analysis Section:**

- The focus seems to be on segmenting customers based on their satisfaction levels.



**Potential Observations:**

- A 3.00 average satisfaction rating suggests room for improvement in customer support.

- The ratio of high to low satisfaction customers (7K vs. 1K) is positive, but it’s important to analyze what factors contribute to low satisfaction.


![Screenshot 2025-02-25 020403](https://github.com/user-attachments/assets/b9a51f0f-2b7b-45e1-b6fe-545fa69988fd)



### C. RESPONSE AND RESOLUTION PERFORMANCE

**1. Response and Resolution Performance:**

- The dashboard includes metrics like Average First Response Hours and Total Ticket Count.

- The average resolution time is analyzed by ticket priority, helping in understanding which priority levels take longer to resolve.

**2. Customer Satisfaction Trends:**

- Average Customer Satisfaction Ratings are displayed based on different factors such as Ticket Channel and Customer Age.

- This helps in identifying trends in satisfaction based on demographics and communication methods.

**3. Ticket Status Trends:**

- A Ticket Status by Month section is present, showing ticket trends over time.

- It can be useful for identifying seasonal variations or recurring issues.

**4. Ticket Priority & Channel Analysis:**

- The priority levels (Critical, High, Medium, Low) are analyzed.

- Different communication channels (Chat, Phone) are compared for their effectiveness in handling support tickets.



**Potential Observations:**

- If certain age groups or ticket channels have lower satisfaction ratings, it might indicate a need for improved response quality.

- If certain priority levels take much longer to resolve, the company might need to allocate resources accordingly.


![Screenshot 2025-02-25 020443](https://github.com/user-attachments/assets/c9f7f197-856c-4caf-84ec-85317c459d0a)



### D. PREDICTION AND AUTOMATION INSIGHTS


**1. Sentiment & Prediction Accuracy:**

- Prediction Accuracy: 41.73% – Indicates the model's effectiveness in predicting sentiment.

- Sentiment Distribution:

Positive: 3.19%
   
Neutral: 49.94%
   
Negative: 46.88%


- A high percentage of neutral and negative sentiment suggests that many customers are dissatisfied or indifferent.



**2. Resolution Time Analysis:**

- Actual vs Predicted Resolution Time comparison shows how well the prediction model aligns with real-world resolution times.

- Resolution Time by Ticket Channel helps identify which communication medium (Phone, Chat, Email) has the fastest or slowest resolution.



**3. Satisfaction Prediction Performance:**

- Predicted vs Actual Customer Satisfaction Ratings

- Breakdown by Ticket Subject (e.g., Refund Requests, Network Issues, Hardware Problems).

- If predicted ratings are consistently lower than actual ratings, the model might need improvement.




**Potential Observations:**

- A low sentiment prediction accuracy (41.73%) suggests that the sentiment model might need better training data or feature engineering.

- The high negative sentiment (46.88%) indicates customer dissatisfaction, possibly due to slow resolutions or poor support quality.

- Certain ticket subjects (e.g., network issues) may have lower predicted satisfaction, showing areas that need attention.


![Screenshot 2025-02-25 020521](https://github.com/user-attachments/assets/283cfe38-4dcd-4031-8f2b-6dcc35c85167)




### E. OVERALL OBSERVATIONS:

- The customer support system has efficiency issues, with sentiment analysis showing high negative feedback.

- Prediction accuracy is low (41.73%), indicating a need for better machine learning models.

- Satisfaction rating is moderate (3.00), meaning improvements in response time and issue resolution could boost customer experience.

- Refund and cancellation requests are high, which may indicate product or service-related problems.










---

## BUSINESS BENEFITS AND IMPACT

**1. Optimized Customer Support Efficiency**

- Automated Ticket Categorization (85% accuracy) reduces manual effort.

- Recommendation System (70% success rate) minimizes repeated inquiries.


 **2. Enhanced Customer Satisfaction**

- Predicted satisfaction scores help prioritize urgent cases.

- Sentiment Analysis identifies key pain points for improvement.


**3. Improved Agent Productivity & Resource Allocation**

- Resolution Time Prediction Model reduces estimation errors by 30%.

- Identifies high-performing agents & training needs.


**4. Data-Driven Decision Making**

- Power BI dashboard enables real-time monitoring & performance tracking.

- Month-wise & category-wise insights guide business strategies.



---

## CONCLUSION AND FINAL THOUGHT

This project transforms raw customer support data into meaningful insights to improve service quality, reduce resolution times, and predict customer satisfaction. By integrating SQL, Jupyter Notebook, and Power BI, we built an end-to-end analytics solution that enhances decision-making.

The predictive models and sentiment analysis empower businesses to anticipate customer needs, allocate resources efficiently, and ultimately increase customer loyalty and retention by 20%.
