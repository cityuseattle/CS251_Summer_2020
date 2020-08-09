five <- rnorm(5, mean = 10, sd =2)
print(five)

narrowDistribution <- rnorm(1000, mean = 50, sd = 15)
par(mfrow=c(1, 2))
hist(narrowDistribution, breaks=50, xlim=c(-50, 150))
hist(wideDistribution, breaks=50, xlim=c(-50, 150))
