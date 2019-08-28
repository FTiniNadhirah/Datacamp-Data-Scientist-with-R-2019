# Exercise
# Exercise
# Finalizing the chart
# The FiveThirtyEight chart displayed the bar's height above each bar. We can do this with a geom_text() layer. Positioning the text just right above the bar takes a few extra arguments; we've filled those in for you, but feel free to modify to see how it changes the graph. The plot you created in the previous exercise, flipped_plot, has been loaded for you.
# 
# Instructions
# 100 XP
# Apply percent() to perc_rude to add a label to each bar with the percent rude value, so it will display as "85%".


flipped_plot + 
  # Apply percent() to perc_rude to label above the bar with the perc value
  geom_text(aes(label = percent(perc_rude), 
                y = perc_rude + .03), 
            position = position_dodge(0.9),
            vjust = 1)