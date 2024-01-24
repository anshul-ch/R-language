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

# Division of two vectors in R

a <- c(10,20,30,40,50)
b <- c(40,50,60,50,100)
d <- a %% b
print(d)

# Logical Operators in R.
# 1. > Greater than
# 2. < Less than
# 3. >= Greater than or equal to
# 4. <= Less than or equal to
# 5. == Equal to
# 6. != Not equal to

# In case of vector, it will compare the first element of first vector with first element of second vector, then second element of first vector with second element of second vector and so. It will check each and every element of both the vectors and will give the result in the form of vector. Containing result for each comparison.

a <- c(10,20,30,40,50)
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

