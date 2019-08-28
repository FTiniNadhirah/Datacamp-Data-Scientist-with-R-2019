# Sorting by percentage of "yes" votes
# Now that you've summarized the dataset by country, you can start examining it and answering interesting questions.
# 
# For example, you might be especially interested in the countries that voted "yes" least often, or the ones that voted "yes" most often.
# 
# Instructions
# 100 XP
# Print the by_country dataset created in the last exercise.
# Use arrange() to sort the countries in ascending order of percent_yes.
# Arrange the countries by the same variable, but in descending order.

# You have the votes summarized by country
by_country <- votes_processed %>%
  group_by(country) %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))

# Print the by_country dataset
by_country

# Sort in ascending order of percent_yes
by_country %>%
  arrange(percent_yes)

# Now sort in descending order
by_country %>%
  arrange(desc(percent_yes))