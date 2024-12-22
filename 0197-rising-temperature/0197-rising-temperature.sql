/* Write your T-SQL query statement below */

select w2.id
from Weather as w1
join Weather as w2
on w1.recordDate = DATEADD(day,-1,w2.recordDate)
where w1.temperature < w2.temperature
