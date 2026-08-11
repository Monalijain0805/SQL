# Write your MySQL query statement below

--   SELECT name
--   FROM Customer
--   WHERE referee_id != 2   
-- --agr itna hi likhege toh yeh srf without 2 wali return kregi by defult null wali nhi kregi toh uske liye - OR, NULL krke likhte h



-- SELECT name
-- FROM Customer
-- WHERE referee_id != 2 OR referee_id IS NULL;




-- Another method using ifNULL and <>

  SELECT name
  FROM Customer
  WHERE IFNULL(referee_id, 0) <> 2 ;

-- above means if refereeid is null then make it 0 and not equal to 2 
--   <> this is same as != means not equal