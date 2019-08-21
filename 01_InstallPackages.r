
## =========================================
## Install Packages
## =========================================

# CRAN packages
install.packages(c(
                   # Shiny
                   'shiny', # the main shiny package
                   'leaflet', # interactive maps
                   'rhandsontable', # interactive table
                   'formattable', # pretty table
                   'shinyjs', # Perform common useful JavaScript operations
                   'dygraphs', # interactive time series plot
                   'xts', # generate time series objects
                   'rmarkdown', # generate reports
                   
                   # Databases
                   'RODBC', # old and proven
                   'odbc', # the new db utilities
                   
                   # Other supporting packages
                   'config', # organize run environments
                   'glue', # alternative to paste
                   'usethis' # register git
                   ))

# Custom Packages
install.packages("//Analystfs/WestcoastData/Resources/RPackages/Binaries/3.3/teadashboard_0.7.1.1.zip", repos = NULL)

# Set up git
library(usethis)
use_git_config(user.name = "Jane Doe", user.email = "jane@teainc.org")