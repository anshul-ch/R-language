a <- 10
b <- 20
c <- a+b
print(c)   # to print the value of c
#print("Sum of a and b is: ", c)   # to print the message along with the value of c but it gives error as it only take either variable or single string
cat("Sum of ",a, "and ",b," is: ", c,"\n")   # to print the message along with the value of c
class(a)   # to check the class of a, it will take the class of only first element
class(b)   # to check the class of b
class(c)   # to check the class of c
a <- 10L   # to convert a into integer
# numeric will hold both integer anf float values but integer will hold only integer values.

d1 <- "ANshul"
class(d1)
name_1 <- "Allowed"
# _name1 <- "Not Allowed"
# 1name <- "Not Allowed"
# d1 + name_1     # it will give error as we can't add two strings, + only for numeric values
x <- T            # here boolean is called logical, T for TRUE and F for FALSE and it is case sensitive,
class(x)
y <- FALSE
class(y)
z <- 30+40i       # complex number, i for imaginary number and it is case sensitive.
class(z)


# Type ccasting / Type conversion
# as.numeric() / as.integer() / as.logical() / as.character() / as.complex()
# taking user input in R
# readline() / scan() / read.table() / read.csv() / readLines()

n1 <- readline("Enter a number: ")           # it will take the input as String
n2 <- readline("Enter another number: ")
n1 <- as.integer(n1)                                # to convert the string into integer
# we can also use n1 <- as.integer(readline("Enter a number: ")) to convert the string into integer
n2 <- as.numeric(n2)                                 # to convert the string into float or numeric
sum <- n1+n2                                        # here the priority is given to numeric over integer.
cat("Sum of ",n1, "and ",n2," is: ", sum,"\n")   # to print the message along with the value of sum
