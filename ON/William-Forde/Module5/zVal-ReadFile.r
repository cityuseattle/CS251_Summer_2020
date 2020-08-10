#sample mean: $100,200
#population sd: $15,000
#standard error: $2,739
#sample size: 30
#z-score: -4.67
# H0 (Glassdoor data): $113,000
#two-sided test

sal <- read.csv("ztest-a.csv")
#get the sample mean from the summary of the file
print(summary(sal))

#create a function that calculates z test
z.test <- function(a, mu, sd){
    zeta <- (mean(a) - mu) / (sd/sqrt(length(a))) # n = length(a)
    return(zeta)
}

z <- z.test(a = sal$salary, mu = 113000, sd = 15000)
print("z value is equal to: ")
print(z)

alpha <- 0.05
z.half.alpha <- qnorm(1-alpha/2)
print("-z.half.alpha, z.half.alpha is equal:")
print(c(-z.half.alpha, z.half.alpha))

if(z <= -z.half.alpha || z >= z.half.alpha){
    print("Reject the null hypothesis.")
} else {
    print("Do not reject the null hypothesis.")
}