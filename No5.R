x = 3

# No 5a
dexp(x = 3, rate = 1, log = FALSE)

# No 5b
set.seed(1)
par(mfrow=c(2,2))
set.seed(1)
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))

# No 5c
