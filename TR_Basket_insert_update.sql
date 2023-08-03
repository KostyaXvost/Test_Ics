use dbo
go
Create trigger TR_Basket_insert_update
ON Basket
after insert
as
if (select count(ID_SKU) from inserted) >= 2
Update Basket
set Basket.DiscountValue = Value * 0.05;
else 
Update Basket
set DiscountValue = 0;

