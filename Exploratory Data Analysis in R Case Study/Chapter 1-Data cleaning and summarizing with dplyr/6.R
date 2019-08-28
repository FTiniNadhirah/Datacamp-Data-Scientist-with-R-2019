# Summarizing by country
# In the last exercise, you performed a summary of the votes within each year. You could instead summarize() within each country, which would let you compare voting patterns between countries.
# 
# Instructions
# 100 XP
# Change the code in the editor to summarize() within each country rather than within each year. Save the result as by_country.

# Summarize by country: by_country
by_country <- votes_processed %>%
  group_by(country) %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))

by_country