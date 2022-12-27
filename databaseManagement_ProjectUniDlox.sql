--Project UniDlox Clothing Store

--Database Management
USE UniDlox


--Display material purchases which occurs in november and staff id is an even number
SELECT
	Material_Transactions.staff_id,
	Staffs.[name],
	Staffs.[address],
	Suppliers.[name],
	Material_Transactions.qty
FROM 
	Material_Transactions JOIN Staffs ON Material_Transactions.staff_id = Staffs.id
	JOIN Suppliers ON Material_Transactions.supplier_id = Suppliers.id
WHERE
	MONTH(Material_Transactions.transaction_date) = 11
	AND
	CAST(RIGHT(Material_Transactions.staff_id, 1) AS INT) % 2 = 0


--Display staff id, customer name, total sales price, whose customer name contais m and total sales is greater than 2000000
SELECT
	Transaction_Details.id,
	Customers.[name],
	Transaction_Details.qty,
	CAST(SUM(Transaction_Details.qty * Clothes.price) AS VARCHAR) AS [TOTAL_SALES_PRICE]
FROM 
	Transaction_Details JOIN Customers ON Transaction_Details.customer_id = Customers.id
	JOIN Clothes ON Transaction_Details.cloth_id = Clothes.id
WHERE
	(Clothes.price*Transaction_Details.qty > 200000)
	AND
	Customers.[name] LIKE '%m%'
GROUP BY
	Transaction_Details.id,
	Transaction_Details.qty,
	Customers.[name]


--Display month, transaction count, material sold whose staff age between 25 and 30
SELECT 
	DATENAME(MONTH, DATEADD(MONTH, 12, Material_Transactions.transaction_date))	As Transaction_Date,
	CAST(COUNT(Material_Transactions.id) AS VARCHAR) AS Transaction_Count,
	Material_Transactions.qty
FROM
	Material_Transactions JOIN Materials ON Material_Transactions.material_id = Materials.id
	JOIN Staffs ON Material_Transactions.staff_id = Staffs.id
WHERE
	Staffs.age BETWEEN 25 AND 30 AND Materials.price > 150000
GROUP BY 
	Material_Transactions.transaction_date,
	Material_Transactions.qty


--Display customer name, customer emain, cloth bought count, total qty, total price, which payment using Crypto Currency, Cash and Shopee-Pay
SELECT
	LOWER(Customers.[name]) AS Customer_Name,
	Customers.email,
	Customers.[address],
	Clothes.[name],
	Transaction_Details.qty,
	'IDR ' + CAST(SUM(Transaction_Details.qty*Clothes.price) AS VARCHAR) AS Total_Price
FROM 
	Transaction_Details JOIN Customers ON Transaction_Details.customer_id = Customers.id
	JOIN Clothes ON Transaction_Details.cloth_id = Clothes.id
	JOIN Payments ON Transaction_Details.payment_id = Payments.id
WHERE
	Payments.payment_type IN ('Cash', 'CryptoCurrency', 'Shopee-Pay')
GROUP BY
	Customers.[name],
	Customers.email,
	Customers.[address],
	Clothes.[name],
	Transaction_Details.qty


--Display material transaction whose staff salary above average staff salary and staff gender is male and born before 1996
SELECT 
	Material_Transactions.id,
	Material_Transactions.transaction_date,
	Staffs.[name],
	Payments.payment_type
FROM 
	Material_Transactions JOIN Staffs ON Material_Transactions.staff_id = Staffs.id
	JOIN Payments ON Material_Transactions.payment_id = Payments.id,
		(
			SELECT AVG(Staffs.salary) AS AverageSalary
			FROM Staffs
			WHERE Staffs.id != 'SF010'
		)ST
WHERE
	Staffs.gender LIKE 'Male'
	AND
	Staffs.salary > ST.AverageSalary
	AND
	Staffs.age > (YEAR(GETDATE()) - YEAR('1996'))
