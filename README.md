# twitter_corpus

An aggregated corpus of tweets.   

The object is saved in csv, and .rda. 

## How to load it in R 

```{r}
# Download csv
corpus <- read.csv("https://github.com/ColinFay/twitter_corpus/raw/master/twitter_corpus.csv")

# Load the .rda
download.file(url = "https://github.com/ColinFay/twitter_corpus/raw/master/twitter_corpus.rda", destfile = "corpus.rda")
load("~/corpus.rda")
```

## Reuse

Feel free to use this corpus. 
