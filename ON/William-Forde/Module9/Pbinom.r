# Solution-Ex1
# find the probability of more than 2 successes during 5 trials where
# where the probability of success on each trial is 0.5
res <- pbinom(2, size=5, prob=0.5, lower.tail=FALSE)
print(res)

# Solution-Ex2
# Find the probability of 4 or fewer successes furing 10 trials where
# the probability of success on each tiral is 0.3
result <- pbinom(4, size=10, prob=0.3)
print(result)

# Solution-Ex3
# The probability of four or less questions answered correctly
# by random in a twelve question multiple choice
print(pbinom(4, size=12, prob=0.2))