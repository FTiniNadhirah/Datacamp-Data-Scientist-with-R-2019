# Common type conversions
# It is often necessary to change, or coerce, the way that variables in a dataset are stored. This could be because of the way they were read into R (with read.csv(), for example) or perhaps the function you are using to analyze the data requires variables to be coded a certain way.
# 
# Only certain coercions are allowed, but the rules for what works are generally pretty intuitive. For example, trying to convert a character string to a number gives an error: as.numeric("some text").
# 
# There are a few less intuitive results. For example, under the hood, the logical values TRUE and FALSE are coded as 1 and 0, respectively. Therefore, as.logical(1) returns TRUE and as.numeric(TRUE) returns 1.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# We've loaded a dataset called students into your workspace. These data provide information on 395 students including their grades in three classes (in the Grades column, separated by /).
# 
# Use str() to preview students and see the class of each variable.
# Coerce the following columns:
# Grades to character
# Medu to factor (categorical variable representing mother's education level)
# Fedu to factor (categorical variable representing father's education level)
# Use str() again to see the changes to students.

# Preview students with str()
str(students)

# Coerce Grades to character
students$Grades <- as.character(students$Grades)

# Coerce Medu to factor
students$Medu <- as.factor(students$Medu)

# Coerce Fedu to factor
students$Fedu <- as.factor(students$Fedu)

# Look at students once more with str()
str(students)