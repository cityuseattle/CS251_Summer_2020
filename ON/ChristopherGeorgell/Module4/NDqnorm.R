#find the Z-score of teh 81th quantile of the standard
#normal distribution
print(qnorm(.81,m=0,s=1))

#by default, R uses mean=0 and sd=1
print(qnorm(.81))
#to see the answer using a graph
qnormGC(.81,region="below",m=0,s=1,graph=TRUE)

#1)find IQ score of 95th percentile of normal distribution with
#mean=100 and sd=15
print(qnorm(.95,m=100,s=15))
#to see answer using a graph
qnormGC(.95,region="below",m=100,s=15,graph=TRUE)