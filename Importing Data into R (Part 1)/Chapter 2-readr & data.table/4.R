# skip and n_max
# Through skip and n_max you can control which part of your flat file you're actually importing into R.
# 
# skip specifies the number of lines you're ignoring in the flat file before actually starting to import data.
# n_max specifies the number of lines you're actually importing.
# Say for example you have a CSV file with 20 lines, and set skip = 2 and n_max = 3, you're only reading in lines 3, 4 and 5 of the file.
# 
# Watch out: Once you skip some lines, you also skip the first line that can contain column names!
#   
#   potatoes.txt, a flat file with tab-delimited records and without column names, is available in your workspace.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Finish the first read_tsv() call to import observations 7, 8, 9, 10 and 11 from potatoes.txt.

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import 5 observations from potatoes.txt: potatoes_fragment
potatoes_fragment <- read_tsv("potatoes.txt", skip = 6, n_max = 5, col_names = properties)