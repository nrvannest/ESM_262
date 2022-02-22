# class work 2/16/2022

fert_app <- rnorm(mean = 5, sd = 0.5, n = 10)

TP <- 20

# Loop without function
a <- c()
for(i in 1:10){
  a[i] <- 1.8*(fert_app[i]^2)-0.5*fert_app[i]+0.3*TP
}
sum(a)

# Function method
yield <- function(fert, TP = 20){
  y = c()
  y = 1.8*(fert^2)-0.5*fert+0.3*TP
  return(sum(y))
}
yield(fert = fert_app)



