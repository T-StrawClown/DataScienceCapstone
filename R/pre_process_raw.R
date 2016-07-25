library(tm)
raw.vector <- c(raw.blogs, raw.news, raw.twitter)
raw.vector <- tolower(raw.vector)
raw.vector <- gsub("@42@", "", iconv(raw.vector, "UTF-8", "ASCII", "@42@"))

corpus <- Corpus(x = VectorSource(raw.vector), readerControl = list(language = "en"))
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removePunctuation)
#corpus <- tm_map(corpus, removeWords, stopwords("en"))


raw.df <- data.frame(content = unlist(lapply(corpus, "[", "content")), stringsAsFactors = F)