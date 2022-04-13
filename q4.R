#Question 4

View(mpg)

#loading ggplot2

library(ggplot2)

#summarizes the distribution of hwy with respect drv variable using boxplot.

ggplot(mpg, aes(drv, hwy, fill=hwy)) + geom_boxplot(col = rainbow(3))

# Explain the utilization of facet_grid() in the mpg dataset (draw some boxplot with
#facet_grid).

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cty)) +
  facet_grid(drv ~ cyl)
