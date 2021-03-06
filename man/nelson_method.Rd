% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/probability_estimators.R
\name{nelson_method}
\alias{nelson_method}
\title{Estimation of Failure Probabilities using the Nelson-Aalen Estimator}
\usage{
nelson_method(x, event, id = rep("XXXXXX", length(x)))
}
\arguments{
\item{x}{a numeric vector which consists of lifetime data. Lifetime
data could be every characteristic influencing the reliability of a product,
e.g. operating time (days/months in service), mileage (km, miles), load
cycles.}

\item{event}{a vector of binary data (0 or 1) indicating whether unit \emph{i}
is a right censored observation (= 0) or a failure (= 1).}

\item{id}{a character vector for the identification of every unit.}
}
\value{
A data frame containing id, lifetime characteristic, status of the
  unit and the estimated failure probabilty. For right censored observations
  the cells of probability column are filled with NA.
}
\description{
This non-parametric approach estimates the cumulative hazard rate in
terms of (multiple) right censored data. By equating the definition of the
hazard rate with the hazard rate according to Nelson-Aalen one can calculate
the failure probabilities.
Since the failure probability estimation in this function is not based on
\emph{Median Ranks}, the Betabinomial confidence intervals cannot be calculated
on the basis of Nelson-Aalen failure probabilities.
}
\examples{
obs   <- seq(10000, 100000, 10000)
state <- c(0, 1, 1, 0, 0, 0, 1, 0, 1, 0)
uic   <- c("3435", "1203", "958X", "XX71", "abcd", "tz46",
           "fl29", "AX23","Uy12", "kl1a")

df_nel <- nelson_method(x = obs, event = state, id = uic)

}
