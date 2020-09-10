#calculate theoretical probability of 6 babies born in a day 
#with historic average of 4.5 babies born everyday
print(dpois(6,4.5))

#output means that theoretical prob of 6 babies born
#is about 13%

#simulate births for a year (n=365) using rpois()
#and compare the proportion of days in which there were 6 births
#to the theoretical prob we calculated above
library(dplyr)
library(ggplot2)

set.seed(2)

babies<-data.frame('data'=rpois(365,4.5))

result<- babies %>% ggplot()+
    geom_histogram(aes(x=data,
                        y=stat(count/sum(count)),
                        fill=data==6),
                    binwidth=1,
                    color='black',)+
    scale_x_continuous(breaks=0:10)+
    labs(x="Number of babies born per period",
        y="Proportion",
        title="365 simulated births in a hospital with Pois(lambda=4.5)")+
    theme_bw()

print(result)

#to see the simulated result is equal to the output of the 
#dpois(6,4.5)
print(babies %>% dplyr::summarize(six_babies=sum(babies$data==6)/n()))
