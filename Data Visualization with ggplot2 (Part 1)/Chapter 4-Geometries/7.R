# Exercise
# Exercise
# Bar plots with color ramp, part 1
# In this example of a bar plot, you'll fill each segment according to an ordinal variable. The best way to do that is with a sequential color series.
# 
# You'll be using the Vocab dataset from earlier. Since this is a much larger dataset with more categories, you'll also compare it to a simpler dataset, mtcars. Both datasets are ordinal.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The bar plot from the previous exercise is provided - cyl is on the x-axis and filled according to transmission type, am. Notice how you can set the color palette used to fill the bars with scale_fill_brewer(). For a full list of possible color sets, have a look at ?brewer.pal.
# Explore Vocab with str(). Notice that the education and vocabulary variables have already been converted to factor variables for you.
# Make a filled bar chart with the Vocab dataset.
# Map education to x and vocabulary to fill.
# Inside geom_bar(), make sure to set position = "fill".
# Allow color brewer to choose a default color palette by using the appropriate scale function, without arguments. Notice how this generates a warning message and an incomplete plot.

# Example of how to use a brewed color palette
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar() +
  scale_fill_brewer(palette = "Set1")

# Use str() on Vocab to check out the structure
Vocab$education <- as.factor(Vocab$education)
Vocab$vocabulary <- as.factor(Vocab$vocabulary)
str(Vocab)

# Plot education on x and vocabulary on fill
# Use the default brewed color palette
ggplot(Vocab, aes(x = education, fill = vocabulary)) +
  geom_bar(position = 'fill') + 
  scale_fill_brewer()

