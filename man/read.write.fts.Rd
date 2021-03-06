\name{read.write.fts}
\alias{read.write.fts}
\alias{read.csv.fts}
\alias{write.csv.fts}

\title{Read / Write Files }
\description{
  Read / Write files to csv or .RDS format
}
\usage{
read.csv.fts(file, date.column=1, date.format="\%Y-\%m-\%d",
date.convert.fun=as.Date, ...)
write.csv.fts(x, file, ...)
}
\arguments{
  \item{x}{ An Fts object }
  \item{file}{ filename of file to read/write}
  \item{date.column}{ column that = the dates are in }
  \item{date.format}{ the format of the date strings }
  \item{date.convert.fun}{ function to convert dates into desired index class }
  \item{\dots}{ further arguments to underlying read/write functions }
}
\value{
  a Fts object for functions that read data
}
\author{ Whit Armstrong }
\examples{
x <- fts(index=seq(from=Sys.Date(),by="days",length.out=100),data=1:100)
colnames(x) <- "big.ass.black.dog"

csv.fname <- paste(tempfile(),".csv",sep="")
write.csv.fts(x,csv.fname)
y.csv <- read.csv.fts(csv.fname)

all.equal(x,y.csv)
}
\keyword{ts}
