#Calculation of Covariance Matrix

#Assignment 5

x <- c(1, -1, 4)
y <- c(2, 1, 3)
z <- c(1, 3, -1)

#combining data

com_data <- data.frame(cbind(x,y,z))

com_data

#calculating variance

var(x)

var(y)

var(z)

#calculating covariance

cov(x,y)

cov(y,z)

cov(z,x)

#covariance matrix

cov(com_data)