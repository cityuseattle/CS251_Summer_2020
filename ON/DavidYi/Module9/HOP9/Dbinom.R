#Solution
#Since only one out of five possible answer is correct, the probability of
#answering a question correctly by random is 1/5=0.2. We can find the probability of having
#exactly 4 correct answers by random attempts as follows.
print(dbinom(4, size=12, prob=0.2))

#Solution - EX2
#Find the probability of 10 successes during 12 trials where the probability of
#success on each trail is 0.6
print(dbinom(10, size=12, prob=0.6))

#Solution - EX3
#Find the probability of 7 successes during 20 trials  where the probabilty of
#Success on each trail is 0.5
print(dbinom(7, size=20, prob=0.5))