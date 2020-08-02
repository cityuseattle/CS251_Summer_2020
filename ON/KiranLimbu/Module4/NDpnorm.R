# Question 1: Suppose the weight of a certian species of otters is normally distributed with a mean of 30 lbs
# and a standard deviation of 5 lbs. Approximately what percentage of this species of otters weight less than
# 22 lbs?

# Answer: given, mean=30 and sd=5
print(pnorm(22, mean=30, sd=5)) # result = 0.05479929. Multiply result with 100 to get percentage

# To see the above result in graph
library(tigerstats)
pnormGC(22, region="below", m=30, s=5, graph=TRUE)


# Question 2: Suppose the height of plants in a certain region is normally distributed with a mean of 13inches
# and a standard devition of 2 inches. Approximately what percentage of plants in this region are 
# between 10 and 14 inches tall?

# Answer: given, mean=13 and sd=2
print(pnorm(14, mean=13, sd=2) - pnorm(10, mean=13, sd=2)) # result = 0.6246553. Multiply result with 100 to get percentage

# To see in graph
pnormGC(c(10, 14), region="between", m=13, s=2, graph=TRUE)


# Question 3: Suppose the height of males at a certain school is normally distributed with a mean of 70 inches
# and standard deviation of 2 inches. Approximately what percetage of males at this school are taller then 
# 74 inches?

# Answer: given, mean=70 and sd=2
print(1-pnorm(74, mean=70, sd=2))
# Another way to calculate
print(pnorm(74, mean=70, sd=2, lower.tail=FALSE))
# display in graph
pnormGC(74, region="above", m=70, s=2, graph=TRUE)

