# Filtering for significant countries
# Not all slopes are significant, and you can use the p-value to guess which are and which are not.
# 
# However, when you have lots of p-values, like one for each country, you run into the problem of multiple hypothesis testing, where you have to set a stricter threshold. The p.adjust() function is a simple way to correct for this, where p.adjust(p.value) on a vector of p-values returns a set that you can trust.
# 
# Here you'll add two steps to process the slope_terms dataset: use a mutate to create the new, adjusted p-value column, and filter to filter for those below a .05 threshold.
# 
# Instructions
# 100 XP
# Use the p.adjust() function to adjust the p.value column, saving the result into a new p.adjusted column. Then, filter for cases where p.adjusted is less than .05.

# Filter for only the slope terms
slope_terms <- country_coefficients %>%
  filter(term == "year")

# Add p.adjusted column, then filter
slope_terms %>%
  mutate(p.adjusted = p.adjust(p.value)) %>% 
  data.frame() %>% head()
slope_terms %>%
  mutate(p.adjusted = p.adjust(p.value)) %>% 
  filter(p.adjusted < 0.05)

