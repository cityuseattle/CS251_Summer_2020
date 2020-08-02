# generate a vector of 5 normally distributed random variables with mean=10 and sd=2
five <- rnorm(5, mean = 10, sd = 2)
print(five)
##########################################

# generate a vector of 1000 normally distributed 
# random variables with mean=50 and sd=15
narrowDistribution <- rnorm(1000, mean = 50, sd = 15)

# generate a vector of 1000 normally distributed 
# random variables with mean=50 and sd=25
wideDistribution <- rnorm(1000, mean = 50, sd = 25)

# generate two histograms to view these two distributions side by side,
# specify 50 bars in histogram and x-axis limits of -50 to 150
par(mfrow=c(1,2))
hist(narrowDistribution, breaks=50, xlim=c(-50, 150))
hist(wideDistribution, breaks=50, xlim=c(-50, 150))