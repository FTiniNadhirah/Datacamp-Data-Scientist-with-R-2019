# Dealing with missing values
# Missing values are often encoded differently. In some files, -9999 mean missing values and in others, they may be encoded as #$##. You can use the na.strings argument to tell fread() which values should be treated as missing values.
# 
# You will be importing the following file:
#   
#   id,name,val1,val2
# 9002019291929192,Robert Whitaker,,44
# 9200129401349301 ,Elisa Waters,289,##
# 9200149429834456 , Karla Schmidt,458,29
# The missing values are encoded as "##". Note that fread() handles an empty field ,, by default as NA.
# 
# Instructions
# 100 XP
# Import the file sample.csv properly to ensure that "##" is treated as a missing values and is imported as NA.
# 

# Import the file using na.strings
missing_values <- fread("sample.csv", na.strings = "##")
missing_values