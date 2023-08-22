
# if you do not have haven package installed, run the following
install.packages("haven")

# if you already have "haven" installed, run the following
library(haven)


# read the sav data from your local directory
data<-read_sav("C:/SPSS_examples/Study_3.sav")

# print out the first 6 rows of the data
head(data)
