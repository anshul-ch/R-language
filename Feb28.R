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
    return ("ENter a number greater than 1")
  }
  else{
    for(i in 2:(n/2)){
      if(n%%i==0){
        return (cat(n,"is not a prime number"))
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