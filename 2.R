setwd("~/Desktop/ML GIT/web scraping/")
library(rvest)

mac <- read_html("https://en.wikipedia.org/wiki/MacOS")


p_tag_data <- mac %>% html_nodes("p") %>% html_text()

table.df <- mac %>% html_nodes("table") %>% .[[3]] %>% html_table()

table.df2 <- mac %>% html_nodes("table") %>% .[[4]] %>% html_table()
