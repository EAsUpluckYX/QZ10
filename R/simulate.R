set.seed(123) 
library(tidyverse)

simulate_data <- function(n = 10000) {
  comments <- sample(x = c(0, 1:100), 
                     size = n,
                     replace = TRUE,
                     prob = c(0.95, rep(0.05/100, 100))) 

  data <- tibble(
    user_id = 1:n,
    comments = comments
  )
  
  return(data)
}


simulated_data <- simulate_data()


is.numeric(simulated_data$comments)
is.numeric(simulated_data$user_id)
nrow(simulated_data) == 10000
all(simulated_data$comments[simulated_data$comments > 0] <= 100 & simulated_data$comments[simulated_data$comments > 0] >= 1)
nrow(simulated_data) == length(unique(simulated_data$user_id))



