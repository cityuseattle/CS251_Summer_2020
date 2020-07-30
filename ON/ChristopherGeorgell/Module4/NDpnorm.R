library(tigerstats)

#1)find percentage of otters that weigh less than 22 lbs in a 
#population with mean = 30 and sd = 5
print(pnorm(22,m=30,s=5))
#to see the answer using graph
pnormGC(22,region="below",m=30,s=5,graph=TRUE)

#2) find percentage of plants that are between 14 and 10 inches tall
#subtract percentage of 10 from percentage of 14
#population with mean=13, sd=2
print(pnorm(14,m=13,s=2)-pnorm(10,m=13,s=2))
pnormGC(c(10,14),region="between",m=13,s=2,graph=TRUE)

#3) find percentage of males that are taller than 74 inches in a 
#population with mean=70 and sd=2
print(1-pnorm(74,m=70,s=2))
#another way to calculate that is:
print(pnorm(74,m=70,s=2, lower.tail=FALSE))
pnormGC(74,region="above",m=70,s=2, graph=TRUE)