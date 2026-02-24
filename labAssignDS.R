library(dplyr)
library(tidyr)
library(lubridate)
library(stringr)

# Load data
nike <- read.csv("Nike_Sales_Uncleaned.csv", stringsAsFactors = FALSE)

# ========================
# 1 Check Missing Values
# ========================

colSums(is.na(nike))


# ========================
# 2 Remove Duplicates
# ========================

nike <- distinct(nike)

sum(duplicated(nike))


# ========================
# 3 Handle Missing Values
# ========================

nike$Size[is.na(nike$Size)] <- "Unknown"

nike$Units_Sold[is.na(nike$Units_Sold)] <- median(nike$Units_Sold, na.rm=TRUE)

nike$MRP[is.na(nike$MRP)] <- median(nike$MRP, na.rm=TRUE)

nike$Discount_Applied[is.na(nike$Discount_Applied)] <- 0


# ========================
# 4 Fix Date Format
# ========================

nike$Order_Date <- parse_date_time(
  nike$Order_Date,
  orders=c("ymd","dmy","mdy","Y/m/d")
)

nike <- drop_na(nike, Order_Date)


# ========================
# 5 Final Check
# ========================

colSums(is.na(nike))

sum(duplicated(nike))

str(nike)


# ========================
# 6 Save Clean Data
# ========================

write.csv(nike,"Nike_Sales_Cleaned.csv",row.names=FALSE)