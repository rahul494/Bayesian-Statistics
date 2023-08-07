# Suppose we have a disease spreading into our population at a rate of 1%
# and the probability of a true positive is 95% (someone is tested positive and actually has the disease)
# and the probability of a true negative is also 95% (someone is tested negative and actually doesn't have the disease) 

# What is the probability of a person having the disease given a positive test result?

P_D <- 0.01  # Prevalence of the disease
P_T_given_D <- 0.95  # Sensitivity
P_notT_given_notD <- 0.95  # Specificity

# Calculate the complement probabilities
P_notD <- 1 - P_D
P_T_given_notD <- 1 - P_notT_given_notD

# Formula for Bayes theorem
P_D_given_T <- (P_T_given_D * P_D) / (P_T_given_D * P_D + P_T_given_notD * P_notD)
P_D_given_T
