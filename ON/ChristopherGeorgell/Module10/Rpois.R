#rpois() returns n randomly generated dnumbers that follow a 
#poisson dist with average number of lambda successes
print(rpois(1,10))

#generate 1000 random observations with the same value for lambda
#and plot the distribution
library(dplyr)
library(ggplot2)

set.seed(2)

poisson_data<- data.frame('data'=rpois(1000,10))

result<- poisson_data %>% ggplot()+
    geom_histogram(aes(x=data,
                        y=stat(count/sum(count))),
                        color='black',
                    binwidth=1)+
    geom_vline(xintercept=10,
                size=1,
                linetype='dashed',
                color='red')+
    theme_bw()+
    labs(x="Number of successes per period",
        y="Proportion",
        title="1000 samples of Pois(lambda=10)")
