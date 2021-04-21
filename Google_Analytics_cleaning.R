install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("dplyr")
install.packages("palmerpenguins")

library("here")
library("skimr")
library("janitor")
library("dplyr")
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
