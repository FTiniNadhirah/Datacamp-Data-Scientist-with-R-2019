# Filtering rows
# The vote column in the dataset has a number that represents that country's vote:
# 
# 1 = Yes
# 2 = Abstain
# 3 = No
# 8 = Not present
# 9 = Not a member
# One step of data cleaning is removing observations (rows) that you're not interested in. In this case, you want to remove "Not present" and "Not a member".
# 
# Instructions
# 100 XP
# Load the dplyr package.
# Print the votes table.
# Filter out rows where the vote recorded is "not present" or "not a member", leaving cases where it is "yes", "abstain", or "no".

# Load the dplyr package
library(dplyr)

# Print the votes dataset
votes

# Filter for votes that are "yes", "abstain", or "no"
votes %>%
  filter(vote <= 3)