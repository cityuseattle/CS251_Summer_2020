# find the Z-score of the 81th quantile of the standard normal distribution
print(qnorm(.81, mean=0, sd=1))

# by default, R uses mean=0, and sd=1
print(qnorm(.81))
# to see the answer using graph
qnormGC(.81, region = "below", m=0, s=1, graph=TRUE)


# Find the IQ score of the 95th quartile of normal distribution with mean 100 & sd=15
print(qnorm(0.95, mean=100, sd=15))
# To see your answer using a graph
qnormGC(.95, region = "below", m=100, s=15, graph=TRUE)