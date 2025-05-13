use customerchurnanalysis;

-- Basic Exploration
select * from customers;

-- Check nulls
select count(*) - count(total_charges) as missing_total_charges
from customers;

-- Churn Overview
-- 1. Total Churn Count
select churn_label, count(*) as total
from customers
group by churn_label;

-- 2. Churn Rate
select round(
sum(
	case when churn_label = 'Yes' then 1
    else 0
    end
	) * 100 / count(*) , 2
) as churn_rate
from customers;

-- Churn Analysis by Key Factors
-- 1. By Contract Type
select contract, count(*) as total_customers,
sum(
		case 	
		when churn_label = 'Yes' then 1
		else 0
		end
	) as churned,
round(sum(
	case
    when churn_label = 'Yes' then 1
    else 0
    end
	) * 100 / count(*),2) as churn_rate
    from customers
    group by contract;
    
-- 2. By Tenure Range
select
	case
		when tenure_months between 0 and 12 then '0-12 months'
        when tenure_months between 13 and 24 then '13-24 months'
        when tenure_months between 25 and 48 then '25-48 months'
        else '49+ months'
	end as tenure_group,
    count(*) as total,
    sum(case when churn_label = 'Yes' then 1 else 0 end) as churned,
    round(sum(case
				when churn_label = 'Yes' then 1 else 0 end) * 100 / count(*), 2) as churn_rate
from customers
group by tenure_group;

-- 3. By Internet Service
select internet_service, count(*) as total,
sum(case when churn_label = 'Yes' then 1 else 0 end) as churned,
round(sum(case when churn_label = 'Yes' then 1 else 0 end) * 100 / count(*),2) as churn_rate
from customers
group by internet_service;

-- 3. By Senior Citizen
select senior_citizen, count(*) as total,
sum(case when churn_label = 'Yes' then 1 else 0 end) as churn_rate
from customers
group by senior_citizen;

-- 4. By Payment Method
select payment_method, count(*) as total,
sum(case when churn_label = 'Yes' then 1 else 0 end) as churn_rate
from customers
group by payment_method;

-- Monthly Charges & CLTV
-- 1. Average Monthly Charges vs Churn
select churn_label, round(avg(monthly_charges),2) as avg_monthly_charges
from customers
group by churn_label;

-- Average CLTV vs Churn
select churn_label, round(avg(cltv),2) as avg_cltv
from customers
group by churn_label;

-- Geographic Patterns
-- 1. Top Cities by Churn Count
select city, count(*) as churned
from customers
where churn_label = 'Yes'
group by city
order by churned desc
limit 10;

