% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/complr-methods.R
\name{as.data.frame.complr}
\alias{as.data.frame.complr}
\alias{as.matrix.complr}
\title{Extract Compositional Data from \code{complr} object.}
\usage{
\method{as.data.frame}{complr}(x, row.names = NULL, optional = TRUE, ...)

\method{as.matrix}{complr}(x, ...)
}
\arguments{
\item{x}{An object of class \code{complr}.}

\item{row.names, optional}{Unused and only added for consistency with
the \code{\link[base:as.data.frame]{as.data.frame}} generic.}

\item{...}{generic argument, not in use.}
}
\description{
Extract amounts and compositions in conventional formats
as data.frames, matrices, or arrays.
}
