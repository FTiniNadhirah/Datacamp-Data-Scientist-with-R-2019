# Summarizing the full dataset
# In this analysis, you're going to focus on "% of votes that are yes" as a metric for the "agreeableness" of countries.
# 
# You'll start by finding this summary for the entire dataset: the fraction of all votes in their history that were "yes". Note that within your call to summarize(), you can use n() to find the total number of votes and mean(vote == 1) to find the fraction of "yes" votes.
# 
# Instructions
# 100 XP
# Print the votes_processed dataset that you created in the previous exercise.
# Summarize the dataset using the summarize() function to create two columns:
#   total: with the number of votes
# percent_yes: the percentage of "yes" votes

# Print votes_processed
votes_processed

# Find total and fraction of "yes" votes
votes_processed %>%
  summarise(
    total = n(),
    percent_yes = mean(vote == 1)
  )