setwd("~/Desktop/ML GIT/web scraping/web scraping with js/")

library(rvest)


pg <- read_html("http://web.archive.org/web/20110831155858/http://aws.amazon.com/ec2/pricing")

table1 <- pg %>% html_nodes("#onDemandPricing, .type ") %>% html_text()




url <- ("http://web.archive.org/web/20110831155858/http://aws.amazon.com/ec2/pricing")
connection <- "amazon_pricing.js"
writeLines(sprintf("var page = require('webpage').create();
                   page.open('%s' , function(){
                    console.log(page.content);
                    phantom.exit();
                   })" , url) , con = connection);



system_input <- "phantomjs amazon_pricing.js > amazon_pricing.html"

system(system_input)




page_with_all_content <- read_html("amazon_pricing.html")


table_1_loaded <- page_with_all_content %>% html_nodes(xpath = "(//table)[4]") %>% html_table()
table_2_loaded <- page_with_all_content %>% html_nodes(xpath = "(//table//td)") %>% html_text()
table_3_loaded <- page_with_all_content %>% html_nodes(xpath = "(//table)//tr") %>% html_text()
