# Importing selected rows
# It's time to practice importing only a few rows from a file as opposed to importing the entire file. You will be importing the following file:
# 
# id,"name",val
# 29192,"Robert Whitaker", 200
# 49301 ,"Elisa Waters,190  
# 34456 , Karla Schmidt,458  
# 
# END-OF-DATA
# METADATA
# attr;value
# date;"2018-01-01"
# data;"cash payment" 
# Unfortunately, files like these do exist in real life.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Import the file sample.csv using fread().
# 

# Import the file
entire_file <- fread("sample.csv")
entire_file
# 
# Did you notice the second warning message? To avoid this message, import only the lines before END-OF-DATA.

# Import the file while avoiding the warning
only_data <- fread("sample.csv", nrows = 3)
only_data

# Now import the data after the line METADATA. The first line is a header and the other two lines are the rows.
# Import only the metadata
only_metadata <- fread("sample.csv", skip = 7)
only_metadata
