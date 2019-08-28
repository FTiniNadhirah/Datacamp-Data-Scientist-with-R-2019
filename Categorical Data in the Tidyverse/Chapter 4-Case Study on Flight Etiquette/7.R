# Fixing labels
# Our initial plot displays the data, but there's a lot of work to do before it'll resemble the FiveThirtyEight plot. Let's start with the text above and around the plot. We've seen how the ggplot2 layer labs() can take multiple arguments to modify the text. The plot you created in the previous exercise, initial_plot, has been loaded for you.
# 
# Instructions
# 100 XP
# To match the FiveThirtyEight graph:
#   Add its title, subtitle, and caption
# Set the labels for x and y-axis as empty strings
# Save it as a new plot, titled_plot.


titled_plot <- initial_plot + 
  # Add the title, subtitle, and caption
  labs(title = "Hell Is Other People In A Pressurized Metal Tube",
       subtitle = "Percentage of 874 air-passenger respondents who said action is very or somewhat rude",
       caption = "Source: SurveyMonkey Audience", 
       # Remove the x- and y-axis labels
       x = "",
       y = "") 

titled_plot