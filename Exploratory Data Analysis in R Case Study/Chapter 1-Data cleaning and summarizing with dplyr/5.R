# Summarizing by year
# The summarize() function is especially useful because it can be used within groups.
# 
# For example, you might like to know how much the average "agreeableness" of countries changed from year to year. To examine this, you can use group_by() to perform your summary not for the entire dataset, but within each year.
# 
# Instructions
# 100 XP
# Add a group_by() to your code to summarize() within each year.
# 

# Change this code to summarize by year
votes_processed %>%
  group_by(year) %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))