# Ordering stack for readability
# In the last plot since we grouped all diseases that are not measles and mumps into their own category, it's fair to assume that we care less about the 'other' category's trajectory than those of measles and mumps.
# 
# Because of this, the plot we made has a problem. The way that the bars are stacked, with measles on top, mumps in the middle, and other on the bottom, makes it hard to get a good intuition for the behavior of mumps over time because its baseline is non-constant due to changing values in measles proportions.
# 
# Ggplot orders the bars and legend based upon the order it sees the variables in the dataset. To override this, turn the disease column into a factor with the levels in the order we want our plot to use.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Change the mutate function in the data-manipulation pipeline to turn disease into a factor with levels = c('measles', 'other', 'mumps').
# Re-plot using the same code as the last exercise.


disease_counts <- who_disease %>%
  mutate(
    disease = ifelse(disease %in% c('measles', 'mumps'), disease, 'other') %>% 
      factor(levels = c('measles', 'other', 'mumps')) # change factor levels to desired ordering
  ) %>%
  group_by(disease, year) %>%
  summarise(total_cases = sum(cases)) 

# plot
ggplot(disease_counts, aes(x = year, y = total_cases, fill = disease)) +
  geom_col(position = 'fill')