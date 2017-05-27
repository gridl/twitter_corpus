library(magrittr)
library(dplyr)
library(rtweet)
setwd("/home/colin/Bureau/twitter_corpus")
twitter_corpus <- read.csv("twitter_corpus.csv", stringsAsFactors = FALSE)
trend <- get_trends() %>%
  arrange(desc(tweet_volume))
trend <- trend[1,1]
search <- search_tweets(trend, n = 1000)
search$trend <- trend
search$created_at <- lubridate::ymd_hms(search$created_at)
twitter_corpus <- rbind(twitter_corpus, search) %>% 
  unique()
write.csv(x = twitter_corpus, file = "twitter_corpus.csv", row.names = FALSE)
