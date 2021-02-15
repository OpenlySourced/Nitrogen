#'How much fertilizer do I need?
#'
#'Given the nutrient percentage in a bag of fertilizer,
#'calculate the total pounds of fertilizer required to achieve a specific
#'nutrient target per one thousand square feet.
#'
#' @param sqft numeric - the total square feet of your lawn.
#' @param nutrient_percent numeric - the percentage of the nutrient to apply.
#' @param desired_pounds numeric  - desired pounds of nutrient per one thousand square feet
#' @return The total pounds of fertilizer, in pounds, to apply to your lawn.
#' @examples
#'fert_apply_amount(5000, 24, 1) # 21 pounds
fert_apply_amount <- function(sqft, nutrient_percent, desired_pounds) {
  per1000 <- desired_pounds / (nutrient_percent * .01)
  SQFT <- sqft / 1000
  round(per1000 * SQFT)
}
