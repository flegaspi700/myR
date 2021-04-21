library(ggplot2)
data("diamonds")
library(tidyverse)

View(diamonds)
head(diamonds)

#For example, we could use the structure function 
#to highlight the structure of this data frame. 
#This gives us some high-level info like the column names and the type of 
#data contained in those columns.
#Structure

str(diamonds)

#Column names
colnames(diamonds)

#glimpse()

#Add calculated column
mutate(diamonds, carat_2=carat * 100)
