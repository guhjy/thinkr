% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ublo.R
\name{ublo3}
\alias{ublo3}
\title{Execute some functions inside the dplyr flow}
\usage{
ublo3(dataset, funs, ...)
}
\arguments{
\item{dataset}{A tbl, a data.frame.}

\item{funs}{to be documented}

\item{...}{List of function calls, generated by funs, or a character vector of function names.}
}
\value{
the same dataset as input
}
\description{
allow to have a look inside the dplyr flow. see Example.
}
\examples{
data(iris)
if( require(dplyr) ){
  iris \%>\% ublo3(funs(summary(.))) \%>\% plot
  iris \%>\% ublo3(funs(summary(.),head(.))) \%>\% plot
  iris \%>\% ublo3(funs_(c("summary"))) \%>\% plot
  iris \%>\% ublo3(funs_(c("summary","head"))) \%>\% plot
}
}

