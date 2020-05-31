# Suppose we are conducting statistics for a automotive insurance company. According to government collected
# information, a random driver has a 2% chance of having been in a collision accident within the 
# past 12 months. 
#
# According to company data, individuals labelled as high-risk have a 60% chance of being labelled high-risk 
# again in the following year, and 40% chance of being changed to low-risk.
#
# Individuals labelled as low-risk have a 15% chance of being labelled high-risk in the following
# year, and 85% chance of being changed to low-risk again.

c = c(0.02, 0.98)


Q = matrix(c(0.6, 0.4,
             0.15, 0.85), 
           nrow=2, byrow=TRUE)

c %*% Q

c %*% Q %*% Q
