#1. Write a R program to check whether a year is leap year or no

year <- as.integer(readline("Input year: "))

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  cat(year, "is a leap year.")
} else {
  cat(year, "is not a leap year.")
}

#2. Write a R program to display the cube of the number up to a given integer.

n <- as.integer(readline("Input an integer: "))

for (i in 1:n) {
  cube <- i^3
  cat("Number is:", i, "and cube of the", i, "is:", cube, "\n")
}

#3. Write a R program to check Armstrong number of n digits. An Armstrong number is
#one whose sum of digits raised to the power three equals the number itself. Example

num <- as.integer(readline("Input an integer: "))
temp <- num
sum <- 0

# count digits
digits <- nchar(as.character(num))

while (temp > 0) {
  digit <- temp %% 10
  sum <- sum + digit^digits
  temp <- temp %/% 10
}

if (sum == num) {
  cat(num, "is an Armstrong number.")
} else {
  cat(num, "is not an Armstrong number.")
}
