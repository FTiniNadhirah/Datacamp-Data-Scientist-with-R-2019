# Scatter plots and jittering (2)
# In the chapter on aesthetics you saw different ways in which you will have to compensate for overplotting. In the video you saw a dataset that suffered from overplotting because of the precision of the dataset.
# 
# Another example you saw is when you have integer data. This can be continuous data measured on an integer (i.e. 1 ,2, 3 ...), as opposed to numeric (i.e. 1.1, 1.4, 1.5, ...), scale, or two categorical (e.g. factor) variables, which are just type integer under-the-hood.
# 
# In such a case you'll have a small, defined number of intersections between the two variables.
# 
# You will be using the Vocab dataset. The Vocab dataset contains information about the years of education and integer score on a vocabulary test for over 21,000 individuals based on US General Social Surveys from 1972-2004.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The Vocab data frame has been loaded for you. Both the education and vocabulary variables are classified as integers. You can imagine these as factor variables, but here, integers are more convenient to work with. First, get familiar with the dataset by looking at its structure with str().
# Make a basic scatter plot of vocabulary (y) vs. education (x). Here it becomes apparent that you have issues with overplotting because of the integer scales.
# Use geom_jitter() instead of geom_point().
# Using the jittered plot, set alpha to 0.2 (very low).
# Using the jittered plot, set shape to 1.

# Examine the structure of Vocab
library(car)
str(Vocab)

# Basic scatter plot of vocabulary (y) against education (x). Use geom_point()
ggplot(Vocab, aes(education, vocabulary)) + 
  geom_point()


# Use geom_jitter() instead of geom_point()
ggplot(Vocab, aes(education, vocabulary)) + 
  geom_jitter()


# Using the above plotting command, set alpha to a very low 0.2
ggplot(Vocab, aes(education, vocabulary)) + 
  geom_jitter(alpha = 0.2)


# Using the above plotting command, set the shape to 1
ggplot(Vocab, aes(education, vocabulary)) + 
  geom_jitter(alpha = 0.2, shape = 1)
