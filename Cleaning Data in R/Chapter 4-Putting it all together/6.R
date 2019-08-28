# Clean up dates
# Now that the weather dataset adheres to tidy data principles, the next step is to prepare it for analysis. We'll start by combining the year, month, and day columns and recoding the resulting character column as a date. We can use a combination of base R, stringr, and lubridate to accomplish this task.
# 
# tidyr and dplyr are already loaded.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the stringr and lubridate packages.
# Use stringr's str_replace() to remove the Xs from the day column of weather3.
# Create a new column called date. Use the unite() function from tidyr to paste together the year, month, and day columns in order, using - as a separator (see ?unite if you need help).
# Coerce the date column using the appropriate function from lubridate.
# Use the code provided (select()) to reorder columns, saving the result to weather5.
# View the head of weather5.



# Load the stringr and lubridate packages
library(stringr)
library(lubridate)

# Remove X's from day column
weather3$day <- str_replace(weather3$day, "X","")
head(weather3[1:5])

# Unite the year, month, and day columns
weather4 <- unite(weather3, date, year, month, day, sep = "-")

head(weather4[1:5])

# Convert date column to proper date format using lubridates's ymd()
weather4$date <- ymd(weather4$date)

str(weather4[1:5])

# Rearrange columns using dplyr's select()
weather5 <- select(weather4, date, Events, CloudCover:WindDirDegrees)

# View the head of weather5
head(weather5)