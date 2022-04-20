#' Utility functions for the research compendium
#'
#' @param did unique identifiers of raw data to be loaded
#' @param name names of ingrid or output data to be loaded
#' @param type type of data to load, one of "raw", "ingrid", "output"
#'
#' @export
#' @describeIn comp_utils load research compendium global parameters and add as `global_param` object in global environment
global_parameters <- function() {
  ## ---------------------------------------------
  ## Global parameters stored as YAML
  global_param <<- read_yaml("./data/data-config/global_parameters.yml")
}

# #' @describeIn comp_utils load data from raw, ingrid, or output folders
# #' @export
load_data <- function(did = NULL, name = NULL, type) {
  # Find files
  if (type == "raw") {
    files <- dir(glue('./data/data-raw/{did}/data-format/'), full.names = TRUE)
  }
  
  if (type == "ingrid") {
    
  }
  
  if (type == "output") {
    
  }
  
  # Identify extensions
  ext <- last(str_split(files[uid], "\\.")[[1]])
  
  ext <- last(str_split(files[uid], "\\.")[[1]])

  # Import data according to extension type
  ## ----------
  ## GEOJSON
  if (ext == "geojson") {
    assign(x = data_id,
           value = st_read(files[uid], quiet = TRUE),
           envir = globalenv())
  }

  ## ----------
  ## GeoTIFF
  if (ext == "tif") {
    assign(x = data_id,
           value = read_stars(files[uid], quiet = TRUE),
           envir = globalenv())
  }

  ## ----------
  ## CSV
  if (ext == "csv") {
    assign(x = data_id,
           value = read.csv(files[uid]),
           envir = globalenv())
  }
}

