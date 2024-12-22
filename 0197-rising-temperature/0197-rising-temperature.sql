/* Write your T-SQL query statement below */


-- select today.id
-- from Weather as yesterday
-- cross join Weather as today

-- where DateDiff(day,today.recordDate,yesterday.recordDate) = 1
-- and today.temperature > yesterday.temperature

SELECT today.id
FROM Weather AS yesterday
JOIN Weather AS today ON DATEADD(day, 1, yesterday.recordDate) = today.recordDate
WHERE today.temperature > yesterday.temperature;