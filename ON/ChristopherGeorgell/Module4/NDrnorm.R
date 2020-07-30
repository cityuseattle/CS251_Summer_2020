#generate vector of 5 normally distributed random variables
#with mean=10 and sd=2
five<-rnorm(5,m=10,s=2)
print(five)

##########################################

#generate vector of 1000 normally distributed random 
#variables with mean=50, and sd=15
narrowDistribution<-rnorm(1000,m=50,s=15)

#generate vector of 1000 normally distributed random 
#variables with mean=50, and sd=25
wideistribution<-rnorm(1000,m=50,s=25)

#generate two histagrams to view these two distributions side 
#by side, specify 50 bars in histagram and x-axis limits 
#of -50 to 150
par(mfrow=c(1,2)) #one row, two columns
hist(narrowDistribution,breaks=50,xlim=c(-50,150))
hist(wideistribution,breaks=50,xlim=c(-50,150))