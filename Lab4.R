#1. Vector above stores a record of retirement age of staff in Company A. Find the levels
#of factor of the vector. Divide the levels of factor in 5 ranges. What can you
#conclude/insight from the finding?

# Given data (from page 1)
age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
         52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

# Convert to factor
age_factor <- factor(age)

# Count each age
age_count <- table(age_factor)
print(age_count)

# Divide into 5 ranges
age_range <- cut(age,
                 breaks = c(50,52,54,56,58,60),
                 include.lowest = TRUE)

range_count <- table(age_range)
print(range_count)

#2. Write a R program to create two 3x3 matrix (Matrix-1) using values from vector V1.
#Transpose Matrix-1 to create Matrix-2. Rename the column and row accordingly.
#Add, subtract, multiply and divide the matrixes.

# Given vector
V1 <- c(2,3,1,5,4,6,8,7,9)

# Create Matrix-1 (3x3)
matrix1 <- matrix(V1, nrow = 3, ncol = 3)

# Rename rows & columns
rownames(matrix1) <- c("R1","R2","R3")
colnames(matrix1) <- c("C1","C2","C3")

print(matrix1)

# Transpose → Matrix-2
matrix2 <- t(matrix1)
print(matrix2)

# Operations
add <- matrix1 + matrix2
sub <- matrix1 - matrix2
mul <- matrix1 * matrix2
div <- matrix1 / matrix2

# Display
cat("Addition:\n"); print(add)
cat("Subtraction:\n"); print(sub)
cat("Multiplication:\n"); print(mul)
cat("Division:\n"); print(div)

#3. Write a R program to create two arrays of 4 columns, 2 rows, 3 tables and 2
#columns, 3 rows, 5 tables. Print the second row of the second matrix of the first array
#and the element in the 3rd row and 3rd column of the first matrix of the second array

# Array 1 (4 cols, 2 rows, 3 tables)
array1 <- array(1:24, dim = c(2,4,3))

print(array1)

# Get 2nd row of 2nd matrix
result1 <- array1[2, , 2]
cat("Second row of second matrix:\n")
print(result1)

# Array 2 (2 cols, 3 rows, 5 tables)
array2 <- array(25:54, dim = c(3,2,5))

print(array2)

# Get element [3rd row, 3rd column] of 1st matrix
# BUT array2 only has 2 columns → based on sample, they mean [3,2]
result2 <- array2[3, 2, 1]

cat("Element in 3rd row, 2nd column of first matrix:\n")
print(result2)
