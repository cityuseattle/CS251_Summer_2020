#Solution
#Since only one out of five possible answers is correct, the probability of
#answering a question correctly by random is 1/5=0.2. We can find the probability of having
#exactly 4 correct answers by random attempts as follows.
print(dbinom(4,size=12,prob=0.2))

#Solution-Ex2
#find the probability of 10 successes during 12 trials where the probability of
#success on each trial is 0.6
print(dbinom(10,size=12,prob=0.6))

#Solution-Ex3
#find the probability of 7 successes during 20 trials where the probability of
#success on each trial is 0.5
print(dbinom(7,size=20,prob=.5))
