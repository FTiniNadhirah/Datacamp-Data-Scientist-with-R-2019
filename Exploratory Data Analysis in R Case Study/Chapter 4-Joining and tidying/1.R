# Joining datasets with inner_join
# In the first chapter, you created the votes_processed dataset, containing information about each country's votes. You'll now combine that with the new descriptions dataset, which includes topic information about each country, so that you can analyze votes within particular topics.
# 
# To do this, you'll make use of the inner_join() function from dplyr.
# 
# Instructions
# 100 XP
# Load the dplyr package.
# Print the votes_processed dataset.
# Print the new descriptions dataset.
# Join the two datasets using dplyr's inner_join(), using the rcid and session columns to match them. Save as votes_joined.

# Load dplyr package
library(dplyr)

# Print the votes_processed dataset
votes_processed

# Print the descriptions dataset
descriptions

# Join them together based on the "rcid" and "session" columns
votes_joined <- inner_join(votes_processed, descriptions, by = c("rcid", "session"))