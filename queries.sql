-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select 
    p.productname,
    c.CategoryName
from product as p
join category as c on c.id = p.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select
    od.orderid,
    o.ShipName
from orderdetail as od
left join [order] as o on o.id = od.orderid
where o.shippeddate < '2020-09-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select
    *
from [order] as o
join orderdetail as od on od.OrderId = o.id
where o.id = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
    o.id,
    c.CompanyName,
    e.FirstName || ' ' || e.LastName
from [order] as o
join employee as e on e.id = o.EmployeeId
join customer as c on c.id = o.CustomerId