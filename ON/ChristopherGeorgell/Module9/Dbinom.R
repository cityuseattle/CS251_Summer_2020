#solution Ex1
#since only one out of the five possible answers is correct,
#the probability of answering a question correctly is 
#1/5=0.2. We can find the probability of having exactly 4 
#correct answers by random attempts as follows
print(dbinom(4,12,0.2))

#solution Ex2
#find the probability of 10 successes during 12 trials 
#where the probability of success of each trial is 0.6
print(dbinom(10,12,0.6))

#solution Ex3
#find prob of 7 successes during 20 trials where the prob of 
#success of each trial is 0.5
print(dbinom(7,20,0.5))

