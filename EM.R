dataFile  <- "data.csv"
data <- read.csv(file=dataFile, head=TRUE, sep=",")

library(mclust)
numIterations  <- 10
numComponents  <- 2
model <- Mclust(data,
		c(numComponents),
		control=emControl(itmax=c(numIterations))
	)

meansFile <- "means.csv"
write.csv(model$parameters$mean, meansFile)
