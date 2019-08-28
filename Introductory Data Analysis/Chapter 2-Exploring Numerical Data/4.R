# Three binwidths
# Before you take these plots for granted, it's a good idea to see how things change when you alter the binwidth. The binwidth determines how smooth your distribution will appear: the smaller the binwidth, the more jagged your distribution becomes. It's good practice to consider several binwidths in order to detect different types of structure in your data.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Create the following three plots, adding a title to each to indicate the binwidth used:
#   
#   A histogram of horsepower (i.e. horsepwr) with a binwidth of 3.
# A second histogram of horsepower with a binwidth of 30.
# A third histogram of horsepower with a binwidth of 60.

# Create hist of horsepwr with binwidth of 3
cars %>%
  ggplot(aes(horsepwr)) +
  geom_histogram(binwidth = 3) +
  ggtitle("binwidth = 3")

# Create hist of horsepwr with binwidth of 30

cars %>%
  ggplot(aes(horsepwr)) +
  geom_histogram(binwidth = 30) +
  ggtitle("binwidth = 30")

# Create hist of horsepwr with binwidth of 60

cars %>%
  ggplot(aes(horsepwr)) +
  geom_histogram(binwidth = 60) +
  ggtitle("binwidth = 60")