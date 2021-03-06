% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ublo.R
\name{ublo2}
\alias{ublo2}
\title{Execute some functions inside the dplyr flow}
\usage{
ublo2(dataset, ...)
}
\arguments{
\item{dataset}{A tbl, a data.frame.}

\item{...}{List of function calls, generated by funs, or a character vector of function names.}
}
\value{
the same dataset as input
}
\description{
allow to have a look inside the dplyr flow. see Example
}
\examples{
data(iris)
if( require(dplyr) ){
  iris \%>\% ublo2(funs(head(.,n=2),summary(.,maxsum=2))) \%>\% plot
  iris \%>\% ublo2(funs(summary(.,maxsum=2))) \%>\% plot
  #iris \%>\% ublo2(funs_(dots=c("summary"))) \%>\% plot
}
}

