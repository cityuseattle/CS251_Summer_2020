mu0 <- 2             #hypotehsized value
xbar <- 1.8          #sample mean
n <- 10              #sample size
s <- 0.15            #sample standard deviation
alpha <- .01

t <- (xbar-mu0)/(s/sqrt(n)) 
print("t is equal to")
print(t)

#Apply the pt function to compute the lower tail p-value of the test statistic

pval = pt(t, df=n-1)
print("pval is equal to")
print(pval)          #lower tail p-value

if(pval < alpha){
    print("Reject the null hypothesis.")
} else {
    print("Don't reject the null hypothesis.")
}
   