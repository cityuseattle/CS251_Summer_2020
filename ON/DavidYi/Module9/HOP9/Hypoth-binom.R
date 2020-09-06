#You roll the die 300 times and throw a total of 60 sixes.
#To perform the test, use the command:
result <- binom.test(60, 300, 1/6, alternative="greater")
print(result)
if(result$p.value > 0.05){
    print("Don't reject the null hypothesis.")
} else {
    print("Reject the null hypothesis.")
}

#Solution-EX2
#Our null hypothesis is probabilty of getting a head or tail is 50%, so p=0.5
res <- binom.test(48,100,0.5, alternative="two.sided")
print(res)
if(res$p.value > 0.05){
    print("Don't reject the null hypothesis.")
} else {
    print("Reject the null hypothesis.")
}