# Sample Mean: $100,200
# Population SD: $15,000
# Standard Error: $2,739
# Sample Size: 30
# z-score: -4.67
# H0 (Glassdoor data): $113,000
# Two-sided test

sal <- read.csv("ztest-a.csv")
# Get the sample mean from the summary of the file
print(summary(sal))

# Create a function that calcuate z test
z.test <- function(a, mu, sd){
    zeta <- (mean(a) - mu) / (sd/sqrt(length(a))) # n = length(a)
    return(zeta)
}

z <- z.test(a = sal$salary, mu = 113000, sd = 15000)
print("z value is equal to: ")
print(z)

alpha <- .05
z.half.alpha <- qnorm(1-alpha/2)
print("-z.half.alpha, z.half.alpha is equal:")
print(c(-z.half.alpha, z.half.alpha))

if(z <= -z.half.alpha || z >= z.half.alpha){
    print("reject the null hypothesis")
} else {
    print("do not reject the null hypothesis")
}
