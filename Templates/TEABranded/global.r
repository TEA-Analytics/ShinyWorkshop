###############################################
##
##  MyApp
##   << Global >>
## 
##  author: XXXX XXXX
##  created: XXX 20XX
##  
###############################################

env.run <- "Dev"

# Packages
suppressPackageStartupMessages({
  library(shiny)
  library(teadashboard)
})

# configurations
# config.loc <- switch(env.run
#                      , "Dev" = "//Analystfs/WestcoastData/Projects/MyProject/config.yml"
#                      , "Staging" = "/mnt/analystfs/WestcoastData/Projects/MyProject/config.yml"
#                      , "PROD" = "/mnt/analystfs/WestcoastData/Projects/MyProject/config.yml")
# config <- config::get(file = config.loc, use_parent = FALSE, config = Sys.getenv("R_CONFIG_ACTIVE", env.run))
