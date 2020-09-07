#Solution
#Since only one out of five possible answers is correct, the probability of 
#answering a question correctly by random is 1/5=0.2. We can find the probability of having
#exactly 4 correct answers by random attemps as follows
print(dbinom(7, size=20, prob=0.5))