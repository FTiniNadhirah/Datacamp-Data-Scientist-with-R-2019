# Exercise
# Exercise
# Introduction to the RMarkdown exercise interface
# Welcome to the RMarkdown exercise interface. It is a little bit different from the one you have seen so far: When you click "Knit HTML", the interface will knit your R Markdown document into an HTML file and display that in a new pane. You could also knit it to a PDF file, but you are going to stick to HTML in this course.
# 
# For your convenience, we've included some basic R code that quickly produces a plot from the graphics R package, which is loaded by default, using a data set mtcars, which is also loaded by default.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Adjust the title to "Communicating with Data in the Tidyverse", the author to your name, and the date in the YAML header at the very top of the RMarkdown file.
# Click the "Knit HTML" button in order to see the knitted HTML file, opening up in a new pane.
# 
# 
---
  title: "Communicating with Data in the Tidyverse" 
author: "DataCamp"
date: "March 2018"
output: html_document
---
  
  The following plot shows the relationship between the number of cylinders and miles per gallon in the `mtcars` dataset.

```{r}
boxplot(mtcars$mpg ~ mtcars$cyl)
```

As one can see, the more cylinders, the less miles per gallons.


