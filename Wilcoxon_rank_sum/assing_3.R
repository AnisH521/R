#wilcoxon Rank sum Test

#Assignment_3

Standard_Therapy <- c(75,8,9,8,9,15,20)
New_Therapy <- c(8,10,9,60,15,20,33)

#combine the data into single data sets

combined_groups <- data.frame(cbind(Standard_Therapy,New_Therapy))

#show spreadsheet like results

combined_groups

#form min,max etc

summary(combined_groups)

#stacking groups

stacked_groups <- stack(combined_groups)

#showing the data in stacked order

stacked_groups

#plotting the data

boxplot(values~ind ,main = "Number of HIV copies per milliliter of blood vs Therapy",xlab = "Different Therapies",ylab = "blood/ML",col = rainbow(2), data = stacked_groups)

#Wilcox Rank Sum Test

#H0=There is no difference in viral load in patients receiving standard therapy and new therapy
#Two sided Test

wilcox.test(values ~ ind , data = stacked_groups , mu = 0 , alt = "two.sided" , conf.int = T , conf.level = 0.05 , paired = F , exact = F , correct = T)
