use dbo
GO
Create function Get_SKU_Price 
(@ID_SKU int)
returns decimal(18, 2)
Begin
Declare
@SumVAL int,
@SumQuan int,
@Summ decimal(18, 2)
 set @SumVAL = (select SUM(dbo.Basket.Value) from Basket
 where ID_SKU = @ID_SKU)
 set @SumQuan = (select SUM(dbo.Basket.Quantity)  from Basket
 where ID_SKU = @ID_SKU)
 set @Summ = @SumVAL/@SumQuan
 return   @Summ
 END