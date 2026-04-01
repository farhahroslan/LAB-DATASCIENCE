#1. Write a R program to store 20 records of different range of exam score. Count the
#number of students based on the grade as in table below. Check whether the student
#pass the exam (>49) or not. Return TRUE or FALSE.
#Input vector: 33 24 54 94 16 89 60 6 77 61 13 44 26 24 73 73 90 39 90 54

# Input vector
scores <- c(33,24,54,94,16,89,60,6,77,61,13,44,26,24,73,73,90,39,90,54)

# Count students in each grade
A <- sum(scores >= 90 & scores <= 100)
B <- sum(scores >= 80 & scores <= 89)
C <- sum(scores >= 70 & scores <= 79)
D <- sum(scores >= 60 & scores <= 69)
E <- sum(scores >= 50 & scores <= 59)
F <- sum(scores <= 49)

# Display results
cat("A:", A, "\n")
cat("B:", B, "\n")
cat("C:", C, "\n")
cat("D:", D, "\n")
cat("E:", E, "\n")
cat("F:", F, "\n")

# Pass or Fail (>49)
pass <- scores > 49
print(pass)

#2. Store the student record below in a list. Gives names to the elements in the list. Find
#the highest, lowest, and average of exam score. 

# Create list
students <- list(
  Robert = 59,
  Hemsworth = 71,
  Scarlett = 83,
  Evans = 68,
  Pratt = 65,
  Larson = 57,
  Holland = 62,
  Paul = 92,
  Simu = 92,
  Renner = 59
)

# Convert to vector
scores2 <- unlist(students)

# Calculate values
highest <- max(scores2)
lowest <- min(scores2)
average <- mean(scores2)

# Find student names
highest_student <- names(scores2)[scores2 == highest]
lowest_student <- names(scores2)[scores2 == lowest]

# Display
cat("Highest Score:", highest, "\n")
cat("Lowest Score:", lowest, "\n")
cat("Average Score:", average, "\n")
cat("Student with highest score:", highest_student, "\n")
cat("Student with lowest score:", lowest_student, "\n")

#3. Append the record from Question 2 to add another exam score of different subjects.
#Count how many students fail the Chemistry and Physics exams (<=49) and who got
#the highest/best score for both subjects (Chemistry & Physics).

# Add new subjects
chemistry <- c(59,71,83,68,65,57,62,92,92,59)
physics <- c(89,86,65,52,60,67,40,77,90,61)

names(chemistry) <- names(students)
names(physics) <- names(students)

# Count fail (<=49)
fail_chem <- sum(chemistry <= 49)
fail_phy <- sum(physics <= 49)

# Highest scores
max_chem <- max(chemistry)
max_phy <- max(physics)

best_chem <- names(chemistry)[chemistry == max_chem]
best_phy <- names(physics)[physics == max_phy]

# Display
cat("Fail Chemistry:", fail_chem, "\n")
cat("Fail Physics:", fail_phy, "\n")

cat("Highest Chemistry Score:", max_chem, "\n")
cat("Top Student (Chemistry):", best_chem, "\n")

cat("Highest Physics Score:", max_phy, "\n")
cat("Top Student (Physics):", best_phy, "\n")
