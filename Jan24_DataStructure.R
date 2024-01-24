# Data Structures in R
# 1. Vector
# 2. Matrix
# 3. Array
# 4. List
# 5. Data Frame
# 6. Factor


# in arithmetic operations of vector, if any of the vector is shorter than the other, then it will repeat the values of shorter vector to make it equal to the longer vector. And it will give warning message. For correct operation, both the vectors should be of same length or multiple of each other.

# Addition of two vectors in R

a <- c(10,20,30)
b <- c(40,50,60,50,100)
d <- a + b
print(d)

# Subtraction of two vectors in R

a <- c(10,20,30,40,50)
b <- c(40,50,60,50,100)
d <- a - b
print(d)

# Multiplication of two vectors in R

a <- c(10,20,30,40,50)
b <- c(40,50,60,50,100)
d <- a * b
print(d)

# Division of two vectors in R

a <- c(10,20,30,40,50)
b <- c(40,50,60,50,100)
d <- a / b
print(d)

# Modulus of two vectors in R

a <- c(10,20,30,40,50)
b <- c(40,50,60,50,100)
d <- a %% b
print(d)

# User Input in vector in R.
# take multiple values from user and store them in a vector.

a <- readline("Enter the first value: ")
b <- readline("Enter the second value: ")
c <- readline("Enter the third value: ")
v1 <- as.integer(c(a,b,c))
print(v1)


# Logical Operators in R.
# 1. > Greater than
# 2. < Less than
# 3. >= Greater than or equal to
# 4. <= Less than or equal to
# 5. == Equal to
# 6. != Not equal to

# In case of vector, it will compare the first element of first vector with first element of second vector, then second element of first vector with second element of second vector and so. It will check each and every element of both the vectors and will give the result in the form of vector. Containing result for each comparison.

a <- c(10,20,30,40,100)
b <- c(40,50,60,50,100)
d <- a > b
e <- a < b
f <- a >= b
g <- a <= b
h <- a == b
i <- a != b
print(d)
print(e)
print(f)
print(g)
print(h)
print(i)

# BY deafulat the seprator in R is space. But we can change it to any other character like comma, semicolon, etc.
# we can do this by using sep = "" argument in print() function.

a <- c(10,20,30,40,100)
b <- c(40,50,60,50,100)
cat("a is ", a, "b is ", b, sep = "@")

# print take only one argument at a time. So if we want to print multiple arguments at a time, then we have to use cat() function.

# paste function is also used to print multiple vectors at a time. But it will print the vectors in the form of list multiple times and \n is treated as a character not a new line.

# In paste0 there is no separator between the vectors.

#####################################################################################################################
#####################################################################################################################

# Factors in R
# Factors are used to represent categorical values
# Categorical Values: where the values can be divided into groups or categories.
# Factors are created using factor() function
# Syntax: factor(vector, levels = c("level1", "level2", "level3", "level4", "level5"))

bloodgoup <- c("A+", "B+", "O+", "AB+","A-","O-","B-")   # here it is vector
b1 <- factor(bloodgoup)                   # here it is factor
class(b1)
b2 <- factor(bloodgoup, levels = c("A+", "B+", "O+"))  # the rest of the values will be treated as NA.

# labels are used to give the name to the levels of the factor. It can be done by using labels argument in factor() function. It checks the levels of the factor and then assign the labels to the levels.If any label is not assigned to any level, then it will be treated as NA.

b3 <- factor(c("M","F","M","M","O"), levels = c("M", "F"), labels = c("0","1"))  # here we have assigned 0 to M and 1 to F. O will be treated as NA.

###################################################################################################################
###################################################################################################################

# Matrix in R
# Matrix is a two dimensional data structure in R.
# It is created using matrix() function.
# Syntax: matrix(vector, nrow = number of rows, ncol = number of columns, byrow = TRUE/FALSE)
# byrow = TRUE means the values will be filled row wise.
# byrow = FALSE means the values will be filled column wise.
# by default byrow = FALSE

matrix1 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)
# if continous values are there then we can enter it is matrix(1:6)
print(matrix1)

# take matrix as input from user.
x1 <- as.integer(readline("Enter the first value: "))
x2 <- as.integer(readline("Enter the second value: "))
y1 <- as.integer(readline("Enter the third value: "))
y2 <- as.integer(readline("Enter the fourth value: "))
matrix2 <- matrix(c(x1:x2), nrow = 2, ncol = 2, byrow = TRUE)
matrix3 <- matrix(c(y1:y2), nrow = 2, ncol = 2, byrow = TRUE)
matrix4 <- matrix2 + matrix3
print(matrix4)

###################################################################################################################
###################################################################################################################