% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{d_to_logRR}
\alias{d_to_logRR}
\title{Convert Cohen's d to log risk ratio}
\usage{
d_to_logRR(d, se = NA)
}
\arguments{
\item{d}{Cohen's d}

\item{se}{Standard error of d}
}
\description{
Converts Cohen's d (computed with a binary X) to a log risk ratio
for use in meta-analysis. Under the assumption that Y is approximately normal, the resulting log risk ratio represents a dichotomization of Y that is near its median and otherwise will  tend to be conservative.
}
\details{
Internally, this function first converts d to a log odds ratio using Chinn's (2000) conversion. The resulting log odds ratio approximates the value that would be obtained if Y were dichotomized; if Y is approximately normal, the log odds ratio is approximately invariant to the choice of threshold at which Y is dichotomized (Chinn, 2000). Then, the function converts the log odds ratio to a log risk ratio using VanderWeele's (2020) square-root conversion. That conversion is conservative in that it allows for the possibility that the dichotomized Y is not rare (i.e., the point of dichotomization is not at an extreme value of Y).
}
\examples{
d_to_logRR( d = c(0.5, -0.2, .1),
        se = c(0.21, NA, 0.3) )
}
\references{
VanderWeele, TJ (2020). Optimal approximate conversions of odds ratios and hazard ratios to risk ratios. \emph{Biometrics}.

Chinn S (2000). A simple method for converting an odds ratio to effect size for use in meta-analysis. \emph{Statistics in Medicine}.
}
