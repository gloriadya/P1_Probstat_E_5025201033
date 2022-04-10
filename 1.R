# No 1a
x = 3
p = 0.20
dgeom(x, p)

# No 1b
mean(rgeom(n = 10000, p) == x)

# No 1c

# No 1d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, p = dgeom(x = 0:10, p)) %>%
  mutate(Failures = ifelse(x == 3, 3, "other")) %>%
  ggplot(aes(x = factor(x), y = p, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")

# No 1e