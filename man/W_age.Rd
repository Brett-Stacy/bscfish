% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/life_history_functions.R
\name{W_age}
\alias{W_age}
\title{Weight as function of length at age}
\usage{
W_age(a, b, L_age)
}
\arguments{
\item{a}{Species specific parameter (scaling constant).}

\item{b}{Species specific parameter (allometric growth, close to 3).}

\item{L_age}{Lengths of fish.}
}
\value{
Returns weight of fish at specified lengths(ages)
}
\description{
Determine fish weight as a function of its length at a particular age.
}
\details{
This function can be used in conjunction with the output from the Von Bertalanffy Growth Function, \code{L_age()}.
By inputting L_age vector into W_age, the weight of fish over a range of lengths(ages) is calculated.
}
\examples{
## Inputs from: https://www.niwa.co.nz/node/111765
pat_tooth_L_inf = 169.07
pat_tooth_k     = 0.093
pat_tooth_t_0   = -0.256
ages = seq(1, 30, 0.1)
multiple_L = L_age(pat_tooth_L_inf, pat_tooth_k, ages, pat_tooth_t_0)
pat_tooth_a = 1.378*10-8
pat_tooth_b = 3
multiple_W = W_age(pat_tooth_a, pat_tooth_b, multiple_L)
plot(multiple_L, multiple_W)
}
