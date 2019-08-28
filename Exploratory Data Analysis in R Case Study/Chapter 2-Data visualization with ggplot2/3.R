# Summarizing by year and country
# You're more interested in trends of voting within specific countries than you are in the overall trend. So instead of summarizing just by year, summarize by both year and country, constructing a dataset that shows what fraction of the time each country votes "yes" in each year.
# 
# Instructions
# 100 XP
# Change the code in the editor to group by both year and country rather than just by year. Save the result as by_year_country.
# 

# Group by year and country: by_year_country
by_year_country <- votes_processed %>%
  group_by(year, country) %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))