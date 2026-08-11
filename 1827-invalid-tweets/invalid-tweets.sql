# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15

-- CHAR_LENGTH(content) this means hume "content" from tweets table kilength nikalni h isliye use kia 
-- FOR BYTES, USE:- LENGTH()