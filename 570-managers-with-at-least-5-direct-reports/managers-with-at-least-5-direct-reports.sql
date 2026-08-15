SELECT e1.name
-- We want to return the name of the manager

FROM Employee e1
-- e1 represents the manager

JOIN Employee e2
-- e2 represents the employees working under the manager

ON e1.id = e2.managerId
-- Match manager's id with employee's managerId
-- This connects each employee to their manager

GROUP BY e1.id, e1.name
-- Group all employees belonging to the same manager
-- So we can count how many direct reports each manager has

HAVING COUNT(e2.id) >= 5;
-- Count the employees in each manager's group
-- Keep only managers having 5 or more direct reports