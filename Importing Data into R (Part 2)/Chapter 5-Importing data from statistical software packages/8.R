# Import SPSS data with foreign (2)
# In the previous exercise, you used the to.data.frame argument inside read.spss(). There are many other ways in which to customize the way your SPSS data is imported.
# 
# In this exercise you will experiment with another argument, use.value.labels. It specifies whether variables with value labels should be converted into R factors with levels that are named accordingly. The argument is TRUE by default which means that so called labelled variables inside SPSS are converted to factors inside R.
# 
# You'll again be working with the international.sav data, which is available in your current working directory.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Import the data file "international.sav" as a data frame, demo_1.
# Print the first few rows of demo_1 using the head() function.
# Import the data file "international.sav" as a data frame, demo_2, but this time in a way such that variables with value labels are not converted to R factors.
# Again, print the first few rows of demo_2. Can you tell the difference between the two data frames?

# foreign is already loaded
# Import international.sav as demo_1
demo_1 <- read.spss("international.sav",to.data.frame=TRUE)
# Print out the head of demo_1
head(demo_1)
# Import international.sav as demo_2
demo_2 <- read.spss("international.sav",to.data.frame=TRUE,use.value.labels=FALSE)
# Print out the head of demo_2
head(demo_2)