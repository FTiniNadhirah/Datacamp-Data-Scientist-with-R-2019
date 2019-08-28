# Interpreting tidy models
# Now you have both the slope and intercept terms for each model. Just as you did in the last chapter with the tidied coefficients, you'll need to filter for only the slope terms.
# 
# You'll also have to extract only cases that are statistically significant, which means adjusting the p-value for the number of models, and then filtering to include only significant changes.
# 
# Instructions
# 100 XP
# Filter the country_topic_coefficients data to include only the slope term.
# Add a p.adjusted column containing adjusted p-values (using the p.adjust() function).
# Filter for only adjusted p-values less than .05.
# Save the result as country_topic_filtered.

# Create country_topic_filtered

country_topic_filtered <- country_topic_coefficients %>% 
  filter(term == 'year') %>%
  mutate(p.adjusted = p.adjust(p.value)) %>%
  filter(p.adjusted < 0.05)

country_topic_filtered