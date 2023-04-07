inverse_cauchy <- function(u, sigma, mu) {
  sigma * tan(pi * (u - (1/2))) + mu
}

# generate 10000 random uniforms
unifs <- runif(10000)

# set distribution parameters
sigma <- 1 # scale
mu <- 0 # location

# generate random variables
xsim <- sapply(unifs, inverse_cauchy, sigma = sigma, mu = mu)

set.seed(1)
rcauchy_vals <- rcauchy(10000, location = 0, scale = 1)

tibble(`Inverse-transform-generated` = xsim, `Base-R generated` = rcauchy_vals) %>%
  pivot_longer(everything(), names_to = "method") %>%
  ggplot(aes(value)) +
  geom_histogram(bins = 50) +
  scale_x_continuous(limits = c(-25, 25)) +
  facet_wrap(~ method) +
  theme_bw() +
  labs(x = "x", y = "Frequency")
