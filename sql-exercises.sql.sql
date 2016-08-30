--#1
select CategoryName, Description
from Categories

--#2
select ContactName, CustomerID, CompanyName, city
from Customers
where City = 'London'

--#3   --NOT DONE!
select * 
from Suppliers
where ContactTitle in ('Marketing Manager','Sales Representative') AND Fax != 'NULL'

--#4
select CustomerID
from Orders
where RequiredDate between '1997-01-01' and '1997-12-31'

--#5
select CompanyName, ContactName
from Customers
where Country in ('Mexico','Sweden','Germany')

--6
select count(Discontinued) from Products

--7
select CategoryName, Description
from Categories
where CategoryName like 'Co%'

--8
select CompanyName, City, Country, PostalCode
from Suppliers
where Address like '%rue%'
order by Address

--9
select ProductID, Quantity as 'Quantity Purchased'
from [Order Details]
order by Quantity desc

--10
select CompanyName, ShipAddress, ShipCity, ShipPostalCode, ShipCountry, OrderDate
from Orders
left join Customers on Orders.CustomerID = Customers.CustomerID
where ShipVia = '1'

--11
select CompanyName, ContactName, ContactTitle, Region
from Suppliers

--12
select ProductName
from Products
where CategoryID = '2'

--13
select ContactName
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
where Orders.CustomerID is Null

--14
insert into Shippers (CompanyName) values('Amazon')

--15
update Shippers
set CompanyName = 'Amazon Prime Shipping'
where CompanyName = 'Amazon'

--16
select CompanyName, round(avg(Freight),0) as 'Freight Total'
from Orders
left join Shippers on orders.ShipVia = Shippers.ShipperID
group by CompanyName 

--17
select LastName + ',' + FirstName as DisplayName
from Employees

--18
insert into Customers(CustomerID, CompanyName, ContactName) 
values('HBOYO','HBOGO','Heriberto')
insert into Orders (CustomerID, ShipName) 
values('HBOYO','Grandmas Boysenberry Spread')

--19
delete from Customers
where CustomerID = 'HBOYO' 
delete from orders
where CustomerID = 'HBOYO' AND ShipName = 'Grandmas Boysenberry Spread'

--20
select UnitsInStock, ProductName
from Products
where UnitsInStock > 100





