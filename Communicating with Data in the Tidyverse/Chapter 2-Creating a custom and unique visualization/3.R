# Define your own theme function
# In the video you saw how a lot of typing can be saved by replacing code chunks with function calls. You saw how a function is usually defined, now you will apply this knowledge in order to make your previous two theme() calls reusable.
# 
# 
# Using your new knowledge about function definitions, create a function named theme_ilo() that encapsulates your theme settings.
# The function body should contain both theme() calls that you would normally apply directly to a plot object: theme_minimal() + your customized theme() function.
# Copy what you did before into this theme_ilo() function, using the theme() settings provided in the sample code.


# For a starter, let's look at what you did before: adding various theme calls to your plot object
ilo_plot +
  theme_minimal() +
  theme(
    text = element_text(family = "Bookman", color = "gray25"),
    plot.subtitle = element_text(size = 12),
    plot.caption = element_text(color = "gray30"),
    plot.background = element_rect(fill = "gray95"),
    plot.margin = unit(c(5, 10, 5, 10), units = "mm")
  )

# Define your own theme function below
theme_ilo <- function() {
  theme_minimal() +
    theme(
      text = element_text(family = "Bookman", color = "gray25"),
      plot.subtitle = element_text(size = 12),
      plot.caption = element_text(color = "gray30"),
      plot.background = element_rect(fill = "gray95"),
      plot.margin = unit(c(5, 10, 5, 10), units = "mm")
    )
}