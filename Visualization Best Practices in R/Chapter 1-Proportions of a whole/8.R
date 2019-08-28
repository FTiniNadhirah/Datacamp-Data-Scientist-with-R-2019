# Categorical x-axis
# In the previous charts, we saw that mumps didn't start getting reported until 1999, making comparisons before then meaningless.
# 
# Let's filter the data to be only the cases reported on or after 1999 and then make a stacked bar chart looking at the proportion of different diseases by region.
# 
# Modify the data-manipulation pipeline to get the data into the form you want, then build your stacked bar chart and plot! Don't worry about ordering the bars here as we did in the last exercise. See any surprising patterns?
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Filter who_disease data to only years 1999 and later.
# Add to group_by() to keep region information in summary.
# Fill out aesthetics with x = region, y = total_cases, and fill = disease.
disease_counts <- who_disease %>%
  # Filter to on or later than 1999
  filter(year >= 1999) %>% 
  mutate(disease = ifelse(disease %in% c('measles', 'mumps'), disease, 'other')) %>%
  group_by(disease, region) %>%    # Add region to grouping
  summarise(total_cases = sum(cases))

# Set aesthetics so disease is the stacking variable, region is the x-axis and counts are the y
ggplot(disease_counts, aes(x = region, y = total_cases, fill = disease)) +
  # Add a column geometry with the proper position value. 
  geom_col(position = 'fill')