#seperate years

#2017
df_2017 <- df %>%
  filter(year(time) == 2017)


# 2017  Volume Visualization
df_2017 %>% 
  ggplot(aes(x = time, y = vol, color = type)) +
  geom_line() +
  labs(title = "Volume over Time",
       x = "Time",
       y = "Volume",
       color = "Transaction Type") +
  theme_minimal()

# 2017 Value Visualization
df_2017 %>% 
  ggplot(aes(x = time, y = trade, color = type)) +
  geom_line() +
  labs(title = "Trade Value over Time",
       x = "Time",
       y = "Trade Value",
       color = "Transaction Type") +
  theme_minimal()


#2018
df_2018 <- df %>%
  filter(year(time) == 2018)


# 2018  Volume Visualization
df_2018 %>% 
  ggplot(aes(x = time, y = vol, color = type)) +
  geom_line() +
  labs(title = "Volume over Time",
       x = "Time",
       y = "Volume",
       color = "Transaction Type") +
  theme_minimal()

# 2018 Value Visualization
df_2018 %>% 
  ggplot(aes(x = time, y = trade, color = type)) +
  geom_line() +
  labs(title = "Trade Value over Time",
       x = "Time",
       y = "Trade Value",
       color = "Transaction Type") +
  theme_minimal()

#2019
df_2019 <- df %>%
  filter(year(time) == 2019)


# 2019  Volume Visualization
df_2019 %>% 
  ggplot(aes(x = time, y = vol, color = type)) +
  geom_line() +
  labs(title = "Volume over Time",
       x = "Time",
       y = "Volume",
       color = "Transaction Type") +
  theme_minimal()

# 2019 Value Visualization
df_2019 %>% 
  ggplot(aes(x = time, y = trade, color = type)) +
  geom_line() +
  labs(title = "Trade Value over Time",
       x = "Time",
       y = "Trade Value",
       color = "Transaction Type") +
  theme_minimal()

