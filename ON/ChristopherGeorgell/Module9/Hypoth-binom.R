#solution Ex1
#you roll the die 300 times and throw a total of 60 sixes
#to perform the test, use command:
results<-binom.test(60,300,1/6,alternative="greater")
print(results)
if(results$p.value>0.05){
    print("dont reject null hypothesis")
} else {
    print("reject null hypothesis")
}

#solution Ex2
#our null hypoth is prob of getting a heads or tails is 50%
#so p=0.5
res<-binom.test(48,100,0.5,alternative="two.sided")
print(res)
if(res$p.value>0.05){
    print("dont reject null hypothesis")
}else {
    print("reject null hypothesis")
}