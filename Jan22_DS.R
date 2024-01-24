# Data Structures in R
# 1. Vector
# 2. Matrix
# 3. Array
# 4. List
# 5. Data Frame
# 6. Factor

# Vector, collection of similar data types, it can contain multiple types but all will be converted into single type.
# 1. Numeric Vector
# 2. Character Vector
# 3. Logical Vector
# 4. Complex Vector
# 5. Integer Vector
# 6. Raw Vector

a <- c(10,20,30,40,50)   # here c is used to create a vector, it's index start from 1.
class(a)                 # to check the class of a, it will give numeric as output.
typeof(a)               # to check the type of vector, it will give double as output.
b <- c("a", 10, 102L, 30+40i)         # it will take all the values as string, and it will give character as output.
class(b)                            # to check the class of b, it will give character as output.
typeof(b)                           # to check the type of vector, it will give character as output.

# priority order in Vector is character > complex > numeric > integer > logical.

d <- as.integer(c(10,20,30,40,50))    # to convert the vector into integer
class(d)                             # to check the class of d, it will give integer as output.
typeof(d)                            # to check the type of vector, it will give integer as output.
