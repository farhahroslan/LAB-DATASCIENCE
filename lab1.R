#1.Write a R code to create a sequence of 20 numbers. The program will calculate and
#display the square of the number sequence.
# Create sequence of 20 numbers
numbers <- 1:20

# Calculate square of each number
squares <- numbers^2

# Display results
print(numbers)


#2. Given two variables, num1=0.956786 and num2=7.8345901. Write a R code to
#display the num1 value in 2 decimal point number, and num2 value in 3 decimal point
#number (clue: use function round()).

# Given variables
num1 <- 0.956786
num2 <- 7.8345901

# Round values
num1_rounded <- round(num1, 2)
num2_rounded <- round(num2, 3)

# Display results
print(num1_rounded)
print(num2_rounded)


#3. Write a R code that retrieves from the user the radius value of a circle. The program
#will calculate and display the circle’s area.

# Get radius from user
radius <- as.numeric(readline(prompt = "Enter radius: "))

# Calculate area
area <- pi * radius^2

# Display result
cat("Area of the circle is:", area)