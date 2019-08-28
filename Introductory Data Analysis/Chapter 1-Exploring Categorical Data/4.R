# Counts vs. proportions (2)
# Bar charts can tell dramatically different stories depending on whether they represent counts or proportions and, if proportions, what the proportions are conditioned on. To demonstrate this difference, you'll construct two barcharts in this exercise: one of counts and one of proportions.
# 
# Instructions
# 100 XP
# Create a stacked barchart of gender counts with align on the x-axis.
# Create a stacked barchart of gender proportions with align on the x-axis by setting the position argument to geom_bar()

# Plot of gender by align
ggplot(comics, aes(x = align, fill = gender)) +
  geom_bar()


# Plot proportion of gender, conditional on align
ggplot(comics, aes(x = align, fill = gender)) + 
  geom_bar(position = "fill")