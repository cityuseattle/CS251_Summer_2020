mu0 <- 10000        #hypotehsized value
xbar <- 9900        #sample mean
sigma <- 120        #population standard deviation
n <- 30             #sample size
alpha <- .05

z <- (xbar-mu0)/(sigma/sqrt(n)) #test statistic
print("z is equal to")
print(z)

#apply the pnorm function to compute the lower tail p-value of the test statistic.
#As it turns out to be less
#than the .05 signficance level, we reject the null hypotehsis that μ ≥ 10000

pval <- pnorm(z)
print("pval is equal to")
print(pval)

if(pval < alpha)
    print("Reject the null hypothesis.")