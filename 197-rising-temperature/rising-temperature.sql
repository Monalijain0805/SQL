# Write your MySQL query statement below
-- previous dates -> this means only check with previous date not any gap in between like in 3 and 4 it is correct but not 3 and 5


-- SELECT w1.id
-- FROM Weather w1         -- today
-- INNER JOIN Weather w2     
-- WHERE DATEDIFF(w1.recordDate, w2.recordDate)=1
-- AND w1.temperature > w2.temperature


-- SELECT w1.id
-- FROM Weather w1
-- INNER JOIN Weather w2
-- ON DATEDIFF(w1.recordDate, w2.recordDate)=1
-- AND w1.temperature > w2.temperature




SELECT w2.id
FROM Weather w1    -- yesterday
INNER JOIN Weather w2  -- todays
ON SUBDATE(w2.recordDate, 1)=w1.recordDate
AND w2.temperature > w1.temperature




-- we need to look at two records at the same time:

-- TODAY       YESTERDAY
--   ↓             ↓
-- 25             10

-- But both records are inside the same Weather table.
-- So we need to use the table twice.