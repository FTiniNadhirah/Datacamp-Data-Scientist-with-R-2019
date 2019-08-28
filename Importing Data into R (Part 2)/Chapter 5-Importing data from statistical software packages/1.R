# Import SAS data with haven
# haven is an extremely easy-to-use package to import data from three software packages: SAS, STATA and SPSS. Depending on the software, you use different functions:
#   
#   SAS: read_sas()
# STATA: read_dta() (or read_stata(), which are identical)
# SPSS: read_sav() or read_por(), depending on the file type.
# All these functions take one key argument: the path to your local file. In fact, you can even pass a URL; haven will then automatically download the file for you before importing it.
# 
# You'll be working with data on the age, gender, income, and purchase level (0 = low, 1 = high) of 36 individuals (Source: SAS). The information is stored in a SAS file, sales.sas7bdat, which is available in your current working directory. You can also download the data here.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the haven package; it's already installed on DataCamp's servers.
# Import the data file "sales.sas7bdat". Call the imported data frame sales.
# Display the structure of sales with str(). Some columns represent categorical variables, so they should be factors.

# Load the haven package
library(haven)
# Import sales.sas7bdat: sales
sales <- read_sas("sales.sas7bdat")
# Display the structure of sales
str(sales)