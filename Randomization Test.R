fixed_rates <- c(3.525,3.625,3.383,3.625,3.661,3.791,3.941,3.781,3.660,3.733)
ARM_rates <-c(2.923,3.385,3.154,3.363,3.226,3.283,3.427,3.437,3.746,3.438)
mean_fixed <- mean(fixed_rates)
mean_ARM <- mean(ARM_rates)
observed_diff <- mean_ARM - mean_fixed
abs_observed_diff <- abs(observed_diff)
combined <- c(fixed_rates,ARM_rates)
num_perm <- 1000
perm_diff <- numeric(num_perm)

set.seed(200)

for (i in 1:num_perm){
  indices <- sample(1:length(combined), size = 10, replace = FALSE)
  group1 <- combined[indices]
  group2 <- combined[-indices]
  
  perm_diff[i] <- mean(group1) - mean(group2)
  
}

p_val <- mean(abs(perm_diff) >= abs_observed_diff)

cat("P-value from the permutation test:", p_val, "\n")
