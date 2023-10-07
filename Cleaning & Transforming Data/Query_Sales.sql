SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] 
  , 
  [SalesOrderNumber] 
  , 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
Where 
  Left (OrderDateKey, 4) >= Year(
    GetDATE()
  ) -2 
order by 
  OrderDateKey ASC
