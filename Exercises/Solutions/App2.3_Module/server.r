## =========================================
## Server
## =========================================

server <- function(input, output, session) { 
  
  callModule(module = demoModule, # Name of the module
             id = "SPP" # namespace
             , df # any other inputs to module server function
  )
  
  output$test <- renderPrint(browser()
                             # session$ns
                             # input
                             )
  
}