# Suppose we have a continuous markov chain defined as p(Xt+1|Xt=xt) = N(xt,1)
# In order words, the probability that the next state is Normal with variance equal
# to 1 and mean equal to the current state

n = 100
x = numeric(n)

for (i in 2:n) {
  x[i] = rnorm(1, mean=x[i-1], sd=1.0)
}

plot.ts(x)

# We know this simulation is a markov chain, as the transition to the next state Xt+1 is dependent
# on the current state Xt

# Similarly, we can demonstrate other distributions such as the gamma distribution

alpha = 10
theta = 0.25
x = numeric(n)

for (i in 2:n) {
  x[i] = mean(rgamma(n = 100, shape = alpha, scale = theta) <= 3)
}

plot.ts(x)
