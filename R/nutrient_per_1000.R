#'Fertilizer rates per one thousand square feet
#'
#'Given the percentage and pounds of a specific nutrient, calculate the
#'pounds per one thousand square feet that will be applied
#'to your lawn.
#'
#' @param sqft numeric - the total square feet of your lawn.
#' @param nutrient_percent numeric - the percentage of the nutrient to apply.
#' @param pounds numeric  - the total weight, in pounds, of the fertilizer bag.
#' @return The total pounds of a specific nutrient that will be applied to your lawn.
#' @examples
#' nutrient_per_1000(5000, 24, 15) # 0.72 lbs. per 1,000 sqft
nutrient_per_1000 <- function(sqft, nutrient_percent, pounds) {
  tn <- pounds * (nutrient_percent * .01)
  SQFT <- sqft / 1000
  tn / SQFT
}
