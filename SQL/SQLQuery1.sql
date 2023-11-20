Create Database task
Use task
Create table Employees
(
 Id int identity Primary Key,
 Name varchar(20) not null,
 Surname varchar(20) not null,
 Father varchar(20) not null,
 Salary int,
 Position varchar(20) not null
)
SELECT * FROM Employees
INSERT into Employees values('Nergiz', 'Azizova', 'Elshad', 2000, 'muhasib')
INSERT into Employees values('Nezrin', 'Ekberova', 'Shahid', 500, 'kassir')
INSERT into Employees values('Ekber', 'Zeynalli', 'Natiq', 800, 'satici')

Create table Position
(
 Id int identity Primary Key,
 Name varchar(15) not null
)
SELECT * FROM Position
INSERT into Position values('kassir')
INSERT into Position values('satici')
INSERT into Position values('muhasib')
Create table Branch
(
 Id int identity Primary Key,
 Name varchar(15) not null
)
SELECT * FROM Branch
INSERT into Branch values('Elmler')
INSERT into Branch values('Inshaatchilar')
INSERT into Branch values('Nerimanov')
Create table Product
(
 Id int identity Primary Key,
 Name varchar(20) not null,
 Purchase int,
 Sale int
)
SELECT * FROM Product
INSERT into Product values('Iphone13promax', 2500, 3000)
INSERT into Product values('Xiominot8', 500, 900)
INSERT into Product values('Samsungj5', 600, 1000)

Create table Sale
(
 Id int identity Primary Key,
 SaleTime Date,
 ProductId int References Product(Id),
 EmployeeId int References Employees(Id)
)
SELECT * FROM Sale
INSERT into Sale values('2-11-2023', 1, 3)
INSERT into Sale values('11-11-2023', 2, 2)
INSERT into Sale values('11-18-2023', 3, 1)
