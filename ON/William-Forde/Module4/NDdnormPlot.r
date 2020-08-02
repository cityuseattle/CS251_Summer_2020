# Create a sequence of 50 equally spaced numbers bettween -4 and 4
x <- seq(-4, 4, length=50)

# Create a vector of values that shows the height of the probability distribution
# for each value in x
y <- dnorm(x)

# plot x and y as a scatterplot with connected lines (type = "1") and add an x-axis
# with custom labels
plot(x,y, type = "l", lwd = 2, axes = FALSE, xlab = "", ylab = "")
axis(1, at = -3:3, labels = c("-3s", "-2s", "-1s", "mean", "1s", "2s", "3s"))
