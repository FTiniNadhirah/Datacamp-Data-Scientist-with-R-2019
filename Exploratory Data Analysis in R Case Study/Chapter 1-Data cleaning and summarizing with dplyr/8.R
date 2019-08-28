# Filtering summarized output
# In the last exercise, you may have noticed that the country that voted least frequently, Zanzibar, had only 2 votes in the entire dataset. You certainly can't make any substantial conclusions based on that data!
# 
# Typically in a progressive analysis, when you find that a few of your observations have very little data while others have plenty, you set some threshold to filter them out.
# 
# Instructions
# 100 XP
# Use filter() to remove from the sorted data countries that have fewer than 100 votes.

# Filter out countries with fewer than 100 votes
by_country %>%
  arrange(percent_yes) %>%
  filter(total >= 100)