% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compilr.R
\name{compilr}
\alias{compilr}
\title{Compute useful indices from a (dataset of) multilevel composition(s)}
\usage{
compilr(data, sbp, parts, total = 1440, idvar = "ID")
}
\arguments{
\item{data}{A \code{data.frame} or \code{data.table}
containing data of all variables used in the analysis.
It must include a composition and a ID variable. Required.}

\item{sbp}{A signary matrix indicating sequential binary partition. Required.}

\item{parts}{A character vector specifying the names of compositional variables to be used.}

\item{total}{A numeric value of the total amount to which the compositions should be closed.
Default to \code{1440}.}

\item{idvar}{A character string specifying the name of the variable containing IDs.
Default to \code{ID}.}
}
\value{
A \code{\link{compilr}} object with twelve elements.
\itemize{
\item{\code{BetweenComp}}{ A vector of class \code{acomp} representing one closed between-person composition
or a matrix of class \code{acomp} representing multiple closed between-person compositions each in one row.}
\item{\code{WithinComp}}{ A vector of class \code{acomp} representing one closed within-person composition
or a matrix of class \code{acomp} representing multiple closed within-person compositions each in one row.}
\item{\code{TotalComp}}{ A vector of class \code{acomp} representing one closed total composition
or a matrix of class \code{acomp} representing multiple closed total compositions each in one row.}
\item{\code{BetweenILR}}{ Isometric log ratio transform of between-person composition.}
\item{\code{WithinILR}}{ Isometric log ratio transform of within-person composition.}
\item{\code{TotalILR}}{ Isometric log ratio transform of total composition.}
\item{\code{data}}{ The user's dataset or imputed dataset if the input data contains zeros.}
\item{\code{psi}}{ A ILR matrix associated with user-defined partition structure.}
\item{\code{sbp}}{ The user-defined sequential binary partition matrix.}
\item{\code{parts}}{ Names of compositional variables.}
\item{\code{idvar}}{ Name of the variable containing IDs.}
\item{\code{total}}{ Total amount to which the compositions is closed.}
}
}
\description{
Computes sets of compositions and IRLs for Multilevel Compositional Data models.
}
\examples{
data(mcompd)
data(sbp)
cilr <- compilr(data = mcompd, sbp = sbp, 
                 parts = c("TST", "WAKE", "MVPA", "LPA", "SB"), idvar = "ID")
str(cilr)

## cleanup
rm(cilr, mcompd, sbp)
}
