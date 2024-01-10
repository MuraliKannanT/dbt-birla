SELECT
region, nation, count(customer_name) as tot_customers, average(account_balance) as avg_balance 
FROM {{ref('customer_nation_region')}}
  