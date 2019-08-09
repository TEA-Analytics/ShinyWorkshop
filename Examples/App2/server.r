## =========================================
## Server
## =========================================

server <- function(input, output) { 
  
  #---- Data ----#
  
  df <- function(){
    df <- read.csv(glue("../../Data/HistSpotMonthlyAve_{input$market}.csv"))
    df$Month <- as.Date(df$Month, "%m/%d/%Y")
    df
  }
  
  #---- UI ----#
  output$ui_variables <- renderUI({
    ts_names <- names(df())[-1]
    selectInput("variable", label = "Variable", ts_names)
    
  })
  
  #---- Render ----#
  
  # Plot
  output$tsplot1 <- renderPlot({
    req(input$variable)
    plot(df()$Month, df()[, input$variable], "l")
    
  })
  
  # Table
  output$table1 <- renderDataTable({
    df()
  })
  
}