#solution Ex1
#find prob of more than 2 successes during 5 trials where
#the prob of success on each trial is 0.5
print(pbinom(2,5,0.5,lower.tail=FALSE))

#solution Ex2
#find prob of 4 or fewer successes during 10 trials where 
#the prob of success on each trial is 0.3
print(pbinom(4,10,0.3))

#solution Ex3
#find prob of 4 or less questions answered correctly 
#by random in a 12 question multiple choice
print(pbinom(4,12,0.2))

