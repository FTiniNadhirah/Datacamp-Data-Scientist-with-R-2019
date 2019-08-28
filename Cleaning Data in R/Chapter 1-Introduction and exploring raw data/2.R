# Getting a feel for your data
# The first thing to do when you get your hands on a new dataset is to understand its structure. There are several ways to go about this in R, each of which may reveal different issues with your data that require attention.
# 
# In this course, we are only concerned with data that can be expressed in table format (i.e. two dimensions, rows and columns). As you may recall from earlier courses, tables in R often have the type data.frame. You can check the class of any object in R with the class() function.
# 
# Once you know that you are dealing with tabular data, you may also want to get a quick feel for the contents of your data. Before printing the entire dataset to the console, it's probably worth knowing how many rows and columns there are. The dim() command tells you this.
# 
# Instructions
# 100 XP
# We've loaded a dataset called bmi into your workspace. The data, which give the (age standardized) mean body mass index (BMI) among males in each country for the years 1980-2008, come from the School of Public Health, Imperial College London.
# 
# Check the class of bmi.
# Find the dimensions of bmi.
# Print the bmi column names.

# Check the class of bmi
class(bmi)

# Check the dimensions of bmi
dim(bmi)

# View the column names of bmi
names(bmi)