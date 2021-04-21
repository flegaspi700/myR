install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")

View(penguins)

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

player_df <- read.csv("data/player_data.txt")
View(player_df)

ggplot(data=player_df) + geom_point(mapping = aes(x=team_pace, y=MPG))

data("diamonds")
View(diamonds)

ggplot(data=diamonds) +
  geom_point(mapping = aes(x=carat, y=price, color=cut, alpha=cut))

ggplot(data=diamonds) +
  geom_point(mapping = aes(x=carat, y=price),color="brown")


ggplot(data=diamonds) +
  geom_smooth(mapping = aes(x=carat, y=price)) +
  geom_point(mapping = aes(x=carat, y=price))


ggplot(data=diamonds) +
  geom_jitter(mapping = aes(x=carat, y=price, color=cut, alpha=cut))

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))

ggplot(data=diamonds) +
  geom_point(mapping = aes(x=carat, y=price, color=cut, alpha=cut)) +
  facet_wrap(~cut)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity)) +
  facet_wrap(~clarity)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity)) +
  #facet_grid(~clarity) +
  labs(title="Diamonds", subtitle = "more diamonds") +
  annotate("text", x=2, y=15000, label="Here I Am") +
  theme(axis.text.x = element_text(angle = 45))

ggsave("Diamonds Diamonds.png")

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))