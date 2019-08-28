# Trimming and padding strings
# One common issue that comes up when cleaning data is the need to remove leading and/or trailing white space. The str_trim() function from stringr makes it easy to do this while leaving intact the part of the string that you actually want.
# 
# > str_trim("  this is a test     ")
# [1] "this is a test"
# A similar issue is when you need to pad strings to make them a certain number of characters wide. One example is if you had a bunch of employee ID numbers, some of which begin with one or more zeros. When reading these data in, you find that the leading zeros have been dropped somewhere along the way (probably because the variable was thought to be numeric and in that case, leading zeros would be unnecessary.)
# 
# > str_pad("24493", width = 7, side = "left", pad = "0")
# [1] "0024493"
# Instructions
# 100 XP
# Load the stringr package.
# Trim all leading and trailing white space from the first set of strings.
# Pad the second set of strings with leading zeros such that all are 9 characters in length.


# Load the stringr package
library(stringr)

# Trim all leading and trailing whitespace
str_trim(c("   Filip ", "Nick  ", " Jonathan"))
# Pad these strings with leading zeros
str_pad(c("23485W", "8823453Q", "994Z"), width=9, side='left', pad="0")