## =========================================
##  Solution for Exercise 1   
##   < Server >
## =========================================

server <- function(input, output) { 
  
  # data import here? 
  
  output$tsplot1 <- renderPlot({
    
    # data import here? 
    
    matplot(df$Month, df[,-1], "l", xlim = input$dates)
    
  })
  
  output$table1 <- renderDataTable({
    
    # data import here again? 
    
    df[df$Month >= input$dates[1] & df$Month <= input$dates[2],]
    
  })
  
}