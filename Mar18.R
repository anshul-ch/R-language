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

}