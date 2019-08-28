# Summarize by country, year, and topic
# In previous exercises, you summarized the votes dataset by country, by year, and by country-year combination.
# 
# Now that you have topic as an additional variable, you can summarize the votes for each combination of country, year, and topic (e.g. for the United States in 2013 on the topic of nuclear weapons.)
# 
# Instructions
# 100 XP
# Print the votes_tidied dataset to the console.
# In a single summarize() call, compute both the total number of votes (total) and the percentage of "yes" votes (percent_yes) for each combination of country, year, and topic. Save this as by_country_year_topic. Make sure that you ungroup() after summarizing.
# Print the by_country_year_topic dataset to the console.

# Print votes_tidied
votes_tidied

# Summarize the percentage "yes" per country-year-topic
by_country_year_topic <- votes_tidied %>%
  group_by(country, year, topic) %>%
  summarize(
    total = n(),
    percent_yes = mean(vote == 1)
  ) %>%
  ungroup()

# Print by_country_year_topic
by_country_year_topic

# Print by_country_year_topic
