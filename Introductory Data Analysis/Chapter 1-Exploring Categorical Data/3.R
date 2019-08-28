# Side-by-side barcharts
# While a contingency table represents the counts numerically, it's often more useful to represent them graphically.
# 
# Here you'll construct two side-by-side barcharts of the comics data. This shows that there can often be two or more options for presenting the same data. Passing the argument position = "dodge" to geom_bar() says that you want a side-by-side (i.e. not stacked) barchart.
# 
# Instructions
# 100 XP
# Load the ggplot2 package.
# Create a side-by-side barchart with align on the x-axis and gender as the fill aesthetic.
# Create another side-by-side barchart with gender on the x-axis and align as the fill aesthetic. Rotate the axis labels 90 degrees to help readability.

# Load ggplot2
library("ggplot2")

# Create side-by-side barchart of gender by alignment
ggplot(comics, aes(x = align, fill = gender)) + 
  geom_bar(position = "dodge")

# Create side-by-side barchart of alignment by gender
ggplot(comics, aes(x = gender, fill = align)) + 
  geom_bar(positio = "dodge") +
  theme(axis.text.x = element_text(angle = 90))