heights <- read.table('Heights.txt', header = TRUE)
attach(heights)
#print(Wife)

# Plot df. Wife x-axis and Husband y-axis
plot(Wife, Husband)

# Fit the simple linear regression model between Husband and Wife
heights.lm <- lm(Husband ~ Wife)

# Draw fitted line onto the plot
abline(heights.lm)

# Display the list of objects under heights.lm
print(names(heights.lm))

# Risidual plot
heights.res <- resid(heights.lm)
plot(heights.res, ylab="Residuals", xlab="Heights", main="Husband/Wife Heights")
abline(0, 0)

# Display summary
print(summary(heights.lm))

# Display r-squared
print("R-squared is:")
print(summary(heights.lm)$r.squared)

# Display Coefficient value
print("Coefficient Value for Husband and Wife:")
print(heights.lm$coefficients)

# Is the Coefficient of Wife valid?
pVal <- summary(heights.lm)$coefficients[2,4]
if (pVal < 0.01) {
    print("Coefficient of Wife is not valid")
    print(pVal)
} else {
    print("At the significance level of 1%, coefficient of Wife is valid")
}