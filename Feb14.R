# Create a datagframe,using roll no, name and cgpa
# Take user input, Use array.
# Display the dataframe.
# take input from user

rollno <- c()                          # create an empty vector
name <- c()
cgpa <- c()

for (i in 1:5) {                                           # loop to take the input from the user
  rollno[i] <- readline(prompt = "Enter the rollno: ")     # take input and store it in roll no array/vector.
  name[i] <- readline(prompt = "Enter the name: ")         # take input and store it in name array/vector.
  cgpa[i] <- readline(prompt = "Enter the cgpa: ")         # take input and store it in cgpa array/vector.
}

rollno <- as.numeric(rollno)                                # convert the rollno array/vector to numeric
cgpa <- as.numeric(cgpa)                                    # convert the cgpa array/vector to numeric
dataframe1 <- data.frame("Rollno" = rollno, "Std_Name" =name, "CGPA"=cgpa)       # create a dataframe

# add new data to the dataframe by rbind and cbind

newdata <- data.frame("Rollno" = 22, "Std_Name" = "Riya","CGPA" = 7.0)           # create a new row
dataframe1 <- rbind(dataframe1,newdata)                                          # add the new row to the dataframe

# add new column to the dataframe
city <- c("Mumbai","Pune","Delhi","Kolkata","Chennai","Bangalore")
dataframe1 <- cbind(dataframe1, "City" = city)                                  # add the new column to the dataframe
print(dataframe1)

write.csv(dataframe1, file = "dataframe1.csv")                                  # write the dataframe to a csv file
write.csv(dataframe1, file = "dataframe1.xlsx")                                 # write the dataframe to an excel file
write.table(dataframe1, file = "dataframe1.txt")                                # write the dataframe to a text file
write.table(dataframe1, file = "dataframe1.doc")                               # write the dataframe to a word file