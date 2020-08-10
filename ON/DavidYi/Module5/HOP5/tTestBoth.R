mu0 <- 15.4            #hypothesized value 
xbar <- 14.6           #sample mean
n <- 2.5               #sample size
s <- 29                #sample standard deviation

t <- (xbar-mu0)/(s/sqrt(n))             #test statistics
print("The value of t is equal to") 
print(t)

#compute the critical value at .01 significance level
alpha <- 0.01
t.half.alpha <- qt(1-alpha/2,df=n-1)
print("The value of t.half.alpha is")
print(-t.half.alpha)

if(t <= -t.half.alpha || t >= t.half.alpha){
    print("Reject the null hypothesis that the mean penguin weight doesn't differ from last year.")
} else {
    print("Do not reject the null hypothesis that the mean penguin weight doesn't differ from last year.")
}