#the MLE in the roulette problem is the peak of the likelihood
#distribution. Here we uncover an entire spectrum comprising
#all possible ways f(B)=0.8 could have been produced
rangeP<-seq(0,1,length.out=100)
plot(rangeP,dbinom(x=8,prob=rangeP,size=10),type="l",xlab="P(black)",ylab="Density")
#prior distribution
lines(rangeP,dnorm(x=rangeP,mean=.5,sd=.1)/15,col="red")

#computing product between likelihood and prior
#we used ten roulette draws (black) to update our prior (red)
#into the unstandardized posterior (green)
lik<-dbinom(x=8,prob=rangeP,size=10)
prior<-dnorm(x=rangeP,mean=.5,sd=.1)
lines(rangeP,lik*prior,col="green")

#we now finalize the roulette example by standardizing the
#posterior computed above and comparing all pieces of 
#the theorem
unstdPost<-lik*prior
stdPost<-unstdPost/sum(unstdPost)
lines(rangeP,stdPost,col="blue")
legend("topleft",legend=c("Lik","Prior","Unstd Post","Post"),text.col=1:4,bty="n")