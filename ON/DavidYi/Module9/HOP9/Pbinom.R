#Solution - EX1
#Find the probabilty of more than 2 successes during 5 trials where the
#probabilty of success on each trail is 0.5
res <- pbinom(2, size=5, prob=0.5, lower.tail=FALSE)
print(res)

#Solution - EX2
#Find the probabilty of 4 or fewer successes during 10 trails where the
#probabilty of success on each trail is 0.3
result <- pbinom(4, size=10, prob=0.3)
print(result)

#Solution - EX3
#The probabilty of four or less questions
#answered correctly by random in a twelve question multiple choice
print(pbinom(4, size=12, prob=0.2))