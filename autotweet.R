library(magrittr)
library(dplyr)
library(rtweet)
setwd("/home/colin/Bureau/twitter_corpus")
load(file = "twitter_corpus.rda")
trend <- get_trends() %>%
  arrange(desc(tweet_volume))
search <- search_tweets(trend[1,1], n = 500)
search$trend <- trend[1,1]
search$created_at <- lubridate::ymd_hms(search$created_at)
twitter_corpus <- rbind(twitter_corpus, search) %>% 
  unique()
save(twitter_corpus, file = "twitter_corpus.rda")
write.csv(x = twitter_corpus, file = "twitter_corpus.csv", row.names = FALSE)
