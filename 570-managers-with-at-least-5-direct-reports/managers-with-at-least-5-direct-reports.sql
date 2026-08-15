

-- Select the manager's name
SELECT m.name

-- e = employee table
FROM Employee e

-- m = same Employee table, but representing the manager
JOIN Employee m

-- Connect each employee to their manager
ON e.managerId = m.id

-- Create one group for each manager
GROUP BY m.id, m.name

-- Keep only managers having 5 or more direct reports
HAVING COUNT(e.id) >= 5;