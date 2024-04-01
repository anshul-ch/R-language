{
  string <- readline("Enter the string: ")
  cat(string)

  # print number of characters in the string
  nchar(string)

  # substring  from starting to end position
  substr(string, 3, 10)

  # split the string on the basis of character.
  strsplit(string, split = " ")

  # sprintf function
  name <- readline("Enter name: ")
  marks <- as.numeric(readline("Enter percentage: "))
  sprintf("%s scored %.2f in this Maths",name, marks)

  #grep function
  names <- c("Amit","Somil","Shreyansh","Raj","Abhinay")
  grep("a+", names)

  # Upper and Lower case
  toupper(string)
  tolower(string)
}