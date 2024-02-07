#Create a data frame as mentionede. Rollno Std Name gender CGPA
rollno <- c(1,2,10,11,12)
name <- as.character(c("Amit","Rahul","Neha","Raj","Riddhi"))
gender <- as.character(c("M","M","F","M","F"))
cgpa <- as.numeric(c(8.5,9.0,8.0,7.5,9.5))
dataframe1 <- data.frame("Rollno" = rollno, "Std_Name" =name, "Gender"=gender, "CGPA"=cgpa)
print(dataframe1)
print(dataframe1$Rollno[c(3,4,5)])
View(dataframe1)

# add new data to the dataframe by rbind and cbind

# add of new row into the data table
newdata <- data.frame("Rollno" = 22, "Std_Name" = "Riya","Gender" = "F","CGPA" = 7.0)
dataframe2 <- rbind(dataframe1,newdata)

# add new column to the dataframe
newcolumn <- as.character(c("Mumbai","Pune","Delhi","Kolkata","Chennai","Bangalore"))
dataframe2 <- cbind(dataframe2, "City" = newcolumn)
View(dataframe2)

# remove the row from the dataframe
dataframe2 <- dataframe2[-c(6),]   # it will remove the entire 6th row

# remove the column from the dataframe
dataframe2 <- dataframe2[,-c(4)]       # it will delete the entire 6th column

dataframe1[3,4]                        # it will give the value of 3rd row and 4th column
dataframe1[3,1] <- NA                  # it will replace the value of 3rd row and 1st column with NA
dataframe1$Rollno[3] <- 10             # it will replace the value of 3rd row and 1st column with 10
range(dataframe1$CGPA)                 # it will give the range of the CGPA
diff(range(dataframe1$CGPA))          # it will give the difference of the range of the CGPA

