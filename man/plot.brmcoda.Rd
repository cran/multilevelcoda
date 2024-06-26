% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.brmcoda}
\alias{plot.brmcoda}
\title{Trace and Density Plots for MCMC Draws plot}
\usage{
\method{plot}{brmcoda}(x, ...)
}
\arguments{
\item{x}{A \code{\link{brmcoda}} class object.}

\item{...}{Further arguments passed to \code{\link[brms:plot.brmsfit]{plot.brmsfit}}.}
}
\value{
An invisible list of
  \code{\link[gtable:gtable]{gtable}} objects.
}
\description{
Make a plot of \code{brmcoda} model results.
}
\examples{
\dontrun{
cilr <- complr(data = mcompd, sbp = sbp,
        parts = c("TST", "WAKE", "MVPA", "LPA", "SB"), idvar = "ID")

# model with compositional predictor at between and within-person levels
fit <- brmcoda(complr = cilr,
               formula = Stress ~ bilr1 + bilr2 + bilr3 + bilr4 +
                                 wilr1 + wilr2 + wilr3 + wilr4 + (1 | ID),
               chain = 1, iter = 500)
plot(fit)
}
}
\seealso{
\code{\link[brms:plot.brmsfit]{plot.brmsfit}}
}
