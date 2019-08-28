# Import SPSS data with foreign (1)
# All great things come in pairs. Where foreign provided read.dta() to read Stata data, there's also read.spss() to read SPSS data files. To get a data frame, make sure to set to.data.frame = TRUE inside read.spss().
# 
# In this exercise, you'll be working with socio-economic variables from different countries (Source: Quantative Data Analysis in Education). The SPSS data is in a file called international.sav, which is in your working directory. You can also download it here if you want to play around with it some more.
# 
# Instructions
# 100 XP
# Import the data file "international.sav" and have R convert it to a data frame. Store this data frame as demo.
# Create a boxplot of the gdp variable of demo.


# foreign is already loaded
# Import international.sav as a data frame: demo
demo <- read.spss("international.sav",to.data.frame = TRUE)
# Create boxplot of gdp variable of demo
boxplot(demo$gdp)