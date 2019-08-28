# Collapsing levels
# If it was difficult to work with the heavy skew of exclaim_mess, the number of images attached to each email (image) poses even more of a challenge. Run the following code at the console to get a sense of its distribution:
#   
#   table(email$image)
# Recall that this tabulates the number of cases in each category (so there were 3811 emails with 0 images, for example). Given the very low counts at the higher number of images, let's collapse image into a categorical variable that indicates whether or not the email had at least one image. In this exercise, you'll create this new variable and explore its association with spam.
# 
# Instructions
# 100 XP
# Starting with email, form a continuous chain that links together the following tasks:
#   
#   Create a new variable called has_image that is TRUE where the number of images is greater than zero and FALSE otherwise.
# Create an appropriate plot with email to visualize the relationship between has_image and spam.

# Create plot of proportion of spam by image
email %>%
  mutate(has_image = image > 0) %>%
  ggplot(aes(x = has_image, fill = spam)) +
  geom_bar(position = "fill")