use customerchurnanalysis;

create table Customers (
customerID varchar(20),
count int,
country varchar(20),
state varchar(20),
city varchar(20),
zip_code varchar(10),
lat_long varchar(100),
latitude decimal(9,6),
longitude decimal(9,6),
gender varchar(10),
senior_citizen varchar(10),
partner varchar(10),
dependents varchar(10),
tenure_months int,
phone_service varchar(10),
multiple_lines varchar(10),
internet_service varchar(50),
online_security varchar(10),
online_backup varchar(10),
device_protection varchar(10),
tech_support varchar(10),
streaming_tv varchar(10),
streaming_movies varchar(10),
contract varchar(50),
paperless_billing varchar(10),
payment_method varchar(50),
monthly_charges decimal(10,2),
total_charges decimal(10,2),
churn_label varchar(10),
churn_value int,
churn_score int,
cltv int,
churn_reason varchar(100)
);

