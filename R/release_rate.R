#'Analyze the release rate of fertilizer
#'
#'Calculate the amount of slow and quick release nutrients based on the
#'total pounds of a specific nutrient being applied.
#'
#' @param total_nutrient numeric - the total ponds per thousand of nutrient being applied.
#' @param slow_release numeric - the percentage of the nutrient value that is slow release.
#' @param quick_release numeric - the percentage of the nutrient value that is quick release.
#' @return A list containing the amount of nutrient in pounds per thousand
#' that will be released slowly and quickly.
#' @examples
#' release_rate(1, 7, 17) #24%N 7% slow release, 17% quick release
release_rate <- function(total_nutrient, slow_release, quick_release) {
  totalnutrient  <- slow_release + quick_release
  srelease <- slow_release / totalnutrient
  qrelease <- quick_release / totalnutrient
  list(`Quick Release` = qrelease * total_nutrient, `Slow Release` = srelease * total_nutrient)
}
