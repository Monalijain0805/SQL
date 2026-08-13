# Write your MySQL query statement below
-- SELECT
-- FROM Activity a1
-- INNER JOIN Activity a2
-- ON a1.process_id = a2.process_id
-- AND machine_id =a2_machine_id
-- AND a1.timestamp < a2.timestamp

-- half way to understand the problem

-- actual ans -:

-- SELECT 
--     a1.machine_id,
--     ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time --  ROUND(AVG(a2.timestamp - a1.timestamp), 3)  this means we want round value upto 3 positions
-- FROM Activity a1   -- start row
-- INNER JOIN Activity a2  -- end row
-- ON a1.process_id = a2.process_id  -- same process + 
-- AND a1.machine_id = a2.machine_id -- same machine
-- AND a1.timestamp < a2.timestamp   -- means start time < endtime
-- GROUP BY a1.machine_id;

-- BUT THIS CASE ALSO GET FAILED IN 1 SITUATION WHERE PROCESSES RESULT WILL BECOME 0 THEN ACCORDING TO THE STRICTLY a1.timestamp < a2.timestamp THIS CONDITION IWLL NOT CONSIDER THISIN CALCULATING AVERAGE SO


SELECT 
    a1.machine_id,
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1
INNER JOIN Activity a2
ON a1.process_id = a2.process_id
AND a1.machine_id = a2.machine_id
AND a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY a1.machine_id;