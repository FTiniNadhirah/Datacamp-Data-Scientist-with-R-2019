# Working with dates
# Dates can be a challenge to work with in any programming language, but thanks to the lubridate package, working with dates in R isn't so bad. Since this course is about cleaning data, we only cover the most basic functions from lubridate to help us standardize the format of dates and times in our data.
# 
# As you saw in the video, these functions combine the letters y, m, d, h, m, s, which stand for year, month, day, hour, minute, and second, respectively. The order of the letters in the function should match the order of the date/time you are attempting to read in, although not all combinations are valid. Notice that the functions are "smart" in that they are capable of parsing multiple formats.
# 
# Instructions
# 0 XP
# Instructions
# 0 XP
# We have loaded a dataset called students2 into your workspace. students2 is similar to students, except now instead of an age for each student, we have a (hypothetical) date of birth in the dob column. There's another new column called nurse_visit, which gives a timestamp for each student's most recent visit to the school nurse.
# 
# Preview students2 with str(). Notice that dob and nurse_visit are both stored as character.
# Load the lubridate package.
# Print "17 Sep 2015" as a date.
# Print "July 15, 2012 12:56" as a date and time (note there are hours and minutes, but no seconds!).
# Coerce dob to a date (with no time).
# Coerce nurse_visit to a date and time.
# Use str() to see the changes to students2.

# Preview students2 with str()
str(students2)

# Load the lubridate package
library(lubridate)

# Parse as date
dmy("17 Sep 2015")

# Parse as date and time (with no seconds!)
mdy_hm("July 15, 2012 12:56")

# Coerce dob to a date (with no time)
students2$dob <- ymd(students2$dob)

# Coerce nurse_visit to a date and time
students2$nurse_visit <- ymd_hms(students2$nurse_visit)

# Look at students2 once more with str()
str(students2)