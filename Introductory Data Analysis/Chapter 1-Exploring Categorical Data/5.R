# Marginal barchart
# If you are interested in the distribution of alignment of all superheroes, it makes sense to construct a barchart for just that single variable.
# 
# You can improve the interpretability of the plot, though, by implementing some sensible ordering. Superheroes that are "Neutral" show an alignment between "Good" and "Bad", so it makes sense to put that bar in the middle.
# 
# Instructions
# 100 XP
# Reorder the levels of align using the factor() function so that printing them reads "Bad", "Neutral", then "Good".
# Create a barchart of counts of the align variable.

# Change the order of the levels in align
comics$align <- factor(comics$align, 
                       levels = c("Bad", "Neutral", "Good"))

# Create plot of align
ggplot(comics, aes(x = align)) + 
  geom_bar()