# twitter_corpus

An aggregated corpus of tweets.   

## How are these tweets collected ? 

This corpus is automatically collected with R, and compiled here. Tweets are collected every hour, and pushed here daily.  

On each iteration of the collect, the first worldwide Twitter trend is taken, and 500 tweets are searched with this term. The results are then bind to the archives. 

The object is saved in csv, and .rda. 

## How to load it in R 

```{r}
corpus <- read.csv("https://github.com/ColinFay/twitter_corpus/raw/master/twitter_corpus.csv")
download.file(url = "https://github.com/ColinFay/twitter_corpus/raw/master/twitter_corpus.rda", destfile = "corpus.rda")
load("~/corpus.rda")
```

## Reuse

Feel free to use this corpus. 
