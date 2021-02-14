fert_bag_rate <- function(sqft, n, p, k, pounds) {
  N <- nutrient_per_1000(
    sqft = sqft,
    nutrient_percent = n,
    pounds = pounds
  )
  P <- nutrient_per_1000(
    sqft = sqft,
    nutrient_percent = p,
    pounds = pounds
  )
  K <- nutrient_per_1000(
    sqft = sqft,
    nutrient_percent = k,
    pounds = pounds
  )
  list(Nitrogen = N, Phosphorus = P, Potassium = K)
}