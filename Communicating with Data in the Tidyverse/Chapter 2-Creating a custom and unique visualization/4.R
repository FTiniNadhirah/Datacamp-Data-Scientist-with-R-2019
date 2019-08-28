# Apply the new theme function to the plot
# Once you have created your own theme_ilo() function, it is time to apply it to a plot object. In the video you saw that theme() calls can be chained. You're going to make use of this and add another theme() call to adjust some peculiarities of the faceted plot.
# 
# 
# From now on, you can just add theme_ilo() to any plot object you wish. Try it out! Overwrite the ilo_plot variable so theme_ilo() is applied permanently.
# Combine your custom theme function with even further theme() calls to flexibly adjust settings for advanced plots.
# In order to do that, add another theme() call after the theme_ilo() call.
# Change the background fill of the facet labels to "gray60" and their color to "gray95", using the strip.background argument.
# Change the color of the facet labels to "white".


# Apply your theme function
ilo_plot <- ilo_plot +
  theme_ilo()

# Examine ilo_plot
ilo_plot

ilo_plot +
  # Add another theme call
  theme(
    # Change the background fill and color
    strip.background = element_rect(fill = "gray60",  color = "gray95"),
    # Change the color of the text
    strip.text = element_text(color = "white")
  )