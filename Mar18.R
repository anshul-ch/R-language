# sqldf library usage

{
  library(readxl)
  dataset <- read_excel(file.choose())
  dataset <- dataset[c(-2,-6,-14)]
  colnames(dataset)[7] <- "Country"
  colnames(dataset)[9] <- "State"
  sum(is.na(dataset))

  library(sqldf)
  # sqldf is used to use any query and then query of SQL is written.
  View(sqldf("select * from dataset limit 10"))   # display first 10 records of the dataset.
  table(dataset$Segment)
  View(sqldf("Select * from dataset where Segment ='Consumer'"))
  View(sqldf("Select * from dataset where Segment ='Consumer' and State='Texas'"))
  View(sqldf("Select Segment, Country, City from dataset"))
  View(sqldf("Select Sales from dataset where Segment ='Consumer' and State='Texas'"))
  View(sqldf("Select distinct Segment from dataset"))
  View(sqldf("Select Sales from dataset where Segment ='Consumer' and State='Texas' ORDER BY Sales Desc"))
  View(sqldf("Select * from dataset where City like 'H%'"))         # starting with h.
  View(sqldf("Select * from dataset where City like 'H%N'"))        # starting with h and ending with n.

  # Aggregate functions:- sum, min, max, avg, count, group by,
  #                       order by, distinct, limit, where, like, in, between, is null, is not null.

  View(sqldf("select sum(sales) as Total_Sales from dataset"))      # overall sum of sales of dataset.
  View(sqldf("select sum(sales) as Total_Sales from dataset where Category='Office Supplies'"))
  View(sqldf("select sum(sales), max(sales) from dataset"))
  View(sqldf("select * from dataset group by Segment"))
  View(sqldf("Select Region from dataset
             where Profit == (select max(Profit) from dataset) "))   # region with max profit
  View(sqldf("Select Region, sum(Sales) from dataset GROUP BY Region"))          # Region with their total sales.
  View(sqldf("select distinct State from dataset order by State ASC"))      # unique state from dataset.

  # plot function

  plot(dataset$Sales)
  plot(dataset$Sales, pch = 13)               # pch to change the type of circle or bullet.
  plot(x =dataset$Profit, y=dataset$Sales, pch = 10,
       col = "red", xlab = "Profit", ylab = "Total Sales")

  plot(x =dataset$Profit, y=dataset$Sales, pch = 10,
       col = "red", xlab = "Profit",
       ylab = "Total Sales", xlim = c(0,3000))   # value of x axis only between 0 and 3000

  plot(x =dataset$Profit, y=dataset$Sales, pch = 10,
       col = "red", xlab = "Profit",
       ylab = "Total Sales", ylim = c(0,1200))  # value of y axis only between 0 and 1200

  plot(x =dataset$Profit, y=dataset$Sales, pch = 10,
       col = "red", xlab = "Profit",
       ylab = "Total Sales", main = "Sales VS Profit")  # main to give name to plot
}