# Ex1: generate a random number of trials when flipping a single coin ten times
# rbinom(number of trials, number of coins, probability)
print(rbinom(10, 1, 0.5))

# Solution
# Since only one out of five possible answers is correct, the probability of answering a question correctly by random is 1/5 = 0.2. We can find the probability of having exactly 4 correct answers by random attempts as follows.
print(dbinom(4, size = 12, prob = 0.2))