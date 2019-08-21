## =========================================
##  Exercise: 2-03
##   < Server >
## =========================================

server <- function(input, output) { 
  
  spp.df <- callModule(demoModule, id = "SPP", market = "SPP")
  caiso.df <- callModule(demoModule, id = "CAISO", market = "CAISO")
  miso.df <- callModule(demoModule, id = "MISO", market = "MISO")
  
  output$test <- renderText({
    # browser()
    # 
    # input$`CAISO-dates`
    # head(caiso.df())
    
    # print(input$`CAISO-dates`)
    })
}