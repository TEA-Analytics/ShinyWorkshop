## =========================================
## Server
## =========================================

server <- function(input, output) { 
  
  callModule(demoModule, # Name of the module
             "SPP" # namespace
             , df # any other inputs to module server function
  )
  
}