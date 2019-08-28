# 3 variable plot
# Faceting is a valuable technique for looking at several conditional distributions at the same time. If the faceted distributions are laid out in a grid, you can consider the association between a variable and two others, one on the rows of the grid and the other on the columns.
# 
# Instructions
# 100 XP
# common_cyl, which you created to contain only cars with 4, 6, or 8 cylinders, is available in your workspace.
# 
# Using common_cyl, create a histogram of hwy_mpg.
# Grid-facet the plot rowwise by ncyl and columnwise by suv.
# Add a title to your plot to indicate what variables are being faceted on.

# Facet hists using hwy mileage and ncyl
common_cyl %>%
  ggplot(aes(x = hwy_mpg)) +
  geom_histogram() +
  facet_grid(ncyl ~ suv) +
  ggtitle("hwy_mpg by ncyl and suv")