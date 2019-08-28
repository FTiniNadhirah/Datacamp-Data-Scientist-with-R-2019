# Change the appearance of titles
# Besides applying defined theme presets, you can tweak your plot even more by altering different style attributes of it. Hint: You can reuse and overwrite the ilo_plot variable generated in the previous exercise - the current plot is already shown in the window on the right.
# 
# Instructions
# 100 XP
# Using a custom theme() function call and element_text():
#   
#   Change the font family of the text to "Bookman".
# Additionally, change the color of the title and caption to "gray25" and "gray30", respectively.
# Make the subtitle a little bigger by increasing the size to 12.


ilo_plot <- ilo_plot +
  theme_minimal() +
  # Customize the "minimal" theme with another custom "theme" call
  theme(
    text = element_text(family = "Bookman"),
    title = element_text(color = "gray25"),
    plot.caption = element_text(color = "gray30"),
    plot.subtitle = element_text(size = 12)
  )

# Render the plot object
ilo_plot