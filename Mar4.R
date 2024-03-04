# Create a dataframe of Rollno name marks CGPA with user input and use functions

 dataframe1 <- function(n) {
     rollno <- c()
     name <- c()
     marks <- c()
     cgpa <- c()
     for(i in 1:n) {
      rollno[i] <- as.integer(readline(prompt = "Enter the rollno: "))
      name[i] <- readline(prompt = "Enter the name: ")
      marks[i] <- as.numeric(readline(prompt = "Enter the marks: "))
      cgpa[i] <- as.numeric(readline(prompt = "Enter the cgpa: "))
    }
    student_data <- data.frame("Rollno"= rollno,"Name" = name,"Marks"= marks,"CGPA"= cgpa)
    return(student_data)
  }

  m <- as.integer(readline(prompt = "Enter the number of students: "))
  student_data <- dataframe1(m)
  print(student_data)

{
  ibm <- read.csv(file.choose())      # to import the dataset
  View(ibm)                           # to view the dataset
  str(ibm)                            # structure of dataset
  head(ibm,10)                        # first 10 rows
  tail(ibm, 7)                        # last 7 rows
  class(ibm$Attrition)                # datatype of attrition column
  ibm$Attrition <- factor(ibm$Attrition, levels = c("Yes","No"), labels = c("1","0"))   # convert into a factor
  table(ibm$Attrition)                # count no of 1 and 0
  sum(is.na(ibm))                     # check for missing values
  colnames(ibm)[1] <- "Emp_Age"       # change the name of column 1.
  table(ibm$Over18)                   # get the count of each category
  table(ibm$OverTime)                 # get the count of each category
}
