# Stratified sample in R
# In the previous exercise, we took a simple random sample of eight states. However, we did not have any control over how many states from each region got sampled. The goal of stratified sampling in this context is to have control over the number of states sampled from each region. Our goal for this exercise is to sample an equal number of states from each region.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The dplyr package has been loaded and us_regions is still available in your workspace.
# 
# Use stratified sampling to select a total of eight states, where each stratum is a region. Save this sample in a data frame called states_str.
# Count the number of states from each region in your sample to confirm that each region is represented equally in your sample.

# Stratified sample
states_str <- us_regions %>%
  group_by(region) %>%
  sample_n(2)

# Count states by region
states_str %>%
  count(region)