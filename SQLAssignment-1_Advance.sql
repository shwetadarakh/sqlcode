
-------Advance queries 1--------
---full outer---
SELECT * FROM PRODUCT_Table full outer JOIN [Brands].[dbo].[ITEMS_Table] 
ON PRODUCT_Table.Product_Id=[Brands].[dbo].[ITEMS_Table].Item_Id

----left join----
SELECT * FROM PRODUCT_Table left  JOIN [Brands].[dbo].[ITEMS_Table] 
ON PRODUCT_Table.Product_Id=[Brands].[dbo].[ITEMS_Table].Item_Id

-----Inner join----
SELECT * FROM PRODUCT_Table Inner join [Brands].[dbo].[ITEMS_Table] 
ON PRODUCT_Table.Product_Id=[Brands].[dbo].[ITEMS_Table].Item_Id

-----Advance queries 2-------
----right join----
SELECT * FROM PRODUCT_Table right JOIN [Brands].[dbo].[ITEMS_Table] 
ON PRODUCT_Table.Product_Id=[Brands].[dbo].[ITEMS_Table].Item_Id

-----cross join----
SELECT * FROM PRODUCT_Table cross JOIN [Brands].[dbo].[ITEMS_Table] 

----advance query3  Find the item_description and Product having the gross sales of 13,320.00--

SELECT [Brands].[dbo].[ITEMS_Table].Item_description,Product FROM PRODUCT_Table left  JOIN [Brands].[dbo].[ITEMS_Table] 
ON PRODUCT_Table.Product_Id=[Brands].[dbo].[ITEMS_Table].Item_Id where 
PRODUCT_Table.Gross_Sales=13320

---4)   Split the Item_description Column into Columns Item_desc1 and Item_desc2--
select 
SUBSTRING(Item_description,1,CHARINDEX(' ',Item_description)-1) as Item_desc1,
SUBSTRING(Item_description,CHARINDEX(' ',Item_description)+1,len(Item_description)) as Item_desc2
from [Brands].[dbo].[ITEMS_Table]

----