# Apply functions

matrix1 <- matrix(c(1:30), nrow = 3, ncol = 10, byrow = TRUE)

# Sum across rows
apply(matrix1, 1, sum)

# Mean across columns
apply(matrix1,2, mean)

# Default datasets in R:

library(help="datasets")      # get inbuilt datasets in R.

dataset1 <- iris              # import iris dataset into dataset1 object

# lapply()
dataset1 <- mtcars
View(mtcars)
lapply(dataset1, table)          # frequency of values in the columns.

#sapply()
dataset2 <- mtcars
sapply(dataset2, mean)          # Similar to lapply but focus more on Statistical function.


# tapply()
library(caret)
dataset3 <- diamonds
View(dataset3)
table(dataset3$cut)

# tapply to find the average price of Fair cut
tapply(dataset3$price, dataset3$cut, mean)


library(dplyr)
dataset1 <- read.csv(file.choose())
View(dataset1)

View(dataset1 %>% filter(is.na(age)))       # rows where there is a null value in age column
View(max(dataset1$land_value))              # max of land_value
diew(Vataset1 %>% filter(land_value>250000))    # rows where land_value > 2,50,000
View(select(dataset1, starts_with("bath")))   # column name starts with bath
View(summarise(dataset1, mean= mean(land_value)))   # mean value of land_value
View(select(dataset1, contains("liv")))     # columns name that contain liv

View(mutate(dataset1, new_age=age+30))          # add 30 to the age and put into new column new_age


library(tidyr)

# take mean of all age values withour NA values
mean_age <- as.integer(mean(dataset1$age, na.rm = TRUE))

# Replace NA values in the age column with the mean age
dataset1 <- dataset1 %>% mutate(age = replace_na(age, mean_age))
View(dataset1)
# or
dataset1$age <- ifelse(is.na(dataset1$age),mean(dataset$age, na.rm=TRUE), dataset1$age)


# display the price of the house on basis on bathrooms available
table(dataset1$bathrooms)
sort(tapply(dataset1$price, dataset1$bathrooms, mean), decreasing = TRUE)  # in descending order
