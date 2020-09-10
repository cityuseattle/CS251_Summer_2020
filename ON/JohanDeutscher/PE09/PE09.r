#In this exercise, we will work with the binomial distribution. Make sure you understand 
#the approach in HOP09.

#• Null hypothesis: coin is unbiased
#• Alternative hypothesis: coin is biased

#1. Suppose you have 50 heads out of 90 coin tosses. 
#Your friend challenges you that your coin is biased. 
#Conduct the binomial test at the significance level of 0.05 
#and find out if the null hypothesis rejected.
result<-binom.test(50,90,1/2,alternative="greater")
print(result)
if(result$p.value>0.05){
    print("don't reject the null hypoth")
}else{
    print("Reject the null hypoth")
}

#2. It is your friend’s turn, and he tosses his coin 90 times. 
#What is the minimum threshold on the number of heads that you can claim 
#that the coin is biased at 0.05 significance level. 
#Show your r code that prints this threshold. (The number of heads must exceed 45.)
#result=0
#a=0
#print(a)
#print(result)
for(i in 0:90){
    a=i+1
    result<-binom.test(a,90,1/2,alternative="greater")
 if(result$p.value<0.05){
     break
 }
}
print(result$statistic)



#3. Plot a density function of the binomial distribution having parameters 
#n=90 and prob=1/2. That pertains to 90 coin tosses and 0.5 probability of having a head. 
#(Use xlab = 'X' and ylab='density'.)

#print(dbinom(90,size=90,prob=0.5))
rangeP<-seq(1,90,length.out=90)
plot(rangeP,dbinom(x=rangeP,size=90,prob=0.5),type="l",xlab="X",ylab="density")
