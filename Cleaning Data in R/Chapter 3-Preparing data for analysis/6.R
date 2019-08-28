# Finding and replacing strings
# The stringr package provides two functions that are very useful for finding and/or replacing patterns in strings: str_detect() and str_replace().
# 
# Like all functions in stringr, the first argument of each is the string of interest. The second argument of each is the pattern of interest. In the case of str_detect(), this is the pattern we are searching for. In the case of str_replace(), this is the pattern we want to replace. Finally, str_replace() has a third argument, which is the string to replace with.
# 
# > str_detect(c("banana", "kiwi"), "a")
# [1]  TRUE FALSE
# > str_replace(c("banana", "kiwi"), "a", "o")
# [1] "bonana" "kiwi"
# The data.frame students2 is already available for you in the workspace. stringr is already loaded. students3 is a copy of it for you to work on so you can always start from scratch if you happen to make a mistake.
# 
# Instructions
# 100 XP
# The students2 dataset from earlier in the chapter has been loaded for you again.
# 
# Look at the head() of students3 to remind yourself of how it looks.
# Detect all dates of birth (dob) in 1997 using str_detect(). This should return a vector of TRUE and FALSE values.
# Replace all instances of "F" with "Female" in students3$sex.
# Replace all instances of "M" with "Male" in students3$sex.
# View the head() of students2 to see the result of these replacements.

# Copy of students2: students3
students3 <- students2

# Look at the head of students3
head(students3)

# Detect all dates of birth (dob) in 1997
str_detect(students3$dob, "1997")

# In the sex column, replace "F" with "Female" ...
students3$sex <- str_replace(students3$sex, "F", "Female")

# ... and "M" with "Male"
students3$sex <- str_replace(students3$sex, "M", "Male")

# View the head of students3
head(students3)