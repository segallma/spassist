#' Find UTM zone of geographic coordinates
#'
#' Given longitude and latitude coordinates in decimal degrees,
#'  returns the UTM zone number(s).
#'
#' @param lat Numeric vector. Latitude(s) in decimal degrees.
#' @param lon Numeric vector. Longitude(s) in decimal degrees.
#'
#' @return An integer vector of UTM zone numbers.
#' Note: Latitude bands (letters) are not included.
#'
#' @examples
#' find_utm(lat = 10, lon = -75)    # single coordinate
#' find_utm(lat = c(5, -10, 45), lon = c(-75, 140, 10))  # multiple coords
#'
#' @export

find_utm <- function(lat, lon) {

  boundaries <- seq(from = -180, to = 180, by = 6)
  utmzone <- findInterval(lon, boundaries)

  return(utmzone)}
