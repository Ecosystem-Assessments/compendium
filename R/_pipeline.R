#' Pipeline to execute full project
#'
#' @export

pipeline <- function() {
  # Update global parameters
  global_parameters()
  
  # Get area of interest & basemaps
  get_aoi()
  get_basemap()

  # Integrate data 
  pipedat::pipeflow()
  
  # Figures 
  fig_aoi()
  
  # Report and publications 
  render_frontpate()
  render_report()
  # render_webinar()
}