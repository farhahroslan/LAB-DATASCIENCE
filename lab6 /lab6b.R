# create data frame
name = c("Anastasia","Dima","Michael","Mathew","Laura","Kevin","Jonas")
score = c(12.5,9.0,16.5,12.0,9.0,8.0,19.0)
attempts = c(1,3,2,3,2,1,2)
df = data.frame(name,score,attempts)
View(df)

#add new column
qualify = c("yes","no","yes","no","no","no","yes")
df = cbind(df,qualify)
View(df)

#add new row
new_row = data.frame(name="Emily",score=14.5,attempts=1,qualify="yes")
df = rbind(df,new_row)
View(df)

#display structures, summary , no.row & columns
# Structure
str(df)

# Change data type
df$qualify = as.factor(df$qualify)

# Summary
summary(df)

# Number of rows and columns
dim(df)
