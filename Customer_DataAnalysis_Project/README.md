&nbsp;📊 **Customer Data Analysis Project**



📌 **1. Project Overview**

This project focuses on analyzing customer shopping behavior using Power BI, SQL, and DAX.  

The goal is to uncover insights related to:



\- Customer purchasing patterns  

\- Revenue contribution  

\- Product category performance  

\- Age and gender-based trends  

\- Payment method usage  



The analysis is visually presented using interactive dashboards.



---

📌 **2. Key Objectives**

\- Understand shopping distribution by **gender**.

\- Analyze product performance by **category**  

\- Study customer segments by **age group** 

\- Identify key revenue drivers  

\- Explore **payment method** preferences  

\- Build professional dashboards for decision-making  



---



📌 3. Folder Structure

Customer-Data-Analysis/

│

├── pbix/ # Power BI Dashboard

├── data/ # Dataset (CSV)

├── docs/ # Screenshots + SQL files

├── scripts/ # SQL + DAX code files

├── report/ # Final project report (.docx)

├── presentation/ # PPT presentation

└── README.md # Project documentation

---



📌 **4. Dashboards Overview**



**Dashboard 1 — Customer Overview**

Includes:

\- Total Orders  

\- Total Revenue  

\- Total Products Sold  

\- Total Unique Customers  

\- Shopping Distribution by Gender  

\- Revenue by Gender  

\- Products Sold by Gender  



➡ Screenshot: `docs/dashboard1\_overview.png`



---



**Dashboard 2 — Category \& Age Analysis**

Includes:

\- Orders by Category  

\- Revenue by Category  

\- Age Group Distribution  

\- Category vs Age Heatmap  



➡ Screenshot: `docs/dashboard2\_category\_age.png`



---



**Dashboard 3 — Payment Insights**

Includes:

\- Payment Method Distribution  

\- Payment Method vs Gender  

\- Revenue by Payment Method  

\- Monthly Payment Trends  



**📌 5. SQL Queries Used**

Example query:



sql

SELECT gender, COUNT(DISTINCT invoice\_no) AS total\_orders

FROM project\_customer\_segmentation.

GROUP BY gender;



📌 **6. DAX Measures Used:**

Total Orders =

DISTINCTCOUNT(project\_customer\_segmentation\[invoice\_no])



Total Revenue =

SUM(project\_customer\_segmentation\[Revenue])



Total Products Sold =

SUM(project\_customer\_segmentation\[quantity])



Total Unique Customers =

DISTINCTCOUNT(project\_customer\_segmentation\[customer\_id])



**📌 7. Key Insights**

Customer Insights



Females contribute higher revenue than males.



The 26–35 age group is the most active segment.



Category Insights



Clothing is the top-performing category.



Technology and Cosmetics also drive high revenue.



Payment Insights



Credit Card and Cash are the most preferred payment methods.



Monthly payment trends show seasonal patterns.



**📌 8. Business Recommendations**



Target high-value customer segments (female, 26–45).



Provide promotions for top categories like Clothing \& Electronics.



Improve digital payment experience to boost online orders.



Offer loyalty programs to retain frequent shoppers.



**📌 9. Tools \& Technologies Used**



Power BI: Dashboards, DAX, Data Modeling



MySQL: Data querying \& extraction



Python (optional): Data cleaning



Excel/CSV: Dataset handling



GitHub: Version control



📌 **10. How to Run This Project**



Download the .pbix file from the pbix/ folder



Open the file using Power BI Desktop



Load the dataset from data/ if prompted



Explore Dashboard Pages 1, 2, and 3



📌 **11. Conclusion**



The Customer Data Analysis project provides a comprehensive understanding of customer buying behavior and offers insights to improve business strategy.

Through Power BI and SQL, we visualize meaningful patterns that support data-driven decision-making.

