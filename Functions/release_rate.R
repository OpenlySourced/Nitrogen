release_rate <- function(total_nutrient, slow_release, quick_release) {
  totalnutrient  <- slow_release + quick_release
  srelease <- slow_release / totalnutrient
  qrelease <- quick_release / totalnutrient
  list(`Quick Release` = qrelease * total_nutrient, `Slow Release` = srelease * total_nutrient)
}