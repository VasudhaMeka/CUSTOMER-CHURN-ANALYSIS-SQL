# CUSTOMER-CHURN-ANALYSIS-SQL
SQL-based churn analysis on a telecom dataset to understand key churn drivers and suggest retention strategies.

## Goal
To understand the reasons behind customer churn and identify patterns that help in customer retention.

## Dataset
- Source: https://www.kaggle.com/datasets/yeanzc/telco-customer-churn-ibm-dataset/data
- File: 'data/telecom_churn.csv'

## Data Description
- CustomerID: A unique ID that identifies each customer.
- Count: A value used in reporting/ dashboarding to sum up the number of customers in a filtered set.
- Country: The country of the customer's primary residence.
- State: The state of the customer's primary residence.
- City: The city of the customer's primary residence.
- Zip Code: The zip code of the customer's primary residence.
- Lat Long: The combined latitude and longitude of the customer's primary residence.
- Latitude: The latitude of the customer's primary residence.
- Longitude: The longitude of the customer's primary residence.
- Gender: The customer's gender: Male, Female.
- Senior Citizen: Indicates if the customer is 65 or older: Yes, No.
- Partner: Indicate if the customer has a partner: Yes, No.
- Dependents: Indicates if the customer lives with any dependents: Yes, No. Dependents could be children, parents, grandparents, etc.
- Tenure Months: Indicates the total number of months the customer has been with the company by the end of the quarter.
- Phone Service: Indicates if the customer subscribes to home phone service with the company: Yes, No.
- Multiple Lines: Indicates if the customer subscribes to Internet service with the company: Yes, No.
- Internet Service: Indicates if the customer subscribes to Internet service with the company: No, DSL, Fiber Optic, Cable.
- Online Security: Indicates if the customer subscribed to an additional online security service provided by the company: Yes, No.
- Online Backup: Indicates if the customer subscribes to an additional online backup service provided by the company: Yes, No.
- Device Protection: Indicates if the customer subscribes to an additional device protection plan for their Internet equipment provided by the company: Yes, No.
- Tech Support: Indicates if the customer subscribes to an additional technical support plan from the company with reduced wait times: Yes, No.
- Streaming TV: Indicates if the customer uses their Internet service to stream television programming from a third party provider: Yes, No. The company does not charge an additional fee for this service.
- Streaming Movies: Indicates if the customer uses their Internet service to stream movies from a third party provider: Yes, No. The company does not charge an additional fee for this service.
- Contract: Indicates the customer's current contract type: Month-to-Month, One Year, Two Year.
- Paperless Billing: Indicates if the customer has chosen paperless billing: Yes, No.
- Payment Method: Indicates how the customer pays their bill: Bank Withdrawal, Credit Card, Mailed Check.
- Monthly Charge: Indicates the customer's current total monthly charge for all their services from the company.
- Total Charges: Indicates the customer's total charges, calculated to the end of the quarter specified above.
- Churn label: Yes = the customer left the company this quarter. No = the customer remained with the company. Directly related to the Churn value.
- Churn Value: 1 = The customer left the company this quarter. 0 = the customer remained with the company. Directly related to the churn label.
- Churn Score: A value from 0-100 that is calculated using the predictive tool IBM SPSS Modeler. The model incorporates multiple factors known to cause churn. The higher the score, the more likely the customer will churn.
- CLTV: Customer Lifetime Value. A predicted CLTV is calculated using corporate formulas and existing data. The higher the value, the more valuable the customer. High-value customers should be monitored for churn.
- Churn Reason: A customer's specific reason for leaving the company. Directly related to the Churn Category.

## Tools Used
- MySQL
- SQL Queries
- Github for Version Control

## Key Tasks
1. Import and explore the dataset in SQL.
2. Analyse overall churn rate.
3. Study churn behavior across:
   - Contract Type
   - Tenure
   - Payment Method
   - Monthly and Total Charges
4. Identify the top reasons for churn
5. Document summary and recommendations
