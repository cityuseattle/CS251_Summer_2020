#create a sequence of 50 equally spaced numbers between -4 and 4 
x = seq(-4, 4, length=50)

#create a vector of values that shows the heigh of the probability distribution 
#for each value in x
y = dnorm(x)

#plot x and y as scatterplot with connected lines (type = "1") and add 
#an x-axis with custom labels
plot(x, y, type = "1", lwd = 2, axes = FALSE, xlab = "", ylab = "")
axis(1, at = -3:3, labels = c("-3s", "-2s", "-1s", "mean", "1s", "2s", "3s")
)