% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/profiles.R
\name{get_power_profile}
\alias{get_power_profile}
\title{Get Power-x profile}
\usage{
get_power_profile(
  profile_data,
  power = "mean_power",
  x_var = "mean_GRF_over_distance",
  poly_deg = 2
)
}
\arguments{
\item{profile_data}{Data frame returned from \code{\link{vj_profile}} function}

\item{power}{Character string. Name of the column in the \code{profile_data}. Default is "mean_power"}

\item{x_var}{Character string. Name of the column in the \code{profile_data}. Default is "mean_GRF_over_distance"}

\item{poly_deg}{Integer. Number of polynomial degrees. Forwarded to \code{\link[stats]{poly}} function. Default is 2}
}
\value{
List with calculated \code{Pmax} and \code{Pmax_location}
}
\description{
Applied polynomial linear regression model using \code{power} and \code{x_var} columns from the \code{profile_data} and
    returns calculated \code{Pmax} and \code{Pmax_location} in \code{x_var}
}
\examples{
fv_profile <- vj_profile(mass = 75)
get_power_profile(fv_profile)
}
