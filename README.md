
<!-- README.md is generated from README.Rmd. Please edit that file -->

# compendium

<!-- badges: start -->

[![License: GPL (&gt;=
2)](https://img.shields.io/badge/License-GPL%20%28%3E%3D%202%29-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
[![LifeCycle](https://img.shields.io/badge/lifecycle-experimental-orange)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Dependencies](https://img.shields.io/badge/dependencies-2/70-green?style=flat)](#)
<!-- badges: end -->

Research Compendium of the project **{{ PLEASE ADD A FEW WORDS }}**

### How to cite

Please cite this compendium as:

> **{{ PLEASE ADD A CITATION }}**

### Content

This repository is structured as follow:

-   [`data/`](https://github.com/Ecosystem-Assessments/compendium/tree/master/data):
    contains all raw data required to perform analyses

-   [`output/`](https://github.com/Ecosystem-Assessments/compendium/tree/master/outputs):
    contains all the results created during the workflow

-   [`figures/`](https://github.com/Ecosystem-Assessments/compendium/tree/master/figures):
    contains all the figures created during the workflow

-   [`R/`](https://github.com/Ecosystem-Assessments/compendium/tree/master/R):
    contains R functions developed especially for this project and R
    scripts to run each step of the workflow

-   [`man/`](https://github.com/Ecosystem-Assessments/compendium/tree/master/man):
    contains help files of R functions

-   [`DESCRIPTION`](https://github.com/Ecosystem-Assessments/compendium/tree/master/DESCRIPTION):
    contains project metadata (author, date, dependencies, etc.)

-   [`make.R`](https://github.com/Ecosystem-Assessments/compendium/tree/master/make.R):
    main R script to run the entire project by calling each R script
    stored in the `analyses/` folder

### Usage

-   Clone this repository
-   Open a terminal
-   Build the Docker image with:

``` sh
docker build -t "compendium" .
```

-   Start a container based on this image:

``` sh
docker run --rm -p 127.0.0.1:8787:8787 -e DISABLE_AUTH=true compendium
```

-   On a web browser enter this URL: `127.0.0.1:8787`. A new RStudio
    Server instance will be available.
-   To run the analysis:

``` r
source("make.R")
```

### Notes

-   All required packages, listed in the `DESCRIPTION` file, will be
    installed (if necessary)
-   All required packages and R functions will be loaded
-   Some analyses listed in the `make.R` might take time
