#generate a vector of 5 normally distributed random variables with mean=10 and sd=2
five<-rnorm(5,mean=10,sd=2)
print(five)

#########################
#generate another vector
narrowDistribution<-rnorm(1000,mean=50,sd=15)

#and another
wideDistribution<-rnorm(1000,mean=50,sd=25)

#generate histograms
par(mfrow=c(1,2)) #one row, two columns
hist(narrowDistribution,breaks=50,xlim=c(-50,150))
hist(wideDistribution,breaks=50,xlim=c(-50,150))

