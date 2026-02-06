library(ggplot2)

penglings <- read.csv("../penglings.csv")

chart <- ggplot(penglings, aes(
  x = flipper_length_mm,
  y = body_mass_g,
  size = bill_length_mm,
  color = species
)) +
  geom_point(alpha = 0.8) +
  labs(
    x = "Flipper Length (mm)",
    y = "Body Mass (g)"
  ) +
  scale_size(
    range = c(2, 8),
    breaks = c(40, 50),
    name = "bill_length_mm"
  ) +
  scale_color_manual(values = c(
    Adelie = "#F28E2B",
    Chinstrap = "#7B3C9B",
    Gentoo = "#1B9E77"
  )) +
  theme_minimal(base_family = "Comic Sans MS")

ggsave("chart.png", chart, width = 8, height = 5, dpi = 150)
