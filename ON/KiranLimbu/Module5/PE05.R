# given
# 1. temp_max_pe5.csv = daily max temp of july 2015
# 2. between 2012 and 2014 avg max temp in july 25.3 degree celsius
# 3. population variance ?
# 4. significance level of 0.01
# 5. H0: The average max temp of seattle in July 2015 is equal to the avg max temp of July between 2012 and 2014

data <- read.csv(file="temp_max_pe5.csv", header=TRUE)
temps <- data[,'temp_max']

mu0 <- 25.3             # hypothesized value
xbar <- mean(temps)     # sample mean
n <- length(temps)      # sample size
s <- sd(temps)          # sample standard deviation
alpha <- 0.01

# t-statistic
t <- (xbar - mu0) / (s/sqrt(n))
print("t is equal to")
print(t)

# critical values for two sided because alternate hypothesis says not equal
# if it said less or more it would be one side test
t.half.alpha = qt(1-alpha/2, df=n-1)
print("t.half.alpha values is equal to")
print(c(-t.half.alpha, t.half.alpha))

# Verify null hypothesis
if (t <= -t.half.alpha || t >= t.half.alpha) {
    print("reject the null hypothesis that the average max temp of seattle in July 2015 is equal to the avg max temp of July between 2012 and 2014")
} else {
    print("do not reject the null huphothesis that the average max temp of seattle in July 2015 is equal to the avg max temp of July between 2012 and 2014")
}

# Calculate p-value
pval = pt(t, df=n-1)
print("pval is equal to:")
print(pval)    # lower tail p-value

if (pval < alpha) {
    print("Reject the null hypothesis")
} else {
    print("Don't reject the null hypothesis")
}