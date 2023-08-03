use dbo
GO
create procedure usp_MakeFamilyPurchase
@FamilySurName varchar(255)
as
Declare
@Family_ID Int

if (Select SurName from Family where Family.SurName = @FamilySurName) != null 

set @Family_ID = (Select Family.ID from Family where Family.SurName = @FamilySurName);
else
print 'Не найдено семьи с такой фамилией'

if @Family_ID != null
Update Family
set BudgetValue = (Select sum(Basket.Value) from Basket, Family where Basket.ID_Family = Family.ID);




