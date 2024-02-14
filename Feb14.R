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
print(dataframe1)