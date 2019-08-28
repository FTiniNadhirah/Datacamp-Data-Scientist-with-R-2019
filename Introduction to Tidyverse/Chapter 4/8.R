# Adding a title to your graph
# There are many other options for customizing a ggplot2 graph, which you can learn about in other DataCamp courses. You can also learn about them from online resources, which is an important skill to develop.
# 
# As the final exercise in this course, you'll practice looking up ggplot2 instructions by completing a task we haven't shown you how to do.
# 
# Instructions
# 100 XP
# Add a title to the graph: Comparing GDP per capita across continents. Use a search engine, such as Google or Bing, to learn how to do so.
# After this exercise you are almost done with your course. If you enjoyed the material, feel free to send Dave a thank you via twitter. He'll appreciate it. Tweet to Dave

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Add a title to this graph: "Comparing GDP per capita across continents"
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10() + ggtitle("Comparing GDP per capita across continents")