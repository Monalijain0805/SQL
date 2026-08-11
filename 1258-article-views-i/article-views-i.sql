# Write your MySQL query statement below
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id

-- SELECT DISTINCT author_id  - means Give me author_id, but remove duplicate values.
-- author_id AS id - This simply renames the output column. like in output column