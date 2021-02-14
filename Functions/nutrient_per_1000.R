nutrient_per_1000 <- function(sqft, nutrient_percent, pounds) {
  total_nutrient <- pounds * (nutrient_percent * .01)
  SQFT <- sqft / 1000
  total_nutrient / SQFT
}