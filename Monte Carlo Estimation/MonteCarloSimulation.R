#######################################################################
## Project: Bayesian Statistics
## Script purpose: Approximate properties of various normal, gamma, and beta distributions.
## Date: 2020-05-02
## Author: Rahul Sharma
#######################################################################

#######################################################################
# Normal Distribution
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

#######################################################################
# Gamma Distribution
#######################################################################

a = 2
b = 1/3

theta = rgamma(n, a, b)
hist(theta, prob=TRUE, main = "Gamma Distribution")
curve(dgamma(x, a, b), col="red", add=TRUE)

# comparing sample mean with the true expected mean defined as E[X] = a/b
mean(theta)
a/b

# comparing sample variance with the true expected variance defined as var[X] = a/b^2
var(theta)
a/b^2

#######################################################################
# Beta Distribution
#######################################################################

a = 5
b = 3

theta = rbeta(n, a, b)
hist(theta, prob=TRUE, main = "Beta Distribution")
curve(dbeta(x, a, b), col="red", add=TRUE)

# comparing sample mean with the true expected mean defined as E[X] = a/(a+b)
mean(theta)
a/(a + b)

# comparing sample variance with the true expected variance defined as var[X] = a*b/((a+b)^2*(a+b+1))
var(theta)
a*b/((a+b)^2*(a+b+1))

