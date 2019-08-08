## =========================================
## Server
## =========================================

server <- function(input, output) { 
  
  output$tsplot1 <- renderPlot({
    
    plot(df$Month, df[, input$variable], "l")
    
  })
  
  output$table1 <- renderDataTable({
    
    df
    
  })
  
}