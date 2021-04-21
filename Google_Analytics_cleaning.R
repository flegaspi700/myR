install.packages("tidyverse")
install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("dplyr")
install.packages("tidyr")
install.packages("palmerpenguins")

library("tidyverse")
library("here")
library("skimr")
library("janitor")
library("dplyr")
library("tidyr")
library("palmerpenguins")

skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

penguins %>%
  select(species)

penguins %>%
  select(-species)

penguins %>%
  rename(island_new=island)

rename_with(penguins, toupper)
rename_with(penguins, tolower)

clean_names(penguins)

#Organizing your data
penguins %>%
  arrange(bill_length_mm)

#descending order
penguins %>%
  arrange(-bill_length_mm)

penguins2 <- penguins %>%
  arrange(-bill_length_mm)

View(penguins2)

penguins2 %>% group_by(island) %>% 
  drop_na() %>%
  summarize(mean_bill_length_mm=mean(bill_length_mm))

penguins2 %>% group_by(island) %>% 
  drop_na() %>%
  summarize(max_bill_length_mm=max(bill_length_mm))

penguins2 %>% group_by(species, island) %>% 
  drop_na() %>%
  summarize(max_mm=max(bill_length_mm),mean_bl=mean(bill_length_mm))

penguins2 %>%
  filter(species=="Adelie")

