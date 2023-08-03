Create database dbo
use dbo

Create table SKU (
ID int Identity primary key,
Code as 's' + ID Unique,
Name varchar(30) 
)



Create table Family (
ID int Identity primary key,
SurName varchar(30),
BudgetValue int
)

Create table Basket (
ID int Identity primary key,
ID_SKU int foreign key references dbo.SKU (ID),
ID_Family int foreign key references dbo.Family (ID),
Quantity int check (Quantity >= 0),
Value int check (Value >= 0),
PurchaseDate date default current_timestamp,
DisountValue int
)

 
