# read_tsv
# Where you use read_csv() to easily read in CSV files, you use read_tsv() to easily read in TSV files. TSV is short for tab-separated values.
# 
# This time, the potatoes data comes in the form of a tab-separated values file; potatoes.txt is available in your workspace. In contrast to potatoes.csv, this file does not contain columns names in the first row, though.
# 
# There's a vector properties that you can use to specify these column names manually.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use read_tsv() to import the potatoes data from potatoes.txt and store it in the data frame potatoes. In addition to the path to the file, you'll also have to specify the col_names argument; you can use the properties vector for this.
# Call head() on potatoes to show the first observations of your dataset.

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import potatoes.txt: potatoes

potatoes<-read_tsv("potatoes.txt",col_names=properties)

# Call head() on potatoes
head(potatoes)