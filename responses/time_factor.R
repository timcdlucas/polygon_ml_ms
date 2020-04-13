
# Case 1
# Sampling is biased to towards the present
t <- rep(c(1, rep(2, 3)), each = 100)

# locations (and therefore temperature) are 
#   also sampled with biases, but the bias
#   is independant of time
temp <- rep(c(1, rep(2, 3)), times = 100) 

baseline_prev <- t * 0.1

prev <-  baseline_prev * temp + rnorm(400, 0, 0.01)

# 1 unit increase in temperature increases
#   prevalence by a factor of 2.
#   This is true despite the baseline
#   prevalence that is determined by time.
plot(prev ~ temp)


samples <- rbinom(400, 1000, prev)

d <- data.frame(positive = samples, n = 1000, temp = temp)

m1 <- glm(cbind(samples, n) ~ temp, data = d, family = binomial)
# we recover the factor of 2.
exp(m1$coefficients[2])



# Case 2
# Sampling is still biased to towards the present
t <- rep(c(1, rep(2, 3)), each = 100)

# *However, if sampling in space changes through time*
temp <- c(rep(c(1, 1, 1, 2), each = 25),
          rep(c(1, 2, 2, 2), each = 75))

baseline_prev <- t * 0.1

prev <-  baseline_prev * temp + rnorm(400, 0, 0.01)

# 1 unit increase in temperature increases
#   prevalence by a factor of 2.
#   This is true despite the baseline
#   prevalence that is determined by time.
plot(prev ~ temp)


samples <- rbinom(400, 1000, prev)

d <- data.frame(positive = samples, n = 1000, temp = temp)

m2 <- glm(cbind(samples, n) ~ temp, data = d, family = binomial)

# estimates are now biased.
exp(m2$coefficients[2])


