install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")

View(penguins)

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

player_df <- read.csv("player_data.txt")
View(player_df)

ggplot(data=player_df) + geom_point(mapping = aes(x=team_pace, y=MPG))

