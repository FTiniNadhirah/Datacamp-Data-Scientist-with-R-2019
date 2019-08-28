# Correct ugly label positions
# The labels still kind of overlap with the lines in the dot plot. Use a conditional hjust aesthetic in order to better place them, and change their appearance.
# 
# Instructions
# 100 XP
# Give the hjust aesthetic in the geom_text() function call a value of 1.4, if it concerns the label for the year "2006", and -0.4 if not. Use the ifelse() function for this.
# Change font size, family and color to 3, "Bookman" and "gray25" respectively, also in the geom_text() call, but outside of the aes() function since these values are not data-driven.

# Save plot into an object for reuse
ilo_dot_plot <- ggplot(ilo_data) +
  geom_path(aes(x = working_hours, y = country),
            arrow = arrow(length = unit(1.5, "mm"), type = "closed")) +
  # Specify the hjust aesthetic with a conditional value
  geom_text(
    aes(x = working_hours,
        y = country,
        label = round(working_hours, 1),
        hjust = ifelse(year == "2006", 1.4, -0.4)
    ),
    # Change the appearance of the text
    size = 3,
    family = "Bookman",
    color = "gray25"
  )

ilo_dot_plot