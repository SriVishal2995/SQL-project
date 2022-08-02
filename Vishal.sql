SELECT p.ProductId,p.ProductName,c.CategoryName,p.Price,
CASE CategoryName
WHEN 'Motors' THEN Price - 3000
WHEN 'Electronics' THEN Price + 50
WHEN 'Fashion' THEN Price + 150
ELSE Price
END as NewPrice
FROM Products p
INNER JOIN Categories c
ON p.CategoryId=c.CategoryId
ORDER BY ProductId;
SELECT concat(ROUND (count (Gender)/(select count(Gender) from Users)*100, 2))
as Females ,'%'
From Users
Where Gender ='F';
select cardtype,avg(balance) from carddetails
where CVVNumber >333 and NameOnCard like '%e'
group by cardtype;
select p.productname,c.categoryname,(p.price * p.QuantityAvailable) as value_p
from products p
join categories c on p.categoryid=c.categoryid
where c.categoryname not in ('motors')
order by value_p desc
limit 1,1;
