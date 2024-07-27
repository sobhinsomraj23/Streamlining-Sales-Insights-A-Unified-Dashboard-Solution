
#SELECT * FROM sales.transactions where sales_amount="-1";

select count(*) from transactions where transactions.currency ="INR\r";

select count(*) from transactions where transactions.currency="USD";

select sum(transactions.sales_amount) from date where cy_date  = "2020-01-01";

select sum(sales.transactions.sales_amount) 
	from sales.transactions 
    inner join sales.date on sales.transactions.order_date = sales.date.date
    where date.year=2019 and date.month_name="January" 
    and (transactions.currency);
