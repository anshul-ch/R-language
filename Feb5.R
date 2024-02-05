# create a data frame of company names, price and country.
n1 <- as.character(readline("Enter name p1 : "))
n2 <- as.character(readline("Enter p2 : "))
n3 <- as.character(readline("Enter p3 : "))
v1 <- as.numeric(readline("Enter v1 : "))
v2 <- as.numeric(readline("Enter v2 : "))
v3 <- as.numeric(readline("Enter v3 : "))
c1 <- as.character(readline("Enter c1"))
c2 <- as.character(readline("Enter c2"))
c3 <- as.character(readline("Enter c3"))
name <- c(n1,n2,n3)
price <- c(v1,v2,v3)
country <-c(c1,c2,c3)
dataframe1 <- data.frame("Name" = name, "Country"  =country, "Price" = price)
print(dataframe1)
print(dataframe1$Price)
dataframe1 <- edit(dataframe1)
colnames(dataframe1)[1] <- "Product_Name"
colnames(dataframe1) <- c("Name","Origin", "Original_Price")
summary(dataframe1)
View(dataframe1)
str(dataframe1)

# Columns are called as Variables in DataSet.
# Rows are called as Observations or Records in DataSet.

# to import a dataset (Excel file) in R.

library(readxl)    # to import readxl library
d1 <- read_excel("//home//anshul//Downloads//annual.xlsx")  # reading a excel file
