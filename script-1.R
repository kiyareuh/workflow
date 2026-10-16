result <- sum(1:10)
print(result)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 1.1) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "The price of a diamond",
    subtitle = "Diamond prices generally rise with carat, with variation by cut",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut quality",
    caption = "Each point represents one diamond from ggplot2::diamonds."
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 10, height = 7, dpi = 300)
