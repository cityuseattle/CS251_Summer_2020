#Solution-Ex1
#Find the probability of more than 2 successes during trials where the
#probability of success on each trial is 0.5
res <- pbinom(2, size=5, prob=.5, lower.tail=FALSE)
print(res)

#Solution-Ex2
#Find the probability of 4 or fewer successes during 10 trials where the
#Probability of success on each trial is 0.3
result <- pbinom(4, size=10, prob=.3)
print(result)

#Solution-Ex3
#The probability of four or less questions
#Answered correctly by random in a twelve question multiple choice
print(pbinom(4,size=12,prob=0.2))
