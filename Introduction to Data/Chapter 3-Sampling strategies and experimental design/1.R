# Simple random sample in R
# Suppose we want to collect some data from a sample of eight states. A list of all states and the region they belong to (Northeast, Midwest, South, West) are given in the us_regions data frame.
# 
# Instructions
# 100 XP
# The dplyr package and us_regions data frame have been loaded.
# 
# Use simple random sampling to select eight states from us_regions. Save this sample in a data frame called states_srs.
# Count the number of states from each region in your sample.

# Simple random sample: states_srs
states_srs <- us_regions %>%
  sample_n(8)

# Count states by region
states_srs %>%
  count(region)