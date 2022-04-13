# t test

#taking data

Field_1 <- c(15.2,15.3,16.0,15.8,15.6,14.9,15.0,15.4,15.6,15.7,15.5,15.2,15.5,15.1,15.3,15.0)
Field_2 <- c(15.9,15.9,15.2,16.6,15.2,15.8,15.8,15.2,15.6,15.6,15.8,15.5,15.5,15.5,14.9,15.9)

Field_1

summary(Field_1)

#one sample t test

boxplot(Field_1 , main = "graph" , col = "red")

#H0 : mu < 8
#one-sided 95% confidence interval for mu

t.test(Field_1 , mu = 8 , alternative = "less" , conf.level = 0.95)

#two sided t test

#combining data

comb_data <- data.frame(cbind(Field_1,Field_2))

comb_data

#stacking data

stacked_data <- stack(comb_data)

stacked_data

#plotting

boxplot(comb_data , main = "Graph" , col = rainbow(2))

#final test

t.test(values ~ ind , data = stacked_data , mu = 0 , alt = "two.sided" , conf.level = 0.95 , var.eq = F , paired = F)
