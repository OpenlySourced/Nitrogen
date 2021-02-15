#'Analyze the nutrient content of a bag of fertilizer
#'
#'Calculate the pounds per one thousand square feet of
#'each nutrient in a bag of fertilizer.
#'
#' @param sqft numeric - the total square feet of your lawn.
#' @param n numeric - the percentage of the nitrogen.
#' @param p numeric - the percentage of the phosphorus.
#' @param k numeric - the percentage of the potassium
#' @return A list containing the amount of nitrogen, phosphorus, and potassium
#'  that will be applied to your lawn.
#' @examples
#' fert_bag_rate(5000,24, 25, 4, 15)
fert_bag_rate <- function(sqft, n, p, k, pounds) {
  N <- nutrient_per_1000(sqft = sqft,
                         nutrient_percent = n,
                         pounds = pounds)
  P <- nutrient_per_1000(sqft = sqft,
                         nutrient_percent = p,
                         pounds = pounds)
  K <- nutrient_per_1000(sqft = sqft,
                         nutrient_percent = k,
                         pounds = pounds)
  list(Nitrogen = N,
       Phosphorus = P,
       Potassium = K)
}
