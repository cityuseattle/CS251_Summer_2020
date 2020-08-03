#find the Z-score of the 81st quantile of the std norm dist
print(qnorm(.81,mean=0,sd=1))

#by default, R use mean=0 and sd=1
print(qnorm(.81))

#graph
qnormGC(.81,region="below",m=0,s=1,graph=TRUE)

#find the IQ score of the 95th quantile of the norm dist with mean 100 and sd=15
print(qnorm(0.95,mean=100,sd=15))

#graph
qnormGC(.95,region="below",m=100,sd=15,graph=TRUE)