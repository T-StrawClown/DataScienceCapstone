# data loading
path.source <- "data/final/en_US/"
path.data <- "data/"
file.twitter <- paste0(path.source, "en_US.twitter.txt")
file.blogs <- paste0(path.source, "en_US.blogs.txt")
file.news <- paste0(path.source, "en_US.news.txt")

# read twitter data
ts <- proc.time()
message(paste("Loading data from", file.twitter))
cnn <- file(file.twitter, open = "r")
raw.twitter <- readLines(con = cnn, n = nlines)
close(cnn)
message("Data loaded")
print(proc.time() - ts)

#read blogs data
ts <- proc.time()
message(paste("Loading data from", file.blogs))
cnn <- file(file.blogs, open = "r")
raw.blogs <- readLines(con = cnn, n = nlines)
close(cnn)
message("Data loaded")
print(proc.time() - ts)

# read news
ts <- proc.time()
message(paste("Loading data from", file.news))
cnn <- file(file.news, open = "r")
raw.news <- readLines(con = cnn, n = nlines)
close(cnn)
message("Data loaded")
print(proc.time() - ts)


