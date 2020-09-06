#1. Use read.table() to read the file and store the data 
#into heights. (You need to make sure the file is in the correct location.)

heights<-read.table(file="heights.txt",header=TRUE, sep="")

#2. Attach the heights data using attach().
attach(heights)

#3. Plot the data between Husband and Wife using plot(). 
#Place the Husband in the vertical axis.

plot(Wife, Husband, type="p")

#4. Fit the simple linear regression model between Husband and Wife 
#using lm(). (Make sure the Husband is in the y-axis.)

heights.lm<-lm(Husband~Wife,data=heights)
#print(summary(heights.lm))

#5. Draw the fitted line onto the plot in #3 by using abline(heights.lm).
abline(heights.lm)


#6. Execute names(heights.lm) to display the list of objects under heights.lm.
print(names(heights.lm))

#7. Draw the residual plot using plot(). 
#(The visual check of random scatter points in the plot 
#indicates we are using a correct model for the data.)

res<-residuals(heights.lm)
print(res)
#plot(res)

#8. Display the summary of the fitted regression by using summary(heights.lm).

summary.heights<-summary(heights.lm)
print(summary.heights)


#9. What is the multiple R-squared value? 
#(The R-squared value closer to 1 indicates the model explains the data well.)
print("The multiple R-squared value is 0.5828")

#10. Display the coefficients of the regression model using heights.lm$______. 
#(Hint: You can refer to the list of objects in #6.)

print(summary.heights$coefficients)

#11. Determine if the coefficient of Wife is valid at the significance 
#level of 1%. In other words, we have the following hypotheses for 
#testing the linear regression model, y = a + bx, where y is Husband and x is Wife.

std.error<-summary.heights$coefficients[2,2]
wife.estimate<-summary.heights$coefficients[2,1]
ninety.nine.dev<-2.58
upper<-(ninety.nine.dev*std.error)+wife.estimate
lower<-wife.estimate-(ninety.nine.dev*std.error)
print("Is 0 outside of our confidence interval")
cat("The high number is",upper, "and the low number is", lower," and 0 is outside of this so we reject the null hypothesis")
print("")



#Using the p-value of Wife under summary(heights.lm), determine if the null hypothesis 
#is rejected. Is the coefficient of Wife is valid?

if (summary.heights$coefficients[2,4]<0.05) {
   print("The null hypothesis is rejected")
}   else {
    print("The null hypothesis is not rejected")
}
