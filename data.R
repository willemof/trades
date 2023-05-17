#options

options(scipen = 999)

#data

library(tidyverse)


df <- read_csv(file = "./trades.csv")

#transformation

df <- df %>%
  dplyr::mutate(trade = vol*cost, .keep = "all")




# Calculate holdings over time
df <- df %>%
  arrange(time) %>%
  group_by(pair) %>%
  mutate(holdings = cumsum(ifelse(type == "buy", vol, -vol)))

# Calculate gains and losses over time
df <- df %>%
  mutate(gain_loss = ifelse(type == "sell", vol * price - cost, NA)) %>%
  group_by(pair) %>%
  mutate(cumulative_gain_loss = cumsum(ifelse(is.na(gain_loss), 0, gain_loss)))
