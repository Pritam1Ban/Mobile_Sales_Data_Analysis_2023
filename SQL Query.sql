select * from mobile_analysis;

-- Q1: Check Mobile Features and Price List.

Select Phone_name, Price From Mobile_Analysis;

-- Q2: Find out the price of 5 most Expensive Phones.

Select Phone_Name, Price From mobile_analysis Order BY Price Desc Limit 5;

-- Q3: Find out the price of 5 most Cheap Phones.

Select Phone_Name, Price From mobile_analysis Order BY Price Asc Limit 5;

-- Q4: List of Top 5 Samsung Phones with Prices and All Fetures.

Select * From mobile_analysis Where Phone_Name Like 'Sam%%';
Select * From mobile_analysis Where Brands Like 'Sam%%';
Select Phone_Name, Price From mobile_analysis Where Phone_Name Like 'Sam%%' Order BY Price Desc Limit 5;
Select Phone_Name, Price From mobile_analysis Where Phone_Name Like 'Sam%%' Order BY Price Asc Limit 5;
Select Phone_Name, Price From mobile_analysis Where Phone_Name Like 'Sam%%' Order BY Price Desc Limit 5;

-- Q5: Must Have 'Android Phone' list, then 'Top 5' 'High Price' 'Android Phones'.

Select * From mobile_analysis Where Operating_System_Type = 'Android' order by Price Desc limit 5; 

-- Q6: Must have 'Android' Phone List to get Top 5 Lower Price Android Phones.

Select * From mobile_analysis Where Operating_System_Type = 'Android' Order By Price Asc limit 5;

-- Q7: Must have iOS Phone list to get top 5 High Price iOS phone list.

Select * From mobile_analysis Where Operating_System_Type = 'IOS' Order By Price DESC limit 5;

-- Q8: Must have iOS Phone list to get top 5 Low Price iOS phone list.

Select * From mobile_analysis Where Operating_System_Type = 'IOS' Order By Price ASC limit 5;

-- Q9: Write a query which phone support 5G, and also Top 5 High Price phone with 5G support.

Select * From mobile_analysis Where 5G_Availability = 'Yes';
Select * From mobile_analysis Where 5G_Availability = 'Yes' Order By Price Desc Limit 5;

-- Q10: Total price of all mobile is to be found with brand name.

Select*FROM mobile_analysis;
SELECT Brands, Count(Phone_name) From mobile_analysis GROUP BY Brands;
Select Brands, SUM(Price) From mobile_analysis GROUP BY Brands;

Select AVG(Price) From mobile_analysis;






