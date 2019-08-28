# Let's flip some axes
# First, we can practice rotating a plot. Provided is code that makes a bar plot of the number of cases of pertussis in the Americas region (AMR) in 1980. You will notice it's almost unreadable.
# 
# First, to help see patterns that may be in the data, reorder() the columns in descending order of cases.
# 
# Next, let's coord_flip() the axes to make it possible to read the country names.
# 
# Instructions
# 100 XP
# reorder() the x-axis by descending order of cases
# Add coord_flip() to the plot to swap x and y-axes.

amr_pertussis <- who_disease %>% 
  filter(   # filter data to our desired subset
    region == 'AMR', 
    year == 1980, 
    disease == 'pertussis'
  )
# Set x axis as country ordered with respect to cases. 
ggplot(amr_pertussis, aes(x = reorder(country, cases), y = cases)) +
  geom_col() +
  # flip axes
  coord_flip()