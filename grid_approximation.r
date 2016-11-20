library(ggplot2)
p <- seq(from=0, to=1, length.out = 1000)
prior <- rep(1, 1000)

likelihood <- dbinom(20, size = 100, prob = p)
posterior <- prior * likelihood
posterior <- posterior / sum(posterior)


samples <- sample(p, prob = posterior, size = 1e4, replace = TRUE )

density(samples)
hist(samples)