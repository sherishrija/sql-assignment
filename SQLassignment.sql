
Create table Customers

(
  id int primary key,
  FirstName nvarchar(40) not null,
  LastName nvarchar(40),
  City nvarchar(40),
  Country nvarchar(40),
  Phone nvarchar(20),
  )
  insert into Customers values(1,'Keerthanaa','Daffodil','Hyderabad','India',1233455667)
  insert into Customers values(2,'Naira','Raya','Sangareddy','Germany',1233445566)
  insert into Customers values(3,'Sai','Teja','Zaheerabad','Germany',122343455)
  select *from Customers

   Create table Orde
   (
     id int primary key,
	 OrderDate nvarchar(13),
	 OrderNumber nvarchar(10),
	 Customerid int references Customer(id) ,
	 TotalNumber decimal(12,2)
	 )
	 insert into Orde values(897,2022-10-12,25,1,8.23)
	 insert into Orde values(789,2022-09-14,20,2,12.20)
	 insert into Orde values(876,2022-08-15,13,3,5.73)
	 select *from Orde

	 Create table 
	 (
	   id int primary key,
	   ProductName nvarchar(50),
	   Unitprice decimal(12,2),
	   Package nvarchar(30),
	   )
	   insert into Product values(11,'Milk',8.24,'jersey')
	   insert into Product values(12,'Apple',12.34,'Simla')
	   insert into Product values(13,'Rose',9.21,'flower')
	   select *from Product

	   Create table OrderItem
	   (
	     id int primary key,
		 OrderId int references Orde(id),
		 ProductId int references Product(id),
		 UnitPrice decimal(12,2),
		 Quantity int
		 )

		 insert into OrderItem values(101,897,11,10.23,30)
		 insert into OrderItem values(102,789,12,8.79,43)
		 insert into OrderItem values(103,876,13,7.23,22)
		 select *from OrderItem

		 select * from Customer

		 select * from Customer where Country like 'A%' or Country like 'I%'

		 select * from Customer where FirstName like '__i%'

		 select * from Customer where Country like 'Germany'

		 select FirstName +' '+LastName as Name from Customer
		  
		 select * from OrderItem;