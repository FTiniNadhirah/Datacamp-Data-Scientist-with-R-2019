# What's in a number?
# Turn your attention to the variable called number. Read more about it by pulling up the help file with ?email.
# 
# To explore the association between this variable and spam, select and construct an informative plot. For illustrating relationships between categorical variables, you've seen
# 
# Faceted barcharts
# Side-by-side barcharts
# Stacked and normalized barcharts.
# Let's practice constructing a faceted barchart.
# 
# Instructions
# 100 XP
# Reorder the levels of number so that they preserve the natural ordering of "none", then "small", then "big".
# Construct a faceted barchart of the association between number and spam.

# Reorder levels
email$number <- factor(email$number, levels = c("none","small","big"))

# Construct plot of number
ggplot(email, aes(x = number)) +
  geom_bar() + 
  facet_wrap( ~ spam)