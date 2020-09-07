# You roll the die 300 times and throw a total of 60 sixes.
# To perform the test, use the command:
result <- binom.test(60, 300, 1/6, alternative="greater")
print(result)
if(result$p.value > 0.05){
    print("don't reject the null hypoth")
} else {
    print("Reject the null hypoth")
}

# Solution-Ex2
# Our null hypoth is probability of getting a head or tail is 50%, so p=0.5
res <- binom.test(48, 100, 0.5)
print(res)
if(res$p.value > 0.05){
    print("don't reject the null hypoth")
} else {
    print("Reject the null hypoth")
}