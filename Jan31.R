########################################################################################################################
########################################################################################################################
######################################### PRACTICE QUESTIONS ###########################################################

# take user input of three different vecots and store them in a list. Find the class of list and vectors
# a <- as.integer(readline("Enter first value of v1: "))
# b <- as.integer(readline("Enter last value of v1: "))
# c <- as.numeric(readline("Enter first value of v2: "))
# d <- as.numeric(readline("Enter last value of v2: "))
# e <- as.character(readline("Enter first value of v3: "))
# f <- as.character(readline("Enter second value of v3: "))
# g <- as.character(readline("Enter third value of v3: "))
# #list1 <- list(vector1 = c(a:b), vector2 = c(c:d), vector3 = c(e,f,g))
# list2 <- list("Roll no" = c(a:b), "Name" = c(e,f,g), "Marks" = c(c:d))
# #print(list1)
# #print(class(list1))
# #print(class(list1$vector1))
# #print(list1$vector[2])
# print(list2)
# list2$Name[4] <- "f"                  # add new element to the list
# list2$Name <- list2$Name[-4]          # remove the element from list
# list2$`Roll no`[c(1,3)]               # to view only 1 and 3 index value
# print(list2$`Roll no`[c[-2]])         # will not show 2 index element

########################################################################################################################
########################################################################################################################

############################################# DATA FRAMES ##############################################################
# Data Frames are used for storing data tables. It is a list of vectors of equal length.
# syntax: data.frame(col1, col2, col3, col4, col5)
# col1, col2, col3, col4, col5 are vectors of equal length, and values are entered column wise.
# It basically represents a table with rows and columns similar to excel spreadsheet or SQL table.
# I doesn't allow NULL values by default.

v1 <- as.integer(c(1,2,3,4,5))
v2 <- as.character(c("A","B","C","D","E"))
v3 <- as.integer(c(90,80,70,60,50))
dataFrame1 <- data.frame("Rollno" = v1, "Name" = v2, "Marks" = v3)
print(dataFrame1)
dataFrame1$Marks[3] <- 75                       # update the value of 3rd index
dataFrame1$Name[c(1,4)]                        # view only 1 and 4 index value

## we can also create data frame by using edit function
# dataFrame2 <- edit(dataFrame1)
# print(dataFrame2)
# it will open a new window to enter the values

dataframe2 <- edit(dataFrame1)
print(dataframe2)
print(colnames(dataframe2))                       # to get column names of dataframe1
colnames(dataframe2)[3] <- "Student_Marks"        # to change the name of column