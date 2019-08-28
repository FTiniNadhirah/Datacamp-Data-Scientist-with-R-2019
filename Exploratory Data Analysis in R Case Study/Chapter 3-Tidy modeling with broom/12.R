# Sorting by slope
# Now that you've filtered for countries where the trend is probably not due to chance, you may be interested in countries whose percentage of "yes" votes is changing most quickly over time. Thus, you want to find the countries with the highest and lowest slopes; that is, the estimate column.
# 
# Instructions
# 100 XP
# Using arrange() and desc(), sort the filtered countries to find the countries whose percentage "yes" is most quickly increasing over time.
# Using arrange(), sort to find the countries whose percentage "yes" is most quickly decreasing.

# Filter by adjusted p-values
filtered_countries <- country_coefficients %>%
  filter(term == "year") %>%
  mutate(p.adjusted = p.adjust(p.value)) %>%
  filter(p.adjusted < .05)

# Sort for the countries increasing most quickly
filtered_countries %>%
  arrange(desc(estimate))

# Sort for the countries decreasing most quickly
filtered_countries %>%
  arrange(estimate)
