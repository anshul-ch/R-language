########################################################################################################################
########################################################################################################################

########################################  PRACTICE QUESTIONS   #########################################################


# Write a program to take different data types from user and store them in a vector. FInd the class of vector.

a <- readline("Enter a char: ")
b <- as.integer(readline("Enter value: "))
c <- as.double(readline("Enter a double: "))
d <- as.numeric(readline("Enter value: "))
e <- as.logical(readline("Enter value boolean : "))
v1 <- c(a,b,c,d,e)
print(v1)
print(typeof(v1))

# write a program to take catagorical input
input <- c("A+", "A", "B+", "B", "C+", "C", "D+")
print(class(input))
f1 <- factor(input)
print(class(f1))
f2 <- factor(f1, levels = c("A+","B+","C+"))
print(f2)

# Create a matrix

x1 <-  as.integer(readline("Enter value x1: "))
x2 <-  as.integer(readline("Enter value x2: "))
y1 <-  as.integer(readline("Enter value y1: "))
y2 <-  as.integer(readline("Enter value y2: "))
m1 <- matrix(c(x1:x2), nrow = 2, ncol = 4, byrow = TRUE)
m2 <- matrix(c(y1:y2), nrow = 2, ncol = 4, byrow = TRUE)
m3 <- m1 + m2
print(m1)
print(m2)
print(m3)

########################################################################################################################
########################################################################################################################

# LIST in R
# difference between list and vector is that list can store different data types but vector can store only one data type, list can store multiple vectors as well

v1 <- c(1,2,3,"a",4.5)
print(v1)
print(class(v1))

list1 <- list(v1)
print(list1)
print(class(list1))

list2 <-  list(vector1 = c(1:5), vector2 = c("a","b","c"), vector3 = c(1.1,2.2,3.3))
print(list2)
list2[1]                # to call the first element of list.( first vector or first value based on list)
list2["vector1"]
list2[[1]]             # to call the first vector of list, it just displays the values not in the form of list
list2$vector1          # to call the first vector of list
class(list2$vector1)   # to check the class of vector1
print(list2$vector2[3])     # to print the third element of vector2
list2$ vector2[3] <- "d"     # to change the third element of vector2
list2$vector1[4] <- NULL     # to delete the fourth element of vector1
