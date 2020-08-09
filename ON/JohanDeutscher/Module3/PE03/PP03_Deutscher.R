# descriptive_function(list, char, num)
# The requirements of the function are as follows: 

# The function has three arguments. The first argument is a list of numbers in doubles. The second argument is a character, and the last argument is a number.
# If char is ‘m ’, the function prints the arithmetic mean of the list.
# If char is ‘v’, the function prints the variance of the list.
# If char is ‘s’, the function prints the standard deviation of the list.
# If char is ‘z’, the function prints the z-score of num with respect to the list.
# You can use built-in R functions including mean(), var() and sd(). For more challenge, you can try not to use them.
# Sample test cases:

# > descriptive_function(rivers, 'm', 7)

# [1] 591.1844

PP03_function<-function(a,h,c) {
    m<-mean(a)
    print(m)
    V<-var(a)
    print(V)
    s<-sd(a)
    print(s)
    r<-scale(a)
    z<-((c-m)/s)
    print(z)
    return(h)}