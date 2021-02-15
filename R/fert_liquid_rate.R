#'Liquid fertilizer rates per one thousand
#'
#'Calculate the amount of nutrient, per ounce, in a liquid fertilizer.
#'
#' @param nutrient_percent numeric - the percent of nutrient in the liquid fertilizer.
#' @param weight_in_pounds numeric - the weight of the liquid in pounds.
#' @param ounces numeric - the total of ounces for calculating the nutrient value for ounce.
#' @return The total pounds per thousand for each ounce of liquid fertilizer applied.
#' @examples
#' fert_liquid_rate(5, 2.5, 32)
fert_liquid_rate <- function(nutrient_percent, weight_in_pounds, ounces){
  total_nutrient <- weight_in_pounds * (nutrient_percent * .01)
  total_nutrient / ounces
}
