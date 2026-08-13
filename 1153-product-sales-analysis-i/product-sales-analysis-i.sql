# Write your MySQL query statement below
-- SELECT p.product_name, s.year, s.price
-- FROM Sales s
-- LEFT JOIN Product p
-- USING(product_id)





SELECT p.product_name, s.year, s.price   -- this will return the actul thing after writing on condition
FROM Sales s  -- s mtlb humne aliasuse kia h mtlbshort name dia h taki sale ko use krne  asani ho 's'
LEFT JOIN Product p   
ON s.product_id = p.product_id   -- jb bhi joins use krte h toh condition ke sath hote h isliye ON use kia h and s.product_id = p.product_id means sales ki product_id and product ki product id acts as a foreign key so use it 