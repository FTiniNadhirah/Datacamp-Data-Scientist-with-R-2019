# Improve piechart
# The piechart is a very common way to represent the distribution of a single categorical variable, but they can be more difficult to interpret than barcharts.
# 
# This is a piechart of a dataset called pies that contains the favorite pie flavors of 98 people. Improve the representation of these data by constructing a barchart that is ordered in descending order of count.
# 
# Instructions
# 100 XP
# Use the code provided to reorder the levels of flavor so that they're in descending order by count.
# Create a barchart of flavor and orient the labels vertically so that they're easier to read. The default coloring may look drab by comparison, so change the fill of the bars to "chartreuse".

# Put levels of flavor in decending order
# Put levels of flavor in decending order
lev <- c("apple", "key lime", "boston creme", "blueberry", "cherry", "pumpkin", "strawberry")
pies$flavor <- factor(pies$flavor, levels = lev)

head(pies$flavor)
## [1] cherry cherry cherry cherry cherry cherry
## 7 Levels: apple key lime boston creme blueberry cherry ... strawberry
# Create barchart of flavor
ggplot(pies, aes(x = flavor)) + 
  geom_bar(fill = "chartreuse") + 
  theme(axis.text.x = element_text(angle = 90))