##############################################################################
# Moderated Mediation in R
#
# Notes:
# (1)This PDF is part of YouTube tutorials. This PDF is for individual, personal usage only. https://youtu.be/If0ap-Yonbc
# (2) The author accepts no responsibility for the topicality, correctness, completeness or quality of the information provided.

#############################################################################


# Step 1: Read Data - CSV file Version
# replace the file address with your own one
data<-read.csv("C:/SPSS_examples/Study_3.csv")


# Step 1: Read Data - SPSS sav file Version
# replace the file address with your own one
library(haven)
data<-read_sav("C:/SPSS_examples/Study_3.sav")


# Step 2: test if the interaction item in c path is significant
result_c<-lm(PriceTag~Cond+CEISStd+Cond*CEISStd,data=data)
summary(result_c)


# Step 3: include PROCESS macro
# replace the file address with your own one
# Related tutorial: Setup Mediation PROCESS Macro in R: https://youtu.be/4Aq3RRRu0DI
source("C:/SPSS_examples/process.R")

# Step 4: test a and b paths using PROCESS
# run model 8 using PROCESS in R 
process(data = data, y = "PriceTag", x = "Cond", m = "GSR", w ="CEISStd", model = 8)