#Question number 1

#importing the library required for calculation

install.packages("dplyr")

library(dplyr)

Path1 <- read.csv("poison.csv")

data <- Path1 %>%
  select(-X) %>%
  mutate(poison = factor(poison, ordered = TRUE))

glimpse(data)

levels(data$poison)

data %>%
  group_by(poison) %>%
  summarise(
    count_poison = n(),
    mean_time = mean(time, na.rm = TRUE),
    sd_time = sd(time, na.rm = TRUE)
  )

library(ggplot2)

ggplot(data, aes(x = poison, y = time, fill = poison)) +
  geom_boxplot( col = rainbow(3))

#showing the data

data

#performing one way anova

anova_result <- aov(time ~ poison , data = data)

#showing results

anova_result

summary(anova_result)

#t test

#between poison and time

poison1 <- data

# pairwise comparison

pairwise.t.test(poison1$time, poison1$treat)

pairwise.t.test(poison1$time, poison1$poison)
