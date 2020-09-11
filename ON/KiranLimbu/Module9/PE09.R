# Q1
# size = 90, success = 50, probability = 50%, significance = 0.05
result <- binom.test(50, 90, 0.5, alternative = "two.sided")
print(result)
if (result$p.value > 0.05) {
    print("don't reject the null hypoth")
} else {
    print("Reject the null hypoth")
}

#Q2
# size = 90, success = ?, probability = 50%, significance = 0.05
# requirement: reject the null hypoth
size <- 45:90
for (i in size) {
    res <- binom.test(i, 90, 0.5, alternative = "two.sided")
    if (res$p.value < 0.05) {
        print(res)
        print("The minimum threshold on the number of heads that Rejects the null hypoth")
        print(i)
        break
    }
}

# Q3
# Plot density function of binomial distribution
# n = 90, prob = .5, xlab = 'X', ylab = 'density'
success <- 0:90
plot(success, dbinom(success, prob = 0.5, size = 90), type = "l", xlab = "X", ylab = "Density")