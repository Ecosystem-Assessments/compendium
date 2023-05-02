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
  assign(
    x = "param",
    value = yaml::read_yaml("./data/config/global_parameters.yml"),
    envir = globalenv()
  )

  # Save as .rdata for the package
  save(param, file = "data/global_parameters.RData")
}
