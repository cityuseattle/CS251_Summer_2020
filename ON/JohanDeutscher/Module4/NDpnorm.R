library(tigerstats)

#find percentage of otters that weigh less than 22 lbs in a pop
#mean=30 and sd=5
print(pnorm(22,mean=30, sd=5))

#To see the answer using graph
pnormGC(22,region="below",m=30,s=5,graph=TRUE)

#Answer2:find percentage of plants that are less than 14 inches tall, then subtract the
#percentag of plants that are less than 10 inches tall, based on a population
#with mean=13 and sd=2
print(pnorm(14, mean=13,sd=2)-pnorm(10,mean=13,sd=2))
pnormGC(c(10,14),region="between",m=13,s=2,graph=TRUE)

#answer3: find percentage of males that are taller than 74 inches in a pop with
#mean = 70 and sd =2
print(1-pnorm(74,mean=70,sd=2))
#another way
print(pnorm(74,mean=70,sd=2,lower.tail=FALSE))
pnormGC(74,region="above",m=70,s=2,graph=TRUE)