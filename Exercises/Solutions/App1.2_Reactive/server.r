## =========================================
##  Solution for Exercise 2
##   < Server >
## =========================================

server <- function(input, output) { 
  
  df <- reactive({
    df <- read.csv(glue("../../../Data/HistSpotMonthlyAve_{input$market}.csv"))  
    df$Month <- as.Date(df$Month, "%m/%d/%Y")
    df
  })
  
  # Try running with these uncommented. 
  # input$dates
  # df()
  # df
  
  output$tsplot1 <- renderPlot({
    
    matplot(df()$Month, df()[,-1], "l", xlim = input$dates)
    
  })
  
  output$table1 <- renderDataTable({
    
    df()[df()$Month >= input$dates[1] & df()$Month <= input$dates[2],]
    
  })
  
}