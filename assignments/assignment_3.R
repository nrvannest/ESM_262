# Assingment 3 2/16/2022
library(here)
library('purrr')

source(here('working', 'power_gen_function.R'))

## Approach 1

possible_cars <- data.frame(name = c("A", "B", "C", "D"),
                           mass=c(10000, 65000, 38000, 5000),
                           area = c(22, 30, 22, 10))

speed_base = 100 * 0.28

possible_cars$power <- power_gen(V = speed_base, 
                                 A = possible_cars$area, 
                                 m = possible_cars$mass)

## Approach 2
nsample <- 200
mean_speed <- log(100*0.277)

speeds <- rlnorm(mean=mean_speed, sd=0.1*mean_speed, nsample)
summary(speeds)

powerall2 <- pmap(list(A = possible_cars$area, m=possible_cars$mass), power_gen, V=speeds)

powerall2 <- as.data.frame(powerall2, col.names=possible_cars$name)

powerall2 <- colMeans(powerall2)

## Approach 3

powerall3 = as.data.frame(matrix(nrow=length(speeds), 
                                 ncol= nrow(possible_cars)))

for (i in 1:nrow(possible_cars)) {
  powerall3[,i] = power_gen(A=possible_cars$area[i], 
                            m=possible_cars$mass[i], 
                            V=speeds)
}

powerall3 <- colMeans(powerall3)

power_df <- cbind(possible_cars, powerall2, powerall3)

write.csv(power_df, "power_estimates_vannest.csv")


