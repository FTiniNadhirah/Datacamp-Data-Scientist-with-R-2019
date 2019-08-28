# Exploring ggplot2, part 3
# We'll use several datasets throughout the courses to showcase the concepts discussed in the videos. In the previous exercises, you already got to know mtcars. Let's dive a little deeper to explore the three main topics in this course: The data, aesthetics, and geom layers.
# 
# The mtcars dataset contains information about 32 cars from 1973 Motor Trend magazine. This dataset is small, intuitive, and contains a variety of continuous and categorical variables.
# 
# You're encouraged to think about how the examples and concepts we discuss throughout these data viz courses apply to your own data-sets!
# 
# Instructions

# ggplot2 has already been loaded for you. Take a look at the first command. It plots the mpg (miles per gallon) against the weight (in thousands of pounds). You don't have to change anything about this command.
# In the second call of ggplot() change the color argument in aes() (which stands for aesthetics). The color should be dependent on the displacement of the car engine, found in disp.
# In the third call of ggplot() change the size argument in aes() (which stands for aesthetics). The size should be dependent on the displacement of the car engine, found in disp.

# A scatter plot has been made for you
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# Replace ___ with the correct column
ggplot(mtcars, aes(x = wt, y = mpg, color = disp)) +
  geom_point()

# Replace ___ with the correct column
ggplot(mtcars, aes(x = wt, y = mpg, size = disp)) +
  geom_point()