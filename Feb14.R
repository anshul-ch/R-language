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

# add new data new data

m <- as.integer(readline("How many new rows? "))  # take the number of new rows from the user

# Create separate vectors for new data
new_rollno <- character(m)
new_name <- character(m)
new_cgpa <- numeric(m)

# Loop to take input for new data
for (i in 1:m) {
  new_rollno[i] <- readline(prompt = "Enter the rollno: ")
  new_name[i] <- readline(prompt = "Enter the name: ")
  new_cgpa[i] <- readline(prompt = "Enter the cgpa: ")
}

# Create a data frame for the new data
newdata <- data.frame("Rollno" = new_rollno, "Std_Name" = new_name, "CGPA" = new_cgpa)

# Combine the new data with the existing data frame
dataframe1 <- rbind(dataframe1, newdata)
dataframe2 <- rbind(dataframe1, newdata)
# Save the data frame into  new file.

write.csv(dataframe1, file = "dataframe1.csv")                                   # write the dataframe to a csv file
write.csv(dataframe1, file = "dataframe1.xlsx")                                 # write the dataframe to an excel file
write.table(dataframe1, file = "dataframe1.txt")                                # write the dataframe to a text file
write.table(dataframe1, file = "dataframe1.doc")                               # write the dataframe to a word file
write.csv(dataframe1, file = "dataframe1.xlsx", row.names = FALSE)             # without row numbers.
