# Factorize, round two
# In the last exercise you learned how to import a data file using the command read_sav(). With SPSS data files, it can also happen that some of the variables you import have the labelled class. This is done to keep all the labelling information that was originally present in the .sav and .por files. It's advised to coerce (or change) these variables to factors or other standard R classes.
# 
# The data for this exercise involves information on employees and their demographic and economic attributes (Source: QRiE). The data can be found on the following URL:
# 
# http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/employee.sav
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Import the SPSS data straight from the URL and store the resulting data frame as work.
# Display the summary of the GENDER column of work. This information doesn't give you a lot of useful information, right?
#   Convert the GENDER column in work to a factor, the class to denote categorical variables in R. Use as_factor().
# Once again display the summary of the GENDER column. This time, the printout makes much more sense.

# haven is already loaded
# Import SPSS data from the URL: work
work <- read_sav("http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/employee.sav")
# Display summary of work$GENDER
summary(work$GENDER)
# Convert work$GENDER to a factor
work$GENDER<- as_factor(work$GENDER)
# Display summary of work$GENDER again
summary(work$GENDER)