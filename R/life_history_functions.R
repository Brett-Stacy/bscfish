## Functions described in Fisheries Lectures Online
## Name: bscfish



#' TITLE: Von Bertalanffy Growth Curve.
#'
#' DESCRIPTION: Determine fish length from age imput.
#'
#' DETAILS: This section provides furthur information about the function.
#'
#' @section Section_Test:
#' This section was written to test the commit and push features of git/github.
#' NOTE: The section title must be followed by a colon. This is similar to R-Markdown sections
#'
#' @param L_inf theoretical maximum average length
#' @param k growth coefficient
#' @param age age of fish. independent variable
#' @param t_0 theoretical age at zero length
#' @return Returns length of fish at specified age
#' @examples
#' ## Inputs from: https://www.niwa.co.nz/node/111765
#' pat_tooth_L_inf = 169.07
#' pat_tooth_k     = 0.093
#' pat_tooth_t_0   = -0.256
#' ages = seq(1, 30, 0.1)
#' multiple_L = L_age(169.07, 0.093, ages, -0.256)
#' plot(ages, multiple_L)
#' @export
L_age = function(L_inf, k, age, t_0){

  L_age = L_inf*(1 - exp(-k*(age - t_0)))
  return(L_age)

}
# Function 1: Growth in Length. Von Bernalanffy. Inputs from: https://www.niwa.co.nz/node/111765
# L_age(169.07, 0.093, 10, -0.256)
# ages = seq(1, 40, .1)
# multiple_L = L_age(169.07, 0.093, ages, -0.256)
# plot(ages, multiple_L)




#' Weight as function of length at age
#'
#' Determine fish weight as a function of its length at a particular age.
#'
#' This function can be used in conjunction with the output from the Von Bertalanffy Growth Function, \code{L_age()}.
#' By inputting L_age vector into W_age, the weight of fish over a range of lengths(ages) is calculated.
#' @param a Species specific parameter (scaling constant).
#' @param b Species specific parameter (allometric growth, close to 3).
#' @param L_age Lengths of fish.
#' @return Returns weight of fish at specified lengths(ages)
#' @examples
#' ## Inputs from: https://www.niwa.co.nz/node/111765
#' ant_tooth_L_inf = 169.07
#' ant_tooth_k     = 0.093
#' ant_tooth_t_0   = -0.256
#' ages = seq(1, 30, 0.1)
#' multiple_L = L_age(pat_tooth_L_inf, pat_tooth_k, ages, pat_tooth_t_0)
#' ant_tooth_a = 1.378*10-8
#' ant_tooth_b = 3
#' multiple_W = W_age(pat_tooth_a, pat_tooth_b, multiple_L)
#' plot(multiple_L, multiple_W)
#' @export
W_age = function(a, b, L_age) a*L_age^b
# Function 2: Growth in Weight.
# multiple_W = W_age(1.387*10^-8, 3, multiple_L)
# plot(multiple_L, multiple_W)



#' Age at Maturity function
#'
#' Determine the logistic curve for the relationship between age of fish and probability that it is sexually
#'
#' This function uses a standard logistic formulation for the estimation of the probability a Patagonia Toothfish
#' is sexually mature based on its age. It relies on species specific parameters \code{beta} and \code{age_50}.
#' @param beta Slope of the curve at \code{age == age_50}. Correct value in example?
#' @param age Age of the fish prob(maturity) is desired.
#' @param age_50 Age at which 50 percent of fish are mature.
#' @return Returns probability of maturity at specified age
#' @examples
#' ## Inputs from: https://www.niwa.co.nz/node/111765
#' pat_tooth_beta = .5
#' ages = seq(1, 30, 0.1)
#' pat_tooth_age_50 = 12.8
#' multiple_M = M_age(pat_tooth_beta, ages, pat_tooth_age_50)
#' plot(ages, multiple_M)
#' @export
M_age = function(beta, age, age_50) 1/(1 + exp(-beta*(age - age_50)))
# Function 3: Age at maturity.
# multiple_M = M_age(.5, ages, 12.8)
# plot(ages, multiple_M)




