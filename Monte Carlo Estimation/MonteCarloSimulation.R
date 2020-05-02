#######################################################################
## Project: Bayesian Statistics
## Script purpose: Approximate properties of various normal, gamma, and beta distributions.
## Date: 2020-05-02
## Author: Rahul Sharma
#######################################################################

set.seed(1)

n = 1e6
mean = 0
sd = 1

theta = rnorm(n, mean, sd)
hist(theta, prob=TRUE, main = "Normal Distribution")
curve(dnorm(x, mean, sd), col="red", add=TRUE)

# comparing sample mean with the parameter ??, as defined above
mean(theta)
mean

# comparing sample variance with the true expected variance defined as ??^2
var(theta)
sd^2

shape = 2
rate = 1/3

theta = rgamma(n, shape, rate)
hist(theta, prob=TRUE, main = "Gamma Distribution")
curve(dgamma(x, shape, rate), col="red", add=TRUE)

a = 5
b = 3

theta = rbeta(n, a, b)
hist(theta, prob=TRUE, main = "Beta Distribution")
curve(dbeta(x, a, b), col="red", add=TRUE)

# comparing sample mean with true expected value
# formula for mean beta distribution = a/(a+b)
mean(theta)
a/(a + b)
