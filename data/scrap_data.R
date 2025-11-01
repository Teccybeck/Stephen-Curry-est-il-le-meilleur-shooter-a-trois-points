library(rvest)
library(dplyr)
library(tidyverse)
library(here) 


page <- read_html("https://www.basketball-reference.com/leaders/fg3_pct_career.html#nba")

data <- page %>%
  html_table(fill = TRUE)

fg3_pct_data <- data[[1]]

write_csv(fg3_pct_data, file = here::here("data/fg3_pct.csv"))



page <- read_html("https://www.basketball-reference.com/leaders/fg3_career.html#tot")

data <- page %>%
  html_table(fill = TRUE)

fg3_data <- data[[1]]

write_csv(fg3_data, file = here::here("data/fg3.csv"))



page <- read_html("https://www.basketball-reference.com/leaders/fg3_season.html")

data <- page %>%
  html_table(fill = TRUE)

fg3_season_data <- data[[1]]

write_csv(fg3_season_data, file = here::here("data/fg3_season.csv"))



page <- read_html("https://www.basketball-reference.com/leaders/fg3a_season.html")

data <- page %>%
  html_table(fill = TRUE)

fg3a_season_data <- data[[1]]

write_csv(fg3a_season_data, file = here::here("data/fg3a_season.csv"))
