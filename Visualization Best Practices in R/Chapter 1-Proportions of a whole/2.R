# Warming up data-wrangling
# Let's warm up your tidyverse data wrangling skills a bit and look at the number of cases reported by year for the American region ('AMR').
# 
# To do this, we will first filter the dataset to our desired region, then make a simple scatter plot of the year by cases.
# 
# In addition, set the opacity of the points to 50% (0.5) so we can get a sense of data overlap.
# 
# Instructions
# 0 XP
# Instructions
# 0 XP
# Filter who_disease so we just only keep data from the 'AMR' region.
# Modify the aesthetics in the data to map the year to the x-axis, and cases to the y-axis.
# Lower the opacity (alpha) of the points to 0.5 to get a sense of overlap in geom_point()

# filter data to AMR region. 
amr_region <- who_disease %>% 
  filter(region == 'AMR')

# map x to year and y to cases. 
ggplot(amr_region, aes(x = year, y = cases)) + 
  # lower alpha to 0.5 to see overlap.   
  geom_point(alpha = 0.5)