use project_csat_analytics;

select * from CSAT;
select *from CSAT
limit 10;
select count(*) from CSAT;
describe CSAT;

select id, count(*) from CSAT
group by id having count(*)>1;

select count(*) from CSAT
where id is null or csat_score is null;

select * from CSAT 
where csat_score<1 or csat_score>5;
select count(*) from CSAT 
where csat_score<1 or csat_score>5;

select * from CSAT
where response_time<0;

select channel, count(*) as total_calls
from CSAT group by channel;

select state, avg(csat_score) as avg_csat
from CSAT group by state;

select reason, count(*) as Total_calls
from CSAT group by reason;
