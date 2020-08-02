# find the z-score of the 81th quantile of the standard normal distribution
print(qnorm(.81, mean=0, sd=1))
# By default, R uses mean=0, sd=1
print(qnorm(.81))
# display in graph
qnormGC(.81, region="below", m=0, s=1, graph=TRUE)

# Question: Suppose IQ scores are normally distributed with mean 100 and standard deviation 15. 
# What is the 95th percentile of the distribution of IQ scores?

# Answer: give, mean=100 and sd=15
print(qnorm(0.95, mean=100, sd=15))
# create graph
qnormGC(.95, region="below", m=100, s=15, graph=TRUE)
