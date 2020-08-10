mu0 <- 15.4         #hypothesized value
xbar <- 14.6        #sample mean
s <- 2.5            #sample standard deviation
n <- 29             #sample size

t <- (xbar - mu0)/(s/sqrt(n))   #test statistic
print("t is equal to:")
print(t)

#Compute the critical values at 0.05 significance value
alpha <- 0.05
t.half.alpha <- qt(1-alpha/2, df=n-1)
print("t.half.alpha value is equal to")
print(c(-t.half.alpha, t.half.alpha))

if(t <= -t.half.alpha || t >= t.half.alpha){
    print("Reject the null hypothesis that the mean penguin weight does not differ from last year.")
} else {
    print("Do not reject the null hypothesis that the mean penguin weight does not differ from last year.")
}