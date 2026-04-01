#1. Write an R program to get weight and height to calculate BMI and display the status
#as the category below

# Input from user
weight <- as.numeric(readline("Enter weight (kg): "))
height <- as.numeric(readline("Enter height (m): "))

# Calculate BMI
bmi <- weight / (height^2)

# Display category (TRUE/FALSE)
cat("Underweight:", bmi <= 18.4, "\n")
cat("Normal:", bmi >= 18.5 & bmi <= 24.9, "\n")
cat("Overweight:", bmi >= 25.0 & bmi <= 39.9, "\n")
cat("Obese:", bmi >= 40.0, "\n")

#2. Write an R program to get two strings from user and compare if the inputs were the
#same (case-insensitive).

# Input strings
str1 <- readline("Enter string 1: ")
str2 <- readline("Enter string 2: ")

# Convert to lowercase
str1_lower <- tolower(str1)
str2_lower <- tolower(str2)

# Compare
result <- str1_lower == str2_lower

# Output
cat("This program compare 2 strings. Both inputs are similar:", result)

#3. Write an R program that retrieves from the user the name and phone number. The
#program will display the name (replace each lowercase letter with the same
#uppercase letter) and only display the first 3 digits and the last 4 digits from the
#phone number.

# Input
name <- readline("Enter your name: ")
phone <- readline("Enter your phone number: ")

# Convert name to uppercase
name_upper <- toupper(name)

# Extract phone parts
first3 <- substr(phone, 1, 3)
last4 <- substr(phone, nchar(phone)-3, nchar(phone))

# Output
cat("Hi,", name_upper, ". A verification code has been sent to",
    first3, "-xxxxx", last4)