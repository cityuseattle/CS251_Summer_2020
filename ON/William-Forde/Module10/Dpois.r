print(dpois(6, 4.5))

# Simulating births in this hospital for a year (n = 365) using rpois()
library(dplyr)
library(ggplot2)

set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

result <- babies %>% ggplot() +
    geom_histogram(
        aes(
            x = data,
            y = stat(count / sum(count)),
            fill = data == 6),
        binwidth = 1,
        color = 'black',
        ) +
    scale_x_continuous(breaks = 0:10) +
    labs(
        x = 'Number of babies born per period',
        y = 'Proportion',
        title = '365 simulated births in a hospital with Pois(lambda = 4.5)'
        )
    theme_bw()

print(result)

# To see the simulated result is equal to the output of (dpois(6, 4.5))
print(babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n()))