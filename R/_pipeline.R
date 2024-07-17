#' Pipeline to execute full project
#'
#' @export

pipeline <- function() {
  # Update global parameters
  global_parameters()

  # Get area of interest & basemaps
  get_basemap()
  get_aoi()

  # Integrate data
  library(pipedat)
  pipeflow()

  # Figures
  # fig_aoi()

  # Report and publications
  # render_frontpate()
  render_report()
  # render_webinar()
}
