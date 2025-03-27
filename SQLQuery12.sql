SELECT * FROM NaijaMart_Store

SELECT 
    [Order_ID], 
    CONVERT(DATE, [Date]) AS [Order_Date], 
    [Customer_ID], 
    [Product_Category], 
    [Product_Name], 
    [Quantity], 
    [Price], 
    [Total_Sale], 
    [Customer_Location]
FROM NaijaMart_Store;

     --Total Sales Revenue per Category

SELECT Product_Category, SUM(Total_Sale) AS Revenue
FROM NaijaMart_Store
GROUP BY Product_Category
ORDER BY Revenue DESC;

       --Best-Selling Product by Revenue and Quantity

SELECT Product_Name, SUM(Quantity) AS Total_Units_Sold, SUM(Total_Sale) AS Total_Revenue
FROM NaijaMart_Store
GROUP BY Product_Name
ORDER BY Total_Revenue DESC


      --Average Order Value Per Customer

SELECT Customer_ID, AVG(Total_Sale) AS Avg_Order_Value
FROM NaijaMart_Store
GROUP BY Customer_ID
ORDER BY Avg_Order_Value DESC;


