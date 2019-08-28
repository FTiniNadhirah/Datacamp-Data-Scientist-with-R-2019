# Lumping variables by proportion
# Many times, you won't have specific levels you want to change to other or collapse together. Rather, you want to keep the most common levels and put everything else into "other." Especially when there are many levels and most of them rare, this is helpful for displaying your data. Let's try this out using the question from the Kaggle survey about which machine learning methods people wanted to try next year. multiple_choice_responses has been loaded for you. When you're counting, remember that sort = TRUE corresponds to descending order by default.
# 
# Instructions
# 100 XP
# Remove people who didn't select a method.
# Create a new variable, ml_method, from MLMethodNextYearSelect that preserves titles that at least 5% of respondents have and lump the rest as "Other" (the default value).
# Finally, count your new variable, sorted in descending order.

multiple_choice_responses %>%
  # remove NAs of MLMethodNextYearSelect
  filter(!is.na(MLMethodNextYearSelect)) %>%
  # create ml_method, which lumps all those with less than 5% of people into "Other"
  mutate(ml_method = fct_lump(MLMethodNextYearSelect, prop = .05)) %>%
  # count the frequency of your new variable, sorted in descending order
  count(ml_method, sort = TRUE)