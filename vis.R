# Load necessary libraries
library(tidyverse)

# Volume Visualization
df %>% 
  ggplot(aes(x = time, y = vol, color = type)) +
  geom_line() +
  labs(title = "Volume over Time",
       x = "Time",
       y = "Volume",
       color = "Transaction Type") +
  theme_minimal()

# Value Visualization
df %>% 
  ggplot(aes(x = time, y = trade, color = type)) +
  geom_line() +
  labs(title = "Trade Value over Time",
       x = "Time",
       y = "Trade Value",
       color = "Transaction Type") +
  theme_minimal()



