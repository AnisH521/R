#Analysis of Variance Example

#Assingment_2

Normal_bone_density <- c(1200,1000,980,900,750,800)
Osteopenia <- c(1000,1100,700,800,500,700)
Osteoporosis <- c(890,650,1100,900,400,350)

#combine the data into single data sets

combined_groups <- data.frame(cbind(Normal_bone_density,Osteopenia,Osteoporosis))

#show spreadsheet like results

combined_groups

#form min,max etc

summary(combined_groups)

#stacking groups

stacked_groups <- stack(combined_groups)

#showing the data in stacked order

stacked_groups

#plotting the data

boxplot(values~ind ,main = "bone density vs different conditions",xlab = "conditions",ylab = "density",col = rainbow(3), data = stacked_groups)

#ANOVA results

results = aov(values ~ ind , data = stacked_groups)

summary.aov(results)
