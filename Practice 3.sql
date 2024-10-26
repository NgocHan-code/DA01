--EX 1
select name from students 
where marks>75 
order by right(name,3),id asc;
--EX 2
select
user_id,
concat(upper(left(name, 1)), lower()substring(name,2))), as name,
from Users
order by user_id
substring('learn data with julie' ,3,5) =>>'arn d'
substring('learn data with julie',3)=>>> ''arn data with julie''
--EX 3
SELECT
manufacturer,
'$'||round(sum(total_sales)/1000000,0)||' '||'million' as sale
 from pharmacy_sales
 group by manufacturer
order by sum(total_sales) desc, manufacturer
--EX 4
SELECT
extract (month from submit_date) as mth,
product_id,
round(avg(stars), 2) as avg_stars
from reviews
group by mth,product_id
order by mth, product_id
--EX 5
SELECT
sender_id,
count(message_id) as message_count
from messages
where extract(month from sent_date)=8
and extract(year from sent_date)=2022
group by sender_id
order by message_count desc
limit 2
---EX 6
select tweet_id
from Tweets
where length(content)>15
--EX 8
select
count(employee_id) as number_empployee
from employees
where extract(month from joining_date) between 1 and 7
abd extract(year from joining_date)=2022
--EX 9
select
position('a' in first_name) as position
from worker
where first_name='Amitah'
--EX 10
select substring(title, length (winery)+2,4)
from winemag_p2
where country 'Macedonia'


