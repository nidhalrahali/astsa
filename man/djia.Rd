\name{djia}
\alias{djia}
\docType{data}
\title{Dow Jones Industrial Average
%%   ~~ data name/kind ... ~~
}
\description{Daily DJIA values from April 2006 - April 2016
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\format{
  The format is:
 xts [1:2518, 1:5] 11279 11343 11347 11337 11283 ...\cr
 - attr(*, "class")= chr [1:2] "xts" "zoo"\cr
 - attr(*, "dimnames")=List of 2\cr
  ..$ : NULL\cr
  ..$ : chr [1:5] "Open" "High" "Low" "Close" ...
}
\source{The data were obtained as follows:\cr
\code{library(TTR) # install.packages('TTR') if you don't have it} \cr
\code{djia  = getYahooData("^DJI", start=20060420, end=20160420, freq="daily")} \cr
Unfortunately, this does not work now.
}
\references{\url{http://www.stat.pitt.edu/stoffer/tsa4/}  and \url{http://www.stat.pitt.edu/stoffer/tsda/} 
}
\keyword{datasets}
