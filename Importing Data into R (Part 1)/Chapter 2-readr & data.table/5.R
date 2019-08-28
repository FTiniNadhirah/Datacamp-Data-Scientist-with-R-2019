# col_types
# You can also specify which types the columns in your imported data frame should have. You can do this with col_types. If set to NULL, the default, functions from the readr package will try to find the correct types themselves. You can manually set the types with a string, where each character denotes the class of the column: character, double, integer and logical. _ skips the column as a whole.
# 
# potatoes.txt, a flat file with tab-delimited records and without column names, is again available in your workspace.
# 
# Instructions
# 100 XP
# In the second read_tsv() call, edit the col_types argument to import all columns as characters (c). Store the resulting data frame in potatoes_char.
# Print out the structure of potatoes_char and verify whether all column types are chr, short for character.

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")
# Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv("potatoes.txt", col_types = "cccccccc", col_names = properties)
# Print out structure of potatoes_char
str(potatoes_char)