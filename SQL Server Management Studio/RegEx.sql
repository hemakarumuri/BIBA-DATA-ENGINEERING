
/*Regular Expressions*/

use AdventureWorksLT2022;
select * from SalesLt.Product;

Select * from SalesLT.Product WHere Name like '%Bike%'

Select * from SalesLT.Product where ProductNUmber like '_R%'

Select * from SalesLT.Product Where ProductNUmber like '__-____-_'
--Above pattern with last char L or M
Select * from SalesLT.Product Where ProductNUmber like '__-____-[LM]'

--    Above pattern with last char between L and S
Select * from SalesLT.Product Where ProductNUmber like '__-____-[L-S]'

--    Above pattern with last char between L and R
Select * from SalesLT.Product Where ProductNUmber like '__-____-[L-R]'

-- [^]	Any single character not within the specified range and Above pattern with last char not between L and R

Select * from SalesLT.Product Where ProductNUmber like '__-____-[^L-R]'

--      Product number not starting with F
Select * from SalesLT.Product Where ProductNUmber like '[^F]%'

--     Product NUmber not starting between A to H. 
Select * from SalesLT.Product Where ProductNUmber like '[^A-H]%'

 --Data(Size) is Only One Character and Value is from A to Z
Select * from SalesLT.Product where Size like '[A-Za-z]'

-- Example 2 - Data(Size) is Two Characters and Values are from A to Z
Select * from SalesLT.Product where Size like '[A-Za-z]_'

-- Example 3 - Text(rowguid) Rows Starting with a Number
Select * from SalesLT.Product where rowguid like '[0-9]%'

-- Example 4 - Find a Number Pattern Product Number with 4th and 5th chars as numbers
Select * from SalesLT.Product where ProductNumber like '___[0-9][0-9]%'

-- Example 5 - Number(List Price) with two decimal places ending in 2 
Select * from SalesLT.Product where ListPrice like '%.[0-9]2'

-- Using the Not Character for Regex with T-SQL
-- Product Number - after 1st hyphen has either numbers or special characters
Select * from SalesLT.Product where ProductNumber like '__-[^A-Z]%'

-- Example - Name has No special characters
Select * from SalesLT.Product where Name like '%[^A-Z0-9]%'


