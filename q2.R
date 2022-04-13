#question 2

#loading data and showing data

data1 <- rnorm(n = 100, mean = 50, sd = 5)

data1

data2 <- rnorm(n = 100, mean = 51, sd = 5)

data2

#combining and stacking data

cmb_data <- data.frame(cbind(data1, data2))
cmb_data
stack_Data <- stack(cmb_data)
stack_Data

#performing t test

#H0 : mu = 0
#performing two sided test

obj <- t.test(values~ind , data = stack_Data , mu = 0 , alt ="two.sided")

obj
