#Analysis of Variance Example

#Assingment_1

classroom_A <- c(7,9,5,8,6,8,6,10,7,4)
classroom_B <- c(4,3,6,2,7,5,5,4,1,3)
classroom_c <- c(6,1,3,5,3,4,6,5,7,3)

#combine the data into single data sets

combined_groups <- data.frame(cbind(classroom_A,classroom_B,classroom_c))

#show spreadsheet like results

combined_groups

#form min,max etc

summary(combined_groups)

#stacking groups

stacked_groups <- stack(combined_groups)

#showing the data in stacked order

stacked_groups

#plotting the data

boxplot(values~ind ,main = "classroom vs test scores",xlab = "classroom",col = rainbow(3), data = stacked_groups)

#ANOVA results

results = aov(values ~ ind , data = stacked_groups)

summary.aov(results)
