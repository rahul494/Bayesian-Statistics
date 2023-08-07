# Defining the parameters
P_D <- 0.01  # Prevalence of the disease
P_T_given_D <- 0.95  # Sensitivity
P_notT_given_notD <- 0.95  # Specificity

# Calculate the complement probabilities
P_notD <- 1 - P_D
P_T_given_notD <- 1 - P_notT_given_notD

# Apply Bayes theorem
P_D_given_T <- (P_T_given_D * P_D) / (P_T_given_D * P_D + P_T_given_notD * P_notD)

print(P_D_given_T)
