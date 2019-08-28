# Exercise
# Exercise
# Importing selected columns
# It's time to practice importing only a few columns from a file as opposed to importing the entire file. You will be importing the following file:
# 
# id,name,val
# 29192,Robert Whitaker, 200
# 49301 ,Elisa Waters,190  
# 34456 , Karla Schmidt,458   
# Instructions 1/2
# 50 XP
# 1
# 2
# Use fread()'s select argument to import only "id" and "val" columns.

# Select "id" and "val" columns
select_columns <- fread("sample.csv", select = c("id", "val"))
select_columns

# Use fread()'s drop argument to drop the "val" column.
# Drop the "val" column
drop_column <- fread(url, drop = "val")
drop_column
