#question3

#taking data

a <- c(2,4,6,8)
b <- c(1,11,3,33)

#combining data

combine_data <- data.frame(cbind(a,b))

combine_data

#calculating covariance matrix

cov(a,b)

#covariance matrix

cov(combine_data)

#calculating corelation

cor(a,b)

#corelation matrix

cor(combine_data)
