# Conditional Statements

{
  n <- as.integer(readline("Enter a number : "))
  if(n>0){
    cat(n,"is a positive integer")
  }
  else if(n<0){
    cat(n,"is a negative number")
  }
  else{
    print(n)
  }
}


# Functions

EvenOdd <- function(n){
  if(n%%2==0){
    cat(n,"is an even number")
  }
  else{
    cat(n,"is an odd number")
  }
}
EvenOdd(14)


# Create a function to check if a number is prime or not.

primeOrNot <- function(n){
  if(n<=1){
    return ("Enter a number greater than 1")
  }
  else if (n == 2){
    return(cat(n, "is a prime number"))
  }
  else{
    for(i in 2:sqrt(n)){
      if(n%%i==0){
        return(cat(n,"is not a prime number"))
      }
    }
    return (cat(n,"is a prime number"))
  }
}
n <- as.integer(readline("Enter a number: "))
primeOrNot(n)



# Create a function to calculate area of circle and rectangle and perimeter of  rectangle

r <- as.integer(readline("Enter the radius of the circle: "))
l <- as.integer(readline("Enter the length of the rectangle: "))
b <- as.integer(readline("Enter the breadth of the rectangle: "))

areaCircle <- function(r){
  return (pi*r^2)
}
areaCircle(r)

areaRectangle <- function(l,b){
  return (l*b)
}
areaRectangle(l,b)

perimeterRectangle <- function(l,b){
  return (2*(l+b))
}
perimeterRectangle(l,b)



# Create a function to add two numbers.

add <- function(a,b){
  cat (sum(a,b))
}

a <- as.integer(readline("Enter the first number: "))
b <- as.integer(readline("Enter the second number: "))
add(a,b)


# Function to print sum of sqaures of first n natural numbers

sumOfSqaures <- function (n){
    return (n*(n+1)*(2*n+1)/6)
}
n1 <- as.integer(readline("Enter a number: "))
cat("Sum of squares of first",n,"natural numbers is",sumOfSqaures(n1))


################################################################################################

diabetes <- read.csv("~/Downloads/diabetes.csv")
View(diabetes)
str(diabetes)              # Structure of the dataset
head(diabetes)             # First 6 rows of the dataset
tail(diabetes)            # Last 6 rows of the dataset
summary(diabetes$DiabetesPedigreeFunction)         # Summary of the dataset

# convert the outcome column into a factor

diabetes$Outcome <- as.factor(diabetes$Outcome)
str(diabetes)

# replace 0 with No and 1 with Yes in the Outcome column
# aslo known as vairable encoding
diabetes$Outcome <- factor(diabetes$Outcome, levels = c(0,1), labels = c("No","Yes"))