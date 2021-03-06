\name{Ksmooth2}
\alias{Ksmooth2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Kalman Filter and Smoother - General model, may have correlated errors
%%  ~~function to do ... ~~
}
\description{Returns the filtered and smoothed values  for the state-space model. This is the smoother companion to Kfilter2.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Ksmooth2(num, y, A, mu0, Sigma0, Phi, Ups, Gam, Theta, cQ, cR, 
          S, input)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{num}{number of observations
%%     ~~Describe \code{num} here~~
}
  \item{y}{data matrix, vector or time series
%%     ~~Describe \code{y} here~~
}
  \item{A}{time-varying observation matrix, an array with \code{dim=c(q,p,n)}
%%     ~~Describe \code{A} here~~
}
  \item{mu0}{initial state mean
%%     ~~Describe \code{mu0} here~~
}
  \item{Sigma0}{initial state covariance matrix
%%     ~~Describe \code{Sigma0} here~~
}
  \item{Phi}{state transition matrix
%%     ~~Describe \code{Phi} here~~
}
  \item{Ups}{state input matrix; use \code{Ups = 0} if not needed
%%     ~~Describe \code{Ups} here~~
}
  \item{Gam}{observation input matrix; use \code{Gam = 0} if not needed
%%     ~~Describe \code{Gam} here~~
}
  \item{Theta}{state error pre-matrix
%%     ~~Describe \code{Theta} here~~
}
  \item{cQ}{Cholesky-type decomposition of state error covariance matrix Q -- see details below
%%     ~~Describe \code{cQ} here~~
}
  \item{cR}{Cholesky-type decomposition of observation error covariance matrix R -- see details below
%%     ~~Describe \code{cR} here~~
}
  \item{S}{covariance matrix of state and observation errors
%%     ~~Describe \code{S} here~~
}
  \item{input}{matrix or vector of inputs having the same row dimension as y; use \code{input = 0} if not needed
%%     ~~Describe \code{input} here~~
}
}
\details{Practically, the script only requires that Q or R may be reconstructed as 
 \code{t(cQ)\%*\%(cQ)} or \code{t(cR)\%*\%(cR)}, respectively, which allows more flexibility.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{xs }{state smoothers}
\item{Ps }{smoother mean square error}
\item{J }{the J matrices}
\item{xp }{one-step-ahead prediction of the state}
\item{Pp }{mean square prediction error}
\item{xf }{filter value of the state}
\item{Pf }{mean square filter error}
\item{like }{the negative of the log likelihood}
\item{Kn }{last value of the gain}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{\url{http://www.stat.pitt.edu/stoffer/tsa4/}\cr

See also \url{http://www.stat.pitt.edu/stoffer/tsa4/chap6.htm} for an explanation of the difference between levels 0, 1, and 2.
%% ~put references to the literature/web site here ~
}
\author{D.S. Stoffer
%%  ~~who you are~~
}

\keyword{ ts }
%% %\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
%% 