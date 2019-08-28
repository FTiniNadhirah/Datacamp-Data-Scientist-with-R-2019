# Exercise
# Exercise
# Faceting to show structure.
# Taking the code from the last exercise, let's modify it to group the countries by their region by faceting.
# 
# This will help inject a bit more structure into the presentation while not overly complicating the chart.
# 
# We want to use facet_grid() here and keep all the plots in the same column, enabling easy comparisons outside of a region while still maintaining the region-level grouping.
# 
# You will also need to adjust the scale argument in facet_grid() in order to avoid repeating the entire y-axis structure for every facet.
# 
# Instructions
# 100 XP
# Add facet_grid() to the code from the last plot and set its faceting variable to region~..
# Set y-axis to be free by setting scale to 'free_y'.

who_subset %>% 
  mutate(logFoldChange = log2(cases_2002/cases_1992)) %>% 
  ggplot(aes(x = logFoldChange, y = reorder(country, logFoldChange))) +
  geom_point() +
  geom_vline(xintercept = 0) +
  xlim(-6,6) +
  # add facet_grid arranged in the column direction by region and free_y scales
  facet_grid(region~., scales = 'free_y')