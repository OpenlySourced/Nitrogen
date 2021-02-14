fert_liquid_rate <- function(nutrient_percent, weight_in_pounds, ounces){
  total_nutrient <- weight_in_pounds * (nutrient_percent * .01)
  total_nutrient / ounces
}