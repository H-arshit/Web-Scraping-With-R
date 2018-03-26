setwd("~/Desktop/ML GIT/web scraping/")

library(rvest)

deadpool <- read_html("http://www.imdb.com/title/tt1431045/")

deadpool %>% html_node(".blurb") %>% html_text()

df.1 <- deadpool %>% html_nodes("table") %>% .[[1]] %>% html_table()


df.2 <- deadpool %>% html_nodes("table") %>% .[[2]] %>% html_table()

