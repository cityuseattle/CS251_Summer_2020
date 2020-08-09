mu0<-10000 #hypothesized value
xbar<-9900 #sample mean
sigma<-120 #population standard deviation
n<-30      #sample size
alpha<-.05

z<-(xbar-mu0)/(sigma/sqrt(n)) #test statistic
print("The value of z is equal to")
print(z)

#apply the pnorm function to compute the lower tail p-value of the test stat
#As it turn out to bless
#than the .05 significance level, we reject the null hypothesis that mu >= 10000

pval<-pnorm(z)
print("pval is equal to")
print(pval)

if(pval<alpha)
    print("reject the null hypothses")
