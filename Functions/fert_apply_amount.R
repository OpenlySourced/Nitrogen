fert_apply_amount <- function(sqft, nutrient_percent, desired_pounds) {
  per1000 <- desired_pounds / (nutrient_percent * .01)
  SQFT <- sqft / 1000
  round(per1000 * SQFT)
}