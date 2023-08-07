# Function that defines the standard normal distribution
std_normal <- function(x) {
  exp(-0.5 * x^2) / sqrt(2 * pi)
}

# Metropolis-Hastings Algorithm
metropolis_hastings <- function(initial_value, n_iter) {
  # Allocate memory for our samples
  samples <- numeric(n_iter)
  current_value <- initial_value

  for (i in 1:n_iter) {
    # Proposal for new value
    proposed_value <- rnorm(1, current_value, 1)

    # Calculate acceptance probability
    acceptance_probability <- min(1, std_normal(proposed_value) / std_normal(current_value))

    # Use a uniform distribution to decide whether to accept the new value
    if (runif(1) <= acceptance_probability) {
      current_value <- proposed_value
    }

    # Store the current value
    samples[i] <- current_value
  }

  samples
}

# Generate 10000 samples
samples <- metropolis_hastings(0, 10000)

# Plot histogram of samples
hist(samples, probability = TRUE, breaks = 30, 
     main = "Histogram of Samples", xlab = "Value")

# Overlay the true standard normal distribution
curve(dnorm, add = TRUE, col = "red")
