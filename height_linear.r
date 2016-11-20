library(rethinking)
flist <- alist(height ~ dnorm(mu, sigma), mu ~ dnorm(156, 10), sigma ~ dunif(0, 50))
data("Howell1")
d <- Howell1
heights <- list(d$height)
#map(flist= flist, data = heights)

result = map(flist= flist, data = d)