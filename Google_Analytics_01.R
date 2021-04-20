install.packages("palmerpenguins")
library("palmerpenguins")
summary(penguins)

installed.packages()

View(penguins)
View(penguins_raw)

install.packages("tidyverse")
library(tidytverse)
library(lubridate)

#this is a comment
first_variable <- "my first variable"
second_variable <- 2002
first_vector <- c(200, 14.5, 2000)
second_vector <- c(300, 2, 100)
sum_vector <- first_vector + second_vector
print(sum_vector)
installed.packages()


data('ToothGrowth')
View(ToothGrowth)

install.packages('dplyr')
library(dplyr)

#function
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)
arrange(filtered_tg,len)

#nested
arrange(filter(ToothGrowth, dose==0.5), len)

# pipe %>%
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  arrange(len)

# pipe %>%
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = T), .group="drop")
filtered_toothgrowth
